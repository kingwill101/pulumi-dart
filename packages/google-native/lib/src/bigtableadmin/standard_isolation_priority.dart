/// The priority of requests sent using this app profile.
enum StandardIsolationPriority {
  priorityUnspecified("PRIORITY_UNSPECIFIED"),
  priorityLow("PRIORITY_LOW"),
  priorityMedium("PRIORITY_MEDIUM"),
  priorityHigh("PRIORITY_HIGH");

  const StandardIsolationPriority(this.value);
  final String value;

  static StandardIsolationPriority fromValue(String value) {
    for (final item in StandardIsolationPriority.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StandardIsolationPriority value: $value');
  }
}
