/// Property value
enum InstanceAutoRecoveryState {
  default_("default"),
  disabled("disabled");

  const InstanceAutoRecoveryState(this.value);
  final String value;

  static InstanceAutoRecoveryState fromValue(String value) {
    for (final item in InstanceAutoRecoveryState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceAutoRecoveryState value: $value');
  }
}

