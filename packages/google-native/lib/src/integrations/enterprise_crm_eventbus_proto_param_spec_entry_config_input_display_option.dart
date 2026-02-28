enum EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption {
  default_("DEFAULT"),
  stringMultiLine("STRING_MULTI_LINE"),
  numberSlider("NUMBER_SLIDER"),
  booleanToggle("BOOLEAN_TOGGLE");

  const EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption(
      this.value);
  final String value;

  static EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption
      fromValue(String value) {
    for (final item
        in EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnterpriseCrmEventbusProtoParamSpecEntryConfigInputDisplayOption value: $value');
  }
}
