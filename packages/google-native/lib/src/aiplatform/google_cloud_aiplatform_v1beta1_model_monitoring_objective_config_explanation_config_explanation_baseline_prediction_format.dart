/// The storage format of the predictions generated BatchPrediction job.
enum GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat {
  predictionFormatUnspecified("PREDICTION_FORMAT_UNSPECIFIED"),
  jsonl("JSONL"),
  bigquery("BIGQUERY");

  const GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat(
      this.value);
  final String value;

  static GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat
      fromValue(String value) {
    for (final item
        in GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat value: $value');
  }
}
