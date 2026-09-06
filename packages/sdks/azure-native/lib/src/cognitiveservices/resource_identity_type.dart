import 'package:pulumi/pulumi.dart' as pulumi;

/// The identity type.
enum ResourceIdentityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned, UserAssigned");

  const ResourceIdentityType(this.wireValue);
  @override
  final String wireValue;

  static ResourceIdentityType fromValue(String value) {
    for (final item in ResourceIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceIdentityType value: $value');
  }
}
