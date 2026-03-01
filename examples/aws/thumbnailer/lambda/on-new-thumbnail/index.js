exports.handler = async (event) => {
  const records = event?.Records || [];
  for (const record of records) {
    const key = record?.s3?.object?.key || "";
    const eventTime = record?.eventTime || "";
    console.log(`New thumbnail: ${key} at ${eventTime}`);
  }
};
