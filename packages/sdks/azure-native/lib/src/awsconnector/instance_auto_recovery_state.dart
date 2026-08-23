/// Property value
enum InstanceAutoRecoveryState {
  default_("default"),
  disabled("disabled");

  const InstanceAutoRecoveryState(this.wireValue);
  final String wireValue;

  static InstanceAutoRecoveryState fromValue(String value) {
    for (final item in InstanceAutoRecoveryState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceAutoRecoveryState value: $value');
  }
}
