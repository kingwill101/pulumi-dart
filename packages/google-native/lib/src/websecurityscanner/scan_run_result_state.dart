/// The result state of the ScanRun. This field is only available after the execution state reaches "FINISHED".
enum ScanRunResultState {
  resultStateUnspecified("RESULT_STATE_UNSPECIFIED"),
  success("SUCCESS"),
  error("ERROR"),
  killed("KILLED");

  const ScanRunResultState(this.value);
  final String value;

  static ScanRunResultState fromValue(String value) {
    for (final item in ScanRunResultState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanRunResultState value: $value');
  }
}
