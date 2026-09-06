import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of identity used for orchestrator cluster. Type 'SystemAssigned' will use an implicitly created identity orchestrator clusters
enum ResourceIdentityType implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned"),
  valueNone("None");

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
