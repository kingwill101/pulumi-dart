import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Seasonality mode.
enum SeasonalityMode implements pulumi.PulumiEnum<String> {
  auto("Auto"),
  custom("Custom");

  const SeasonalityMode(this.wireValue);
  @override
  final String wireValue;

  static SeasonalityMode fromValue(String value) {
    for (final item in SeasonalityMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SeasonalityMode value: $value');
  }
}
