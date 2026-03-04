/// The type of the Gateway resource.
enum GatewayType {
  valuePublic("Public");

  const GatewayType(this.wireValue);
  final String wireValue;

  static GatewayType fromValue(String value) {
    for (final item in GatewayType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayType value: $value');
  }
}
