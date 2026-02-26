/// Report creation state.
enum ReportState2 {
  stateUnspecified("STATE_UNSPECIFIED"),
  pending("PENDING"),
  succeeded("SUCCEEDED"),
  failed("FAILED");

  const ReportState2(this.value);
  final String value;

  static ReportState2 fromValue(String value) {
    for (final item in ReportState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportState2 value: $value');
  }
}
