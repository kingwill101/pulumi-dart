import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity type of the main principal.
enum IdentityType implements pulumi.PulumiEnum<String> {
  none("None"),
  userAssigned("UserAssigned");

  const IdentityType(this.wireValue);
  @override
  final String wireValue;

  static IdentityType fromValue(String value) {
    for (final item in IdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityType value: $value');
  }
}
