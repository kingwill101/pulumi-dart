/// Enumerates the possible values for cleanup policy
enum CleanupPolicyRetentionDescription {
  valueDelete("Delete"),
  valueCompact("Compact");

  const CleanupPolicyRetentionDescription(this.wireValue);
  final String wireValue;

  static CleanupPolicyRetentionDescription fromValue(String value) {
    for (final item in CleanupPolicyRetentionDescription.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CleanupPolicyRetentionDescription value: $value');
  }
}
