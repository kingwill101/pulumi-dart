/// Transit Option Type.
enum TransitOptionType {
  expressRoute("ExpressRoute"),
  gateway("Gateway"),
  peering("Peering");

  const TransitOptionType(this.wireValue);
  final String wireValue;

  static TransitOptionType fromValue(String value) {
    for (final item in TransitOptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransitOptionType value: $value');
  }
}

