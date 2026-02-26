enum EnterpriseCrmEventbusProtoLogSettingsSeedPeriod {
  seedPeriodUnspecified("SEED_PERIOD_UNSPECIFIED"),
  day("DAY"),
  week("WEEK"),
  month("MONTH");

  const EnterpriseCrmEventbusProtoLogSettingsSeedPeriod(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoLogSettingsSeedPeriod fromValue(
      String value) {
    for (final item in EnterpriseCrmEventbusProtoLogSettingsSeedPeriod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnterpriseCrmEventbusProtoLogSettingsSeedPeriod value: $value');
  }
}
