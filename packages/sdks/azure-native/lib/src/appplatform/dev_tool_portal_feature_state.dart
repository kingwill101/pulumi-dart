/// State of the plugin
enum DevToolPortalFeatureState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DevToolPortalFeatureState(this.value);
  final String value;

  static DevToolPortalFeatureState fromValue(String value) {
    for (final item in DevToolPortalFeatureState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DevToolPortalFeatureState value: $value');
  }
}

