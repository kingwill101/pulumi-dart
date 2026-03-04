/// Type of the delivery attribute or header name.
enum DeliveryAttributeMappingType {
  valueStatic("Static"),
  valueDynamic("Dynamic");

  const DeliveryAttributeMappingType(this.wireValue);
  final String wireValue;

  static DeliveryAttributeMappingType fromValue(String value) {
    for (final item in DeliveryAttributeMappingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeliveryAttributeMappingType value: $value');
  }
}
