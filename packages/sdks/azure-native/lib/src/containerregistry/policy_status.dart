/// The value that indicates whether the policy is enabled or not.
enum PolicyStatus {
  valueEnabled("enabled"),
  valueDisabled("disabled");

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
