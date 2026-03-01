exports.handler = async (bucketArgs) => {
  console.log("onNewThumbnail called");
  if (!bucketArgs || !bucketArgs.Records) {
    return;
  }

  for (const record of bucketArgs.Records) {
    console.log(
      `*** New thumbnail: file ${record.s3.object.key} was saved at ${record.eventTime}.`,
    );
  }
};
