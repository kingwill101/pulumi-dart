import 'package:pulumi/pulumi.dart' as pulumi;

/// The value that indicates whether the policy is enabled or not.
enum PolicyStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("enabled"),
  valueDisabled("disabled");

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
