import 'package:pulumi/pulumi.dart' as pulumi;

/// Regional data boundary for an image
enum RegionalDataBoundary implements pulumi.PulumiEnum<String> {
  none("None"),
  eU("EU");

  const RegionalDataBoundary(this.wireValue);
  @override
  final String wireValue;

  static RegionalDataBoundary fromValue(String value) {
    for (final item in RegionalDataBoundary.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionalDataBoundary value: $value');
  }
}
