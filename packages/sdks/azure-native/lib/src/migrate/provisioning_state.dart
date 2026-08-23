/// The status of the last operation.
enum ProvisioningState {
  succeeded("Succeeded"),
  failed("Failed"),
  canceled("Canceled"),
  provisioning("Provisioning"),
  updating("Updating"),
  deleting("Deleting"),
  accepted("Accepted");

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
