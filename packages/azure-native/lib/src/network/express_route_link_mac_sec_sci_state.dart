/// Sci mode enabled/disabled.
enum ExpressRouteLinkMacSecSciState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ExpressRouteLinkMacSecSciState(this.value);
  final String value;

  static ExpressRouteLinkMacSecSciState fromValue(String value) {
    for (final item in ExpressRouteLinkMacSecSciState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRouteLinkMacSecSciState value: $value');
  }
}

