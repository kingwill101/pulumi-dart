/// Required. The format of the input data files.
enum GoogleCloudMlV1PredictionInputDataFormat {
  dataFormatUnspecified("DATA_FORMAT_UNSPECIFIED"),
  json("JSON"),
  text("TEXT"),
  tfRecord("TF_RECORD"),
  tfRecordGzip("TF_RECORD_GZIP"),
  csv("CSV");

  const GoogleCloudMlV1PredictionInputDataFormat(this.value);
  final String value;

  static GoogleCloudMlV1PredictionInputDataFormat fromValue(String value) {
    for (final item in GoogleCloudMlV1PredictionInputDataFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudMlV1PredictionInputDataFormat value: $value',
    );
  }
}
