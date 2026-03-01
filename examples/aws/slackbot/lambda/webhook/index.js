const AWS = require("aws-sdk");
const sns = new AWS.SNS();

exports.handler = async (event) => {
  try {
    const rawBody = event && event.body ? event.body : "";
    const parsedBody = event && event.isBase64Encoded
      ? JSON.parse(Buffer.from(rawBody, "base64").toString("utf8"))
      : JSON.parse(rawBody || "{}");

    if (parsedBody.type === "url_verification") {
      return {
        statusCode: 200,
        body: JSON.stringify({ challenge: parsedBody.challenge || "" }),
      };
    }

    if (parsedBody.type === "event_callback") {
      const verificationToken = process.env.SLACK_VERIFICATION_TOKEN;
      if (verificationToken && parsedBody.token !== verificationToken) {
        return { statusCode: 401, body: "Invalid verification token" };
      }

      const topicArn = process.env.MESSAGE_TOPIC_ARN;
      if (topicArn) {
        await sns.publish({
          TopicArn: topicArn,
          Message: JSON.stringify(parsedBody),
        }).promise();
      }
    }
  } catch (err) {
    console.error("webhook handler error", err);
  }

  return { statusCode: 200, body: "" };
};
