/// The application enablement.
enum ApplicationEnablement {
  valueUnknown("Unknown"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ApplicationEnablement(this.wireValue);
  final String wireValue;

  static ApplicationEnablement fromValue(String value) {
    for (final item in ApplicationEnablement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationEnablement value: $value');
  }
}

