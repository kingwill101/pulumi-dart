enum EnterpriseCrmEventbusProtoLogSettingsSeedScope {
  seedScopeUnspecified("SEED_SCOPE_UNSPECIFIED"),
  eventName("EVENT_NAME"),
  timePeriod("TIME_PERIOD"),
  paramName("PARAM_NAME");

  const EnterpriseCrmEventbusProtoLogSettingsSeedScope(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoLogSettingsSeedScope fromValue(
    String value,
  ) {
    for (final item in EnterpriseCrmEventbusProtoLogSettingsSeedScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmEventbusProtoLogSettingsSeedScope value: $value',
    );
  }
}
