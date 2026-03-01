/// The state of the geo backup policy.
enum GeoBackupPolicyState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const GeoBackupPolicyState(this.value);
  final String value;

  static GeoBackupPolicyState fromValue(String value) {
    for (final item in GeoBackupPolicyState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GeoBackupPolicyState value: $value');
  }
}

