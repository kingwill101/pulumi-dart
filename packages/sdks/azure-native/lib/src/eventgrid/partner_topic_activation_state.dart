import 'package:pulumi/pulumi.dart' as pulumi;

/// Activation state of the partner topic.
enum PartnerTopicActivationState implements pulumi.PulumiEnum<String> {
  valueNeverActivated("NeverActivated"),
  valueActivated("Activated"),
  valueDeactivated("Deactivated");

  const PartnerTopicActivationState(this.wireValue);
  @override
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
