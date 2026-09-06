import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of managed service identity (either system assigned, or none).
enum SystemAssignedServiceIdentityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned");

  const SystemAssignedServiceIdentityType(this.wireValue);
  @override
  final String wireValue;

  static SystemAssignedServiceIdentityType fromValue(String value) {
    for (final item in SystemAssignedServiceIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SystemAssignedServiceIdentityType value: $value');
  }
}
