import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the status of the workflow run
enum WorkflowRunStatus implements pulumi.PulumiEnum<String> {
  valueQueued("queued"),
  valueInprogress("inprogress"),
  valueCompleted("completed");

  const WorkflowRunStatus(this.wireValue);
  @override
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
