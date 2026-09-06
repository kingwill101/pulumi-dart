import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Set forecast horizon value selection mode.
enum ForecastHorizonMode implements pulumi.PulumiEnum<String> {
  auto("Auto"),
  custom("Custom");

  const ForecastHorizonMode(this.wireValue);
  @override
  final String wireValue;

  static ForecastHorizonMode fromValue(String value) {
    for (final item in ForecastHorizonMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForecastHorizonMode value: $value');
  }
}
