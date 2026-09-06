import 'package:pulumi/pulumi.dart' as pulumi;

/// Enumeration of identity types, from the perspective of management.
enum IdentityManagementType implements pulumi.PulumiEnum<String> {
  system("System"),
  user("User"),
  none("None");

  const IdentityManagementType(this.wireValue);
  @override
  final String wireValue;

  static IdentityManagementType fromValue(String value) {
    for (final item in IdentityManagementType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityManagementType value: $value');
  }
}
