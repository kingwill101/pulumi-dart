/// Provision states for FluidRelay RP
enum ProvisioningState {
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled");

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

