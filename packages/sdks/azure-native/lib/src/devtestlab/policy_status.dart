/// The status of the policy.
enum PolicyStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const PolicyStatus(this.wireValue);
  final String wireValue;

  static PolicyStatus fromValue(String value) {
    for (final item in PolicyStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyStatus value: $value');
  }
}

