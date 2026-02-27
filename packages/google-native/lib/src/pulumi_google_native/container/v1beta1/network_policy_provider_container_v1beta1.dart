/// The selected network policy provider.
enum NetworkPolicyProviderContainerV1beta1 {
  providerUnspecified("PROVIDER_UNSPECIFIED"),
  calico("CALICO");

  const NetworkPolicyProviderContainerV1beta1(this.value);
  final String value;

  static NetworkPolicyProviderContainerV1beta1 fromValue(String value) {
    for (final item in NetworkPolicyProviderContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkPolicyProviderContainerV1beta1 value: $value');
  }
}
