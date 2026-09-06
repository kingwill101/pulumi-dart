import 'package:pulumi/pulumi.dart' as pulumi;

/// Configures if the snapshot policy is enabled on the volumes connected to the policy.
enum PolicyStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const PolicyStatus(this.wireValue);
  @override
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
