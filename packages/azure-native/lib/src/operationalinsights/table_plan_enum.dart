/// Instruct the system how to handle and charge the logs ingested to this table.
enum TablePlanEnum {
  valueBasic("Basic"),
  valueAnalytics("Analytics");

  const TablePlanEnum(this.value);
  final String value;

  static TablePlanEnum fromValue(String value) {
    for (final item in TablePlanEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TablePlanEnum value: $value');
  }
}

