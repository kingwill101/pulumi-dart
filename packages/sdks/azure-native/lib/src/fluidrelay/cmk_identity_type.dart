import 'package:pulumi/pulumi.dart' as pulumi;

/// Values can be SystemAssigned or UserAssigned
enum CmkIdentityType implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const CmkIdentityType(this.wireValue);
  @override
  final String wireValue;

  static CmkIdentityType fromValue(String value) {
    for (final item in CmkIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CmkIdentityType value: $value');
  }
}
