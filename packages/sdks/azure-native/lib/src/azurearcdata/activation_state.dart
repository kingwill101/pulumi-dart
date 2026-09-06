import 'package:pulumi/pulumi.dart' as pulumi;

/// The activation state of the license.
enum ActivationState implements pulumi.PulumiEnum<String> {
  valueActivated("Activated"),
  valueDeactivated("Deactivated");

  const ActivationState(this.wireValue);
  @override
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
