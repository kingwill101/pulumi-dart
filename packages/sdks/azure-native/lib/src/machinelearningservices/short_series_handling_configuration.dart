import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameter defining how if AutoML should handle short time series.
enum ShortSeriesHandlingConfiguration implements pulumi.PulumiEnum<String> {
  none("None"),
  auto("Auto"),
  pad("Pad"),
  drop("Drop");

  const ShortSeriesHandlingConfiguration(this.wireValue);
  @override
  final String wireValue;

  static ShortSeriesHandlingConfiguration fromValue(String value) {
    for (final item in ShortSeriesHandlingConfiguration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShortSeriesHandlingConfiguration value: $value');
  }
}
