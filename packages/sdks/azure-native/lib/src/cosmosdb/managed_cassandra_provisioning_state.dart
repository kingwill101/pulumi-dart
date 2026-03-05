/// The status of the resource at the time the operation was called.
enum ManagedCassandraProvisioningState {
  valueCreating("Creating"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled");

  const ManagedCassandraProvisioningState(this.wireValue);
  final String wireValue;

  static ManagedCassandraProvisioningState fromValue(String value) {
    for (final item in ManagedCassandraProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedCassandraProvisioningState value: $value');
  }
}

