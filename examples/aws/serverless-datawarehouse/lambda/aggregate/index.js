exports.handler = async (event) => {
  console.log("aggregate job invoked", JSON.stringify(event));
  console.log(
    JSON.stringify({
      database: process.env.DATABASE_NAME,
      impressionsTable: process.env.IMPRESSIONS_TABLE,
      clicksTable: process.env.CLICKS_TABLE,
      resultsBucket: process.env.RESULTS_BUCKET,
      dwBucket: process.env.DW_BUCKET,
      aggregateTable: process.env.AGGREGATE_TABLE,
    }),
  );

  console.log(
    "Dart baseline: implement Athena queries + S3 results write here for full parity.",
  );
  return { statusCode: 200, body: "ok" };
};
