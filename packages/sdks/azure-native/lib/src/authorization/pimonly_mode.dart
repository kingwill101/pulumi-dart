import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines whether the setting is enabled, disabled or report only.
enum PIMOnlyMode implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled"),
  reportOnly("ReportOnly");

  const PIMOnlyMode(this.wireValue);
  @override
  final String wireValue;

  static PIMOnlyMode fromValue(String value) {
    for (final item in PIMOnlyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PIMOnlyMode value: $value');
  }
}
