/// The execution environment being used to host this Task.
enum GoogleCloudRunV2TaskTemplateExecutionEnvironment {
  executionEnvironmentUnspecified("EXECUTION_ENVIRONMENT_UNSPECIFIED"),
  executionEnvironmentGen1("EXECUTION_ENVIRONMENT_GEN1"),
  executionEnvironmentGen2("EXECUTION_ENVIRONMENT_GEN2");

  const GoogleCloudRunV2TaskTemplateExecutionEnvironment(this.value);
  final String value;

  static GoogleCloudRunV2TaskTemplateExecutionEnvironment fromValue(
      String value) {
    for (final item
        in GoogleCloudRunV2TaskTemplateExecutionEnvironment.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudRunV2TaskTemplateExecutionEnvironment value: $value');
  }
}
