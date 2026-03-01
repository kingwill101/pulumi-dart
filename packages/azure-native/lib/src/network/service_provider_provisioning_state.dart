/// The ServiceProviderProvisioningState state of the resource.
enum ServiceProviderProvisioningState {
  valueNotProvisioned("NotProvisioned"),
  valueProvisioning("Provisioning"),
  valueProvisioned("Provisioned"),
  valueDeprovisioning("Deprovisioning");

  const ServiceProviderProvisioningState(this.value);
  final String value;

  static ServiceProviderProvisioningState fromValue(String value) {
    for (final item in ServiceProviderProvisioningState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceProviderProvisioningState value: $value');
  }
}

