/// Enumerates the possible values for cleanup policy
enum CleanupPolicyRetentionDescription {
  valueDelete("Delete"),
  valueCompact("Compact");

  const CleanupPolicyRetentionDescription(this.value);
  final String value;

  static CleanupPolicyRetentionDescription fromValue(String value) {
    for (final item in CleanupPolicyRetentionDescription.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CleanupPolicyRetentionDescription value: $value');
  }
}

