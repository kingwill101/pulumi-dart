/// Provisioning state of the Private Endpoint Connection.
enum ResourceProvisioningState {
  valueCreating("Creating"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueSucceeded("Succeeded"),
  valueCanceled("Canceled"),
  valueFailed("Failed");

  const ResourceProvisioningState(this.wireValue);
  final String wireValue;

  static ResourceProvisioningState fromValue(String value) {
    for (final item in ResourceProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceProvisioningState value: $value');
  }
}

