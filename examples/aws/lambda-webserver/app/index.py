import json


def handler(event, context):
    path = event.get("path", "/")
    method = event.get("httpMethod", "GET")
    body = {
        "message": "Hello from Lambda webserver",
        "method": method,
        "path": path,
    }
    return {"statusCode": 200, "body": json.dumps(body)}
