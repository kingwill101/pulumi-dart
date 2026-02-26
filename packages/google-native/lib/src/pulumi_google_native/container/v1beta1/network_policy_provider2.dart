/// The selected network policy provider.
enum NetworkPolicyProvider2 {
  providerUnspecified("PROVIDER_UNSPECIFIED"),
  calico("CALICO");

  const NetworkPolicyProvider2(this.value);
  final String value;

  static NetworkPolicyProvider2 fromValue(String value) {
    for (final item in NetworkPolicyProvider2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPolicyProvider2 value: $value');
  }
}
