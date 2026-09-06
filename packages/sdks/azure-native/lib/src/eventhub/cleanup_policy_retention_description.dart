import 'package:pulumi/pulumi.dart' as pulumi;

/// Enumerates the possible values for cleanup policy
enum CleanupPolicyRetentionDescription implements pulumi.PulumiEnum<String> {
  valueDelete("Delete"),
  valueCompact("Compact");

  const CleanupPolicyRetentionDescription(this.wireValue);
  @override
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
