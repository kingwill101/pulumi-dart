import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity type
enum MsiIdentityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const MsiIdentityType(this.wireValue);
  @override
  final String wireValue;

  static MsiIdentityType fromValue(String value) {
    for (final item in MsiIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MsiIdentityType value: $value');
  }
}
