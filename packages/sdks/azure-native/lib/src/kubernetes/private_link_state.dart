/// Property which describes the state of private link on a connected cluster resource.
enum PrivateLinkState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PrivateLinkState(this.wireValue);
  final String wireValue;

  static PrivateLinkState fromValue(String value) {
    for (final item in PrivateLinkState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkState value: $value');
  }
}

