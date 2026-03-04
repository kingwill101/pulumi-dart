/// State of the plugin
enum DevToolPortalFeatureState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DevToolPortalFeatureState(this.wireValue);
  final String wireValue;

  static DevToolPortalFeatureState fromValue(String value) {
    for (final item in DevToolPortalFeatureState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DevToolPortalFeatureState value: $value');
  }
}
