/// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
enum ForwardingRuleLoadBalancingScheme2 {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalid("INVALID");

  const ForwardingRuleLoadBalancingScheme2(this.value);
  final String value;

  static ForwardingRuleLoadBalancingScheme2 fromValue(String value) {
    for (final item in ForwardingRuleLoadBalancingScheme2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ForwardingRuleLoadBalancingScheme2 value: $value');
  }
}
