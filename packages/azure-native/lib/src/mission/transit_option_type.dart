/// Transit Option Type.
enum TransitOptionType {
  expressRoute("ExpressRoute"),
  gateway("Gateway"),
  peering("Peering");

  const TransitOptionType(this.value);
  final String value;

  static TransitOptionType fromValue(String value) {
    for (final item in TransitOptionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransitOptionType value: $value');
  }
}

