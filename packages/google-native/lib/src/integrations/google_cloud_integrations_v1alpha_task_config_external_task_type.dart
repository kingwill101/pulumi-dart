/// Optional. External task type of the task
enum GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType {
  externalTaskTypeUnspecified("EXTERNAL_TASK_TYPE_UNSPECIFIED"),
  normalTask("NORMAL_TASK"),
  errorTask("ERROR_TASK");

  const GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType(this.value);
  final String value;

  static GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType fromValue(
      String value) {
    for (final item
        in GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType value: $value');
  }
}
