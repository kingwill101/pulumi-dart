/// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
enum GlobalForwardingRuleLoadBalancingSchemeComputeBeta {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalid("INVALID");

  const GlobalForwardingRuleLoadBalancingSchemeComputeBeta(this.value);
  final String value;

  static GlobalForwardingRuleLoadBalancingSchemeComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in GlobalForwardingRuleLoadBalancingSchemeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GlobalForwardingRuleLoadBalancingSchemeComputeBeta value: $value',
    );
  }
}
