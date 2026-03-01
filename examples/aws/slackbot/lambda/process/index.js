const AWS = require("aws-sdk");
const docClient = new AWS.DynamoDB.DocumentClient();

exports.handler = async (event) => {
  const tableName = process.env.SUBSCRIPTIONS_TABLE_NAME;
  if (!tableName || !event || !Array.isArray(event.Records)) {
    return;
  }

  for (const record of event.Records) {
    try {
      const request = JSON.parse(record.Sns.Message);
      const ev = request.event || {};

      if (ev.type === "app_mention") {
        const text = (ev.text || "").toLowerCase();
        if (text.includes("unsubscribe")) {
          await docClient.delete({
            TableName: tableName,
            Key: { id: ev.user },
          }).promise();
        } else {
          await docClient.put({
            TableName: tableName,
            Item: { id: ev.user, channel: ev.channel },
          }).promise();
        }
      }
    } catch (err) {
      console.error("process handler error", err);
    }
  }
};
