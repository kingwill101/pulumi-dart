/// Activation state of the partner destination.
enum PartnerDestinationActivationState {
  valueNeverActivated("NeverActivated"),
  valueActivated("Activated");

  const PartnerDestinationActivationState(this.value);
  final String value;

  static PartnerDestinationActivationState fromValue(String value) {
    for (final item in PartnerDestinationActivationState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartnerDestinationActivationState value: $value');
  }
}

