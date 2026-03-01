/// Property which describes the state of private link on a connected cluster resource.
enum PrivateLinkState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PrivateLinkState(this.value);
  final String value;

  static PrivateLinkState fromValue(String value) {
    for (final item in PrivateLinkState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkState value: $value');
  }
}

