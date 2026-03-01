/// Provisioning state of the monitoring tag rules.
enum ProvisioningState {
  valueAccepted("Accepted"),
  valueCreating("Creating"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled"),
  valueDeleted("Deleted"),
  valueNotSpecified("NotSpecified");

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

