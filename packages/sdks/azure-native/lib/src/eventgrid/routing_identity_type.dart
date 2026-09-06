import 'package:pulumi/pulumi.dart' as pulumi;

/// Routing identity type for topic spaces configuration.
enum RoutingIdentityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const RoutingIdentityType(this.wireValue);
  @override
  final String wireValue;

  static RoutingIdentityType fromValue(String value) {
    for (final item in RoutingIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingIdentityType value: $value');
  }
}
