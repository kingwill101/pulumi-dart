import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of managed service identity.
enum IdentityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned");

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
