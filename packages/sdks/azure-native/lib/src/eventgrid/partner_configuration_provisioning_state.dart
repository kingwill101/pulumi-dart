/// Provisioning state of the partner configuration.
enum PartnerConfigurationProvisioningState {
  valueCreating("Creating"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueSucceeded("Succeeded"),
  valueCanceled("Canceled"),
  valueFailed("Failed");

  const PartnerConfigurationProvisioningState(this.wireValue);
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
