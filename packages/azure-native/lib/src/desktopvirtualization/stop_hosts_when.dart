/// Specifies when to stop hosts during ramp down period.
enum StopHostsWhen {
  valueZeroSessions("ZeroSessions"),
  valueZeroActiveSessions("ZeroActiveSessions");

  const StopHostsWhen(this.value);
  final String value;

  static StopHostsWhen fromValue(String value) {
    for (final item in StopHostsWhen.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StopHostsWhen value: $value');
  }
}

