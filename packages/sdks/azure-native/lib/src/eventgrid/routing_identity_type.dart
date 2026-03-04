/// Routing identity type for topic spaces configuration.
enum RoutingIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const RoutingIdentityType(this.wireValue);
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
