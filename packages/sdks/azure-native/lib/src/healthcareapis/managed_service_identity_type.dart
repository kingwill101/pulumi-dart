import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of identity being specified, currently SystemAssigned and None are allowed.
enum ManagedServiceIdentityType implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned"),
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
