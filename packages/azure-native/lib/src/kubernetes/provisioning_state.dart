/// Provisioning state of the connected cluster resource.
enum ProvisioningState {
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled"),
  valueProvisioning("Provisioning"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueAccepted("Accepted");

  const ProvisioningState(this.value);
  final String value;

  static ProvisioningState fromValue(String value) {
    for (final item in ProvisioningState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningState value: $value');
  }
}

