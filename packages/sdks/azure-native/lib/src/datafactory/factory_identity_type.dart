import 'package:pulumi/pulumi.dart' as pulumi;

/// The identity type.
enum FactoryIdentityType implements pulumi.PulumiEnum<String> {
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned"),
  systemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const FactoryIdentityType(this.wireValue);
  @override
  final String wireValue;

  static FactoryIdentityType fromValue(String value) {
    for (final item in FactoryIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FactoryIdentityType value: $value');
  }
}
