/// Required. The optimization goal of the metric.
enum GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal {
  goalTypeUnspecified("GOAL_TYPE_UNSPECIFIED"),
  maximize("MAXIMIZE"),
  minimize("MINIMIZE");

  const GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal(
    this.value,
  );
  final String value;

  static GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal
  fromValue(String value) {
    for (final item
        in GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal value: $value',
    );
  }
}
