/// Optional. The policy dictating the execution of the next set of tasks for the current task.
enum GoogleCloudIntegrationsV1alphaTaskConfigNextTasksExecutionPolicy {
  nextTasksExecutionPolicyUnspecified(
    "NEXT_TASKS_EXECUTION_POLICY_UNSPECIFIED",
  ),
  runAllMatch("RUN_ALL_MATCH"),
  runFirstMatch("RUN_FIRST_MATCH");

  const GoogleCloudIntegrationsV1alphaTaskConfigNextTasksExecutionPolicy(
    this.value,
  );
  final String value;

  static GoogleCloudIntegrationsV1alphaTaskConfigNextTasksExecutionPolicy
  fromValue(String value) {
    for (final item
        in GoogleCloudIntegrationsV1alphaTaskConfigNextTasksExecutionPolicy
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudIntegrationsV1alphaTaskConfigNextTasksExecutionPolicy value: $value',
    );
  }
}
