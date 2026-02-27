/// The initial state is IN_PROGRESS. The only legal state transitions is from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if an invalid transition is requested. The state can only be set to COMPLETE once. A FAILED_PRECONDITION will be returned if the state is set to COMPLETE multiple times. If the state is set to COMPLETE, all the in-progress steps within the execution will be set as COMPLETE. If the outcome of the step is not set, the outcome will be set to INCONCLUSIVE. - In response always set - In create/update request: optional
enum ExecutionStateToolresultsV1beta3 {
  unknownState("unknownState"),
  pending("pending"),
  inProgress("inProgress"),
  complete("complete");

  const ExecutionStateToolresultsV1beta3(this.value);
  final String value;

  static ExecutionStateToolresultsV1beta3 fromValue(String value) {
    for (final item in ExecutionStateToolresultsV1beta3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ExecutionStateToolresultsV1beta3 value: $value');
  }
}
