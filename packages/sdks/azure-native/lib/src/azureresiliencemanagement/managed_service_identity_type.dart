import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity type linked with the resource
enum ManagedServiceIdentityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const ManagedServiceIdentityType(this.wireValue);
  @override
  final String wireValue;

  static ManagedServiceIdentityType fromValue(String value) {
    for (final item in ManagedServiceIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedServiceIdentityType value: $value');
  }
}
