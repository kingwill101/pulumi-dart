/// The result state of the ScanRun. This field is only available after the execution state reaches "FINISHED".
enum ScanRunResultState2 {
  resultStateUnspecified("RESULT_STATE_UNSPECIFIED"),
  success("SUCCESS"),
  error("ERROR"),
  killed("KILLED");

  const ScanRunResultState2(this.value);
  final String value;

  static ScanRunResultState2 fromValue(String value) {
    for (final item in ScanRunResultState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanRunResultState2 value: $value');
  }
}
