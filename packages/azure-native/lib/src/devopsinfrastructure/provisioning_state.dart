/// The status of the current operation.
enum ProvisioningState {
  succeeded("Succeeded"),
  failed("Failed"),
  canceled("Canceled"),
  provisioning("Provisioning"),
  updating("Updating"),
  deleting("Deleting"),
  accepted("Accepted");

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

