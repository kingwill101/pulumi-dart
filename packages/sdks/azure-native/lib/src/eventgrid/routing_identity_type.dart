/// Routing identity type for topic spaces configuration.
enum RoutingIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const RoutingIdentityType(this.value);
  final String value;

  static RoutingIdentityType fromValue(String value) {
    for (final item in RoutingIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingIdentityType value: $value');
  }
}

