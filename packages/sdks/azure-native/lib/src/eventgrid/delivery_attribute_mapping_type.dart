import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the delivery attribute or header name.
enum DeliveryAttributeMappingType implements pulumi.PulumiEnum<String> {
  valueStatic("Static"),
  valueDynamic("Dynamic");

  const DeliveryAttributeMappingType(this.wireValue);
  @override
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
