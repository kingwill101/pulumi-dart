import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed identity.
enum ManagedIdentityType implements pulumi.PulumiEnum<String> {
  none("None"),
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned"),
  systemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const ManagedIdentityType(this.wireValue);
  @override
  final String wireValue;

  static ManagedIdentityType fromValue(String value) {
    for (final item in ManagedIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedIdentityType value: $value');
  }
}
