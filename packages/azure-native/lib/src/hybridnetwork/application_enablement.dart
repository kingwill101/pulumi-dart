/// The application enablement.
enum ApplicationEnablement {
  valueUnknown("Unknown"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ApplicationEnablement(this.value);
  final String value;

  static ApplicationEnablement fromValue(String value) {
    for (final item in ApplicationEnablement.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationEnablement value: $value');
  }
}

