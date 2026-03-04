/// Describes the status of the workflow run
enum WorkflowRunStatus {
  valueQueued("queued"),
  valueInprogress("inprogress"),
  valueCompleted("completed");

  const WorkflowRunStatus(this.wireValue);
  final String wireValue;

  static WorkflowRunStatus fromValue(String value) {
    for (final item in WorkflowRunStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkflowRunStatus value: $value');
  }
}
