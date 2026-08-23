/// Enable advanced network policies. This allows users to configure Layer 7 network policies (FQDN, HTTP, Kafka). Policies themselves must be configured via the Cilium Network Policy resources, see https://docs.cilium.io/en/latest/security/policy/index.html. This can be enabled only on cilium-based clusters. If not specified, the default value is FQDN if security.enabled is set to true.
enum AdvancedNetworkPolicies {
  valueL7("L7"),
  valueFQDN("FQDN"),
  valueNone("None");

  const AdvancedNetworkPolicies(this.wireValue);
  final String wireValue;

  static AdvancedNetworkPolicies fromValue(String value) {
    for (final item in AdvancedNetworkPolicies.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdvancedNetworkPolicies value: $value');
  }
}
