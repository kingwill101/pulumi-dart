/// Administrative state of the physical port.
enum ExpressRouteLinkAdminState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ExpressRouteLinkAdminState(this.value);
  final String value;

  static ExpressRouteLinkAdminState fromValue(String value) {
    for (final item in ExpressRouteLinkAdminState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRouteLinkAdminState value: $value');
  }
}

