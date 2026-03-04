/// Determines whether the setting is enabled, disabled or report only.
enum PIMOnlyMode {
  valueDisabled("Disabled"),
  valueEnabled("Enabled"),
  valueReportOnly("ReportOnly");

  const PIMOnlyMode(this.wireValue);
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
