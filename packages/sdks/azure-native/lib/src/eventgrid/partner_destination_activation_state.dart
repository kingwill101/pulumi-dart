import 'package:pulumi/pulumi.dart' as pulumi;

/// Activation state of the partner destination.
enum PartnerDestinationActivationState implements pulumi.PulumiEnum<String> {
  valueNeverActivated("NeverActivated"),
  valueActivated("Activated");

  const PartnerDestinationActivationState(this.wireValue);
  @override
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
