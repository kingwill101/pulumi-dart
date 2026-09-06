import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of product filter.
enum SupportedFilterTypes implements pulumi.PulumiEnum<String> {
  shipToCountries("ShipToCountries"),
  doubleEncryptionStatus("DoubleEncryptionStatus");

  const SupportedFilterTypes(this.wireValue);
  @override
  final String wireValue;

  static SupportedFilterTypes fromValue(String value) {
    for (final item in SupportedFilterTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportedFilterTypes value: $value');
  }
}
