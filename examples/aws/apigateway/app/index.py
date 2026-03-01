import json
import os

import boto3


dynamodb = boto3.client("dynamodb")
TABLE_NAME = os.environ["TABLE_NAME"]


def handler(event, context):
    path_params = event.get("pathParameters") or {}
    route = path_params.get("route", "default")

    response = dynamodb.update_item(
        TableName=TABLE_NAME,
        Key={"id": {"S": route}},
        UpdateExpression="ADD #count :inc",
        ExpressionAttributeNames={"#count": "count"},
        ExpressionAttributeValues={":inc": {"N": "1"}},
        ReturnValues="UPDATED_NEW",
    )

    count = int(response["Attributes"]["count"]["N"])

    return {
        "statusCode": 200,
        "body": json.dumps({"route": route, "count": count}),
    }
