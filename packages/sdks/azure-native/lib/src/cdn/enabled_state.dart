/// Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
enum EnabledState {
  enabled("Enabled"),
  disabled("Disabled");

  const EnabledState(this.wireValue);
  final String wireValue;

  static EnabledState fromValue(String value) {
    for (final item in EnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnabledState value: $value');
  }
}
