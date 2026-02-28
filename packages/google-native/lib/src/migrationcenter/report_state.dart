/// Report creation state.
enum ReportState {
  stateUnspecified("STATE_UNSPECIFIED"),
  pending("PENDING"),
  succeeded("SUCCEEDED"),
  failed("FAILED");

  const ReportState(this.value);
  final String value;

  static ReportState fromValue(String value) {
    for (final item in ReportState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportState value: $value');
  }
}
