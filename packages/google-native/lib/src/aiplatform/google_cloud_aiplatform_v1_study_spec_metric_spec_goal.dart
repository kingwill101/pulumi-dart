/// Required. The optimization goal of the metric.
enum GoogleCloudAiplatformV1StudySpecMetricSpecGoal {
  goalTypeUnspecified("GOAL_TYPE_UNSPECIFIED"),
  maximize("MAXIMIZE"),
  minimize("MINIMIZE");

  const GoogleCloudAiplatformV1StudySpecMetricSpecGoal(this.value);
  final String value;

  static GoogleCloudAiplatformV1StudySpecMetricSpecGoal fromValue(
      String value) {
    for (final item in GoogleCloudAiplatformV1StudySpecMetricSpecGoal.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudAiplatformV1StudySpecMetricSpecGoal value: $value');
  }
}
