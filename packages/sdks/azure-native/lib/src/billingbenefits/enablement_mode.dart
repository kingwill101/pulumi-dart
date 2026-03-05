/// Setting this to 'Enable' enables automatic shortfall invoicing when milestone commitment is not met.
enum EnablementMode {
  valueUnknown("Unknown"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnablementMode(this.wireValue);
  final String wireValue;

  static EnablementMode fromValue(String value) {
    for (final item in EnablementMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnablementMode value: $value');
  }
}

