/// The sandbox environment to host this Revision.
enum GoogleCloudRunV2RevisionTemplateExecutionEnvironment {
  executionEnvironmentUnspecified("EXECUTION_ENVIRONMENT_UNSPECIFIED"),
  executionEnvironmentGen1("EXECUTION_ENVIRONMENT_GEN1"),
  executionEnvironmentGen2("EXECUTION_ENVIRONMENT_GEN2");

  const GoogleCloudRunV2RevisionTemplateExecutionEnvironment(this.value);
  final String value;

  static GoogleCloudRunV2RevisionTemplateExecutionEnvironment fromValue(
      String value) {
    for (final item
        in GoogleCloudRunV2RevisionTemplateExecutionEnvironment.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudRunV2RevisionTemplateExecutionEnvironment value: $value');
  }
}
