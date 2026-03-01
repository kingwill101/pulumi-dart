/// Required. The optimization goal of the metric.
enum GoogleCloudMlV1StudyConfigMetricSpecGoal {
  goalTypeUnspecified("GOAL_TYPE_UNSPECIFIED"),
  maximize("MAXIMIZE"),
  minimize("MINIMIZE");

  const GoogleCloudMlV1StudyConfigMetricSpecGoal(this.value);
  final String value;

  static GoogleCloudMlV1StudyConfigMetricSpecGoal fromValue(String value) {
    for (final item in GoogleCloudMlV1StudyConfigMetricSpecGoal.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudMlV1StudyConfigMetricSpecGoal value: $value',
    );
  }
}
