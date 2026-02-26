/// Count-based metric type. Only one of type or count_type is specified in each Metric.
enum GoogleCloudDialogflowCxV3ExperimentResultMetricCountType {
  countTypeUnspecified("COUNT_TYPE_UNSPECIFIED"),
  totalNoMatchCount("TOTAL_NO_MATCH_COUNT"),
  totalTurnCount("TOTAL_TURN_COUNT"),
  averageTurnCount("AVERAGE_TURN_COUNT");

  const GoogleCloudDialogflowCxV3ExperimentResultMetricCountType(this.value);
  final String value;

  static GoogleCloudDialogflowCxV3ExperimentResultMetricCountType fromValue(
      String value) {
    for (final item
        in GoogleCloudDialogflowCxV3ExperimentResultMetricCountType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowCxV3ExperimentResultMetricCountType value: $value');
  }
}
