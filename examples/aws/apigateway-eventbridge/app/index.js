exports.handler = async function (event) {
  console.log(JSON.stringify({ source: event.source, detail: event.detail }));
  return { statusCode: 200, body: "ok" };
};
