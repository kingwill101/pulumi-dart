import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of managed service identity. The type 'SystemAssigned' includes an implicitly created identity. The type 'None' will remove any identities from the resource.
enum ManagedServiceIdentityType implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueNone("None");

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
