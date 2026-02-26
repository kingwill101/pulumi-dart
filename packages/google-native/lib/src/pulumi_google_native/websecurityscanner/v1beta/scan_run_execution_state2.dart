/// The execution state of the ScanRun.
enum ScanRunExecutionState2 {
  executionStateUnspecified("EXECUTION_STATE_UNSPECIFIED"),
  queued("QUEUED"),
  scanning("SCANNING"),
  finished("FINISHED");

  const ScanRunExecutionState2(this.value);
  final String value;

  static ScanRunExecutionState2 fromValue(String value) {
    for (final item in ScanRunExecutionState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanRunExecutionState2 value: $value');
  }
}
