import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Set target lags mode - Auto/Custom
enum TargetLagsMode implements pulumi.PulumiEnum<String> {
  auto("Auto"),
  custom("Custom");

  const TargetLagsMode(this.wireValue);
  @override
  final String wireValue;

  static TargetLagsMode fromValue(String value) {
    for (final item in TargetLagsMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetLagsMode value: $value');
  }
}
