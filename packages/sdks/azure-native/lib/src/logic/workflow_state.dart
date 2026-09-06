import 'package:pulumi/pulumi.dart' as pulumi;

/// The state.
enum WorkflowState implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueCompleted("Completed"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueDeleted("Deleted"),
  valueSuspended("Suspended");

  const WorkflowState(this.wireValue);
  @override
  final String wireValue;

  static WorkflowState fromValue(String value) {
    for (final item in WorkflowState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkflowState value: $value');
  }
}
