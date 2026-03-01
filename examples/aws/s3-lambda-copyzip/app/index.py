import io
import os
import urllib.parse
import zipfile

import boto3


s3 = boto3.client("s3")
DEST_BUCKET = os.environ["DEST_BUCKET"]


def handler(event, context):
    for rec in event.get("Records", []):
        src_bucket = rec["s3"]["bucket"]["name"]
        src_key = urllib.parse.unquote_plus(rec["s3"]["object"]["key"])
        obj = s3.get_object(Bucket=src_bucket, Key=src_key)
        data = obj["Body"].read()

        buf = io.BytesIO()
        with zipfile.ZipFile(buf, mode="w", compression=zipfile.ZIP_DEFLATED) as zf:
            zf.writestr(src_key, data)
        buf.seek(0)

        dst_key = f"{src_key}.zip"
        s3.put_object(Bucket=DEST_BUCKET, Key=dst_key, Body=buf.getvalue())

    return {"ok": True}
