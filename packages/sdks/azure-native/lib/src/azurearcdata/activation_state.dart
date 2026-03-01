/// The activation state of the license.
enum ActivationState {
  valueActivated("Activated"),
  valueDeactivated("Deactivated");

  const ActivationState(this.value);
  final String value;

  static ActivationState fromValue(String value) {
    for (final item in ActivationState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActivationState value: $value');
  }
}

