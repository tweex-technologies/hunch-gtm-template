___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "categories": ["EXPERIMENTATION", "PERSONALIZATION"],
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Hunch",
  "brand": {
    "id": "brand_dummy",
    "displayName": "Tweex Technologies Limited",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAR0SURBVHgB7Z09TOswFIXtp7exs7N3Z2dHYmRnR2JEYkRiZ0Tqzt6dnZ2dnZ05L8dteFCaxNdpnOP0fBJLcVvHnx3/3bi+qnGChj9OUCEhZEgIGRJChoSQISFkSAgZEkKGhJAhIWRICBkSQoaEkCEhZEgIGX9NqT8/XbVaOffy4tzHx/q1kxPnFgvnz8+dOz52B0VbedR//vIyqTx87AZV+OLn55CJndRf7q+unDs9dYdABQnLZXt5HB2tpaCiGogSEmTgy2M+8PZ2/lJeX1318BCVNFRSg5T+PgRNES0jkurxsb3WzIG6PKrIygmqrrvKDnqFWD8wpEWLmitvb//7ixiM5dHfQt7fnZUKmZ4poe8Y8T2jCDHVoNJIuTbDezQPIUNCyJAQMiSEDAkhQ0LIkBAyJIQM2/L7PsGSQrMkM+Wy/fd81Cu04W9C8gupl1XC+tj28gr2VLAyiv2EQ8rHFllvWSiA6u7udyEAFNDNzbqQDiQfu8gmJFxgzEUizYirxZZ8TCEljxDrngr2G8ZYoDTmI6RNWVwdQBYhSTVthFaSlI+E5fYh5GkhKXsq9TbpbPPRQZ5RVkqz79qlxP/qmhs2wvDZGKoiyAJ7+Wdn7e8beS9jH0w3D+mjTUgtIAQYbBcUXkdtrm9LIdBi17C1gL3+smbqKHQMV7tqLYIQkCZzZ7wvyhGCgkbLiKnlCGCLTUtGOUKs0R5IW2D0SzFCkqI9Cox+KaeFpPQJBfYj5QhJ6Q/Uh4ihSAgZEkKGhJAhIWRICBkSQoaEkCEhZJQjJCVeauIYqxTKEZIQJ+Uniq0aQjFC/GLhzHRt55JSTguxnhSBtCkSJ6aoPiTslcf0C03aAo/6KGuUhTNE7u+7CxrRJ0jD1H8YBhe8USdtFwEpT0/rADZEmWCrFvsem0NwQr/R9l68PnSPBN9jDA2yDC7yCEGNtsY39d1uUPDWTjtFyFZh4tQjc/CcIZ9Zblk+4TCaMYase8kHWqFlsICKxSYkafiJo432jfGoJNeSD399HTdgaPozA3mENAd6RZJ6+FcvzZleQ/OxKWjfUdEwb+odgOwgX6deX5x3/RHooRDGaB0NdSvxCKQbmg8UdN1SQrrtwQVujYkVqvcAs+riwplBDcJIaBcIzVkuf8VMhZk4Li7XZI4lH1vkF9LA9LBlMwI8yIc+Gwgu/ouh/RUq1vdb1oDr4p0YlkDXk7wp8yQnIcl0PjwKUZuHiSyjOqAdwwSin+RdrUwHZgIJsWJ9khePRBii8CXEyNhP8kqIlZFPaZUQKynL9zqVtFz6haSc8D/nX0lIuTbDVkKvEJ+ydF5gtEcsKdEvfp9Cwh6CZSmg0GiPaKzlgbSG1et+Ic3vYEQSZqZzvmWhPLBBFYl1byf6B13CrLPrlxKQUciY8e3qB/gNka5jpMb8QZcvmlkqjrjYjMd9s2dsbcpzoDmcAGtXeyoPmxAxOpqHkCEhZEgIGRJChoSQISFkSAgZEkKGhJAhIWRICBkSQoaEkCEhZEgIGf8ALpHQLML4mngAAAAASUVORK5CYII\u003d"
  },
  "description": "Interactive content network that delivers personalised services wherever customers go within your partner ecosystem.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const queryPermission = require('queryPermission');
const injectScript = require('injectScript');
const getUrl = require('getUrl');
const encode = require('encodeUriComponent');

// Get the current page URL
const url = getUrl();

// Build the script URL
const scriptUrl = 'https://app.gotahunch.io/embed.js?url=' + encode(url);

// Check if current script being loaded is permitted
if (queryPermission('inject_script', scriptUrl)) {
  injectScript(scriptUrl, data.gtmOnSuccess, data.gtmOnFailure, scriptUrl);
} else {
  log("GTM-DEBUG :: gotahunch.io >> Current script src is not allowed in permissions configuration");
  data.gtmOnFailure();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://app.gotahunch.io/embed.js?url\u003d*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 18/10/2022, 22:07:18


