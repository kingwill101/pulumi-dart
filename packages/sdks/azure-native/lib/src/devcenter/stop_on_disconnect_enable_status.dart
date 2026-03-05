/// Whether the feature to stop the Dev Box on disconnect once the grace period has lapsed is enabled.
enum StopOnDisconnectEnableStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const StopOnDisconnectEnableStatus(this.wireValue);
  final String wireValue;

  static StopOnDisconnectEnableStatus fromValue(String value) {
    for (final item in StopOnDisconnectEnableStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StopOnDisconnectEnableStatus value: $value');
  }
}

