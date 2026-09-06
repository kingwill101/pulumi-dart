import 'package:pulumi/pulumi.dart' as pulumi;

/// Provisioning state of the partner configuration.
enum PartnerConfigurationProvisioningState implements pulumi.PulumiEnum<String> {
  valueCreating("Creating"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueSucceeded("Succeeded"),
  valueCanceled("Canceled"),
  valueFailed("Failed");

  const PartnerConfigurationProvisioningState(this.wireValue);
  @override
  final String wireValue;

  static PartnerConfigurationProvisioningState fromValue(String value) {
    for (final item in PartnerConfigurationProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartnerConfigurationProvisioningState value: $value');
  }
}
