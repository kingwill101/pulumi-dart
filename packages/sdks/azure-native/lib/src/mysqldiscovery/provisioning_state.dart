/// Gets or sets the provisioning state.
enum ProvisioningState {
  valueUnknown("Unknown"),
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled"),
  valueCreating("Creating"),
  valueDeleting("Deleting"),
  valueUpdating("Updating");

  const ProvisioningState(this.wireValue);
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
