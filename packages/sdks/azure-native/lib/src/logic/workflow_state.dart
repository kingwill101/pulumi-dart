/// The state.
enum WorkflowState {
  valueNotSpecified("NotSpecified"),
  valueCompleted("Completed"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueDeleted("Deleted"),
  valueSuspended("Suspended");

  const WorkflowState(this.wireValue);
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

