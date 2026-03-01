/// Configures if the snapshot policy is enabled on the volumes connected to the policy.
enum PolicyStatus {
  enabled("Enabled"),
  disabled("Disabled");

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

