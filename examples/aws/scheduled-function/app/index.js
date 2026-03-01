import S3 from "aws-sdk/clients/s3";

export async function handler() {
  const bucket = process.env.BUCKET_NAME;
  if (!bucket) {
    throw new Error("Missing BUCKET_NAME environment variable");
  }

  const s3Client = new S3();
  const { Contents = [] } = await s3Client.listObjects({ Bucket: bucket }).promise();
  const objects = Contents
    .filter((object) => object && object.Key)
    .map((object) => ({ Key: object.Key }));

  if (objects.length > 0) {
    await s3Client
      .deleteObjects({
        Bucket: bucket,
        Delete: { Objects: objects, Quiet: false },
      })
      .promise();
  }

  console.log(`Deleted ${objects.length} item${objects.length === 1 ? "" : "s"} from ${bucket}.`);
  return { deleted: objects.length, bucket };
}
