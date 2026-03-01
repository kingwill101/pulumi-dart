/// Provisioning state of the partner configuration.
enum PartnerConfigurationProvisioningState {
  valueCreating("Creating"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueSucceeded("Succeeded"),
  valueCanceled("Canceled"),
  valueFailed("Failed");

  const PartnerConfigurationProvisioningState(this.value);
  final String value;

  static PartnerConfigurationProvisioningState fromValue(String value) {
    for (final item in PartnerConfigurationProvisioningState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartnerConfigurationProvisioningState value: $value');
  }
}

