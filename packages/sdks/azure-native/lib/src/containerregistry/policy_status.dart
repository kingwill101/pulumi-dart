/// The value that indicates whether the policy is enabled or not.
enum PolicyStatus {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const PolicyStatus(this.value);
  final String value;

  static PolicyStatus fromValue(String value) {
    for (final item in PolicyStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyStatus value: $value');
  }
}

