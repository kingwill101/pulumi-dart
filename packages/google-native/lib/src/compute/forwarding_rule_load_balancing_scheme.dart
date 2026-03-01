/// Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
enum ForwardingRuleLoadBalancingScheme {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalid("INVALID");

  const ForwardingRuleLoadBalancingScheme(this.value);
  final String value;

  static ForwardingRuleLoadBalancingScheme fromValue(String value) {
    for (final item in ForwardingRuleLoadBalancingScheme.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ForwardingRuleLoadBalancingScheme value: $value',
    );
  }
}
