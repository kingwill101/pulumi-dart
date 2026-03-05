/// Provision states for FluidRelay RP
enum ProvisioningState {
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled");

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

