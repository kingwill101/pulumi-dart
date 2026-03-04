/// The activation state of the license.
enum ActivationState {
  valueActivated("Activated"),
  valueDeactivated("Deactivated");

  const ActivationState(this.wireValue);
  final String wireValue;

  static ActivationState fromValue(String value) {
    for (final item in ActivationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActivationState value: $value');
  }
}
