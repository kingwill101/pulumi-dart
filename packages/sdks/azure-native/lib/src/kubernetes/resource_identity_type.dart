import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of identity used for the connected cluster. The type 'SystemAssigned, includes a system created identity. The type 'None' means no identity is assigned to the connected cluster.
enum ResourceIdentityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned");

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
