import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] TargetRollingWindowSiz detection mode.
enum TargetRollingWindowSizeMode implements pulumi.PulumiEnum<String> {
  auto("Auto"),
  custom("Custom");

  const TargetRollingWindowSizeMode(this.wireValue);
  @override
  final String wireValue;

  static TargetRollingWindowSizeMode fromValue(String value) {
    for (final item in TargetRollingWindowSizeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetRollingWindowSizeMode value: $value');
  }
}
