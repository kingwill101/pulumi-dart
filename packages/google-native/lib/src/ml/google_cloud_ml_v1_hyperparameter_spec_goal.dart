/// Required. The type of goal to use for tuning. Available types are `MAXIMIZE` and `MINIMIZE`. Defaults to `MAXIMIZE`.
enum GoogleCloudMlV1HyperparameterSpecGoal {
  goalTypeUnspecified("GOAL_TYPE_UNSPECIFIED"),
  maximize("MAXIMIZE"),
  minimize("MINIMIZE");

  const GoogleCloudMlV1HyperparameterSpecGoal(this.value);
  final String value;

  static GoogleCloudMlV1HyperparameterSpecGoal fromValue(String value) {
    for (final item in GoogleCloudMlV1HyperparameterSpecGoal.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1HyperparameterSpecGoal value: $value');
  }
}

