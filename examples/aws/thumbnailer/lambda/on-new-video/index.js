exports.handler = async (event) => {
  const records = event?.Records || [];
  for (const record of records) {
    const key = record?.s3?.object?.key || "";
    const eventTime = record?.eventTime || "";
    console.log(`New video upload: ${key} at ${eventTime}`);

    const i = key.indexOf("_");
    const j = key.lastIndexOf(".");
    if (i > 0 && j > i) {
      const thumbnailFile = `${key.substring(0, i)}.jpg`;
      const framePos = key.substring(i + 1, j).replace("-", ":");
      console.log(
        `Derived thumbnail target ${thumbnailFile} using frame offset ${framePos}`,
      );
    }
  }
};
