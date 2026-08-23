/// Activation state of the partner destination.
enum PartnerDestinationActivationState {
  valueNeverActivated("NeverActivated"),
  valueActivated("Activated");

  const PartnerDestinationActivationState(this.wireValue);
  final String wireValue;

  static PartnerDestinationActivationState fromValue(String value) {
    for (final item in PartnerDestinationActivationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartnerDestinationActivationState value: $value');
  }
}
