/// Setting this to 'Enable' enables automatic shortfall invoicing when milestone commitment is not met.
enum EnablementMode {
  valueUnknown("Unknown"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnablementMode(this.value);
  final String value;

  static EnablementMode fromValue(String value) {
    for (final item in EnablementMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnablementMode value: $value');
  }
}

