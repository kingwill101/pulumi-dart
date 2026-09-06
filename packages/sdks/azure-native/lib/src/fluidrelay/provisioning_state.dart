import 'package:pulumi/pulumi.dart' as pulumi;

/// Provision states for FluidRelay RP
enum ProvisioningState implements pulumi.PulumiEnum<String> {
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled");

  const ProvisioningState(this.wireValue);
  @override
  final String wireValue;

  static ProvisioningState fromValue(String value) {
    for (final item in ProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningState value: $value');
  }
}
