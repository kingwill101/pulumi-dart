import 'package:pulumi/pulumi.dart' as pulumi;

/// The usage indicator.
enum UsageIndicator implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueTest("Test"),
  valueInformation("Information"),
  valueProduction("Production");

  const UsageIndicator(this.wireValue);
  @override
  final String wireValue;

  static UsageIndicator fromValue(String value) {
    for (final item in UsageIndicator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UsageIndicator value: $value');
  }
}
