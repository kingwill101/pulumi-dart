/// Gets or sets the provisioning state.
enum ProvisioningState {
  valueUnknown("Unknown"),
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled"),
  valueCreating("Creating"),
  valueDeleting("Deleting"),
  valueUpdating("Updating");

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

