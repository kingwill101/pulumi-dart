import 'package:pulumi/pulumi.dart' as pulumi;

/// Content Filters policy type.
enum RaiPolicyType implements pulumi.PulumiEnum<String> {
  valueUserManaged("UserManaged"),
  valueSystemManaged("SystemManaged");

  const RaiPolicyType(this.wireValue);
  @override
  final String wireValue;

  static RaiPolicyType fromValue(String value) {
    for (final item in RaiPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RaiPolicyType value: $value');
  }
}
