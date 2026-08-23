/// Activation state of the partner topic.
enum PartnerTopicActivationState {
  valueNeverActivated("NeverActivated"),
  valueActivated("Activated"),
  valueDeactivated("Deactivated");

  const PartnerTopicActivationState(this.wireValue);
  final String wireValue;

  static PartnerTopicActivationState fromValue(String value) {
    for (final item in PartnerTopicActivationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartnerTopicActivationState value: $value');
  }
}
