/// Activation state of the partner topic.
enum PartnerTopicActivationState {
  valueNeverActivated("NeverActivated"),
  valueActivated("Activated"),
  valueDeactivated("Deactivated");

  const PartnerTopicActivationState(this.value);
  final String value;

  static PartnerTopicActivationState fromValue(String value) {
    for (final item in PartnerTopicActivationState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartnerTopicActivationState value: $value');
  }
}

