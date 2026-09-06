import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of identity being specified, currently SystemAssigned and None are allowed.
enum ServiceManagedIdentityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const ServiceManagedIdentityType(this.wireValue);
  @override
  final String wireValue;

  static ServiceManagedIdentityType fromValue(String value) {
    for (final item in ServiceManagedIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceManagedIdentityType value: $value');
  }
}
