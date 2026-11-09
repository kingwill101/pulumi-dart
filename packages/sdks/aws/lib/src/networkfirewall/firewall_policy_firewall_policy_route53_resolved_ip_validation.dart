// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyFirewallPolicyRoute53ResolvedIpValidation {
  /// Action to take on connections that fail validation. Allowed values are: `ALERT`, `DROP`, and `REJECT`. `ALERT` requires firewall logging. `REJECT` sends a TCP reset; Network Firewall drops non-TCP traffic.
  final pulumi.Input<String> action;
  /// Set of destination IPv4 or IPv6 CIDR blocks that are exempt from the policy-level check. Use `/32` or `/128` for a single address. Valid number of entries is between `1` and `100`. Doesn't affect rules that use the `AWS_ROUTE_53_RESOLVED_DOMAIN` target type.
  final pulumi.Input<List<String>?>? bypassDestinationValidationIpRanges;
  /// Action to take when the recorded DNS resolution has expired from the resolved IP cache but traffic continues. Allowed values are: `CONTINUE`, `DROP`, and `REJECT`. `CONTINUE` treats the expired resolution as valid.
  final pulumi.Input<String> dnsExpiryExceptionPolicy;
  /// ID of the Route 53 Resolver DNS Firewall rule group, such as `aws_route53_resolver_firewall_rule_group.example.id`. DNS responses from the Route 53 Resolver in VPCs associated with this rule group are used for validation. Changing this value swaps the managed association asynchronously; the provider waits for the policy to return to `ACTIVE`.
  final pulumi.Input<String> dnsFirewallRuleGroupId;
  /// Set of client source IPv4 or IPv6 CIDR blocks whose connections are subject to the policy-level validation check. Use `/32` or `/128` for a single address. Valid number of entries is between `1` and `100`. If omitted, validation applies to the CIDR ranges of the firewall's VPC and of any additional VPCs attached to the firewall. Doesn't affect stateful rules that use the `AWS_ROUTE_53_RESOLVED_DOMAIN` target type or `awsRoute53ResolvedDomain` rule keyword; those rules still evaluate traffic regardless of these source ranges.
  ///
  /// &gt; **Note:** An empty list can't be set for `sourceIpRanges` or `bypassDestinationValidationIpRanges`. The AWS API treats an empty `sourceIpRanges` list as "validate no source addresses", which this resource doesn't support. Omit the argument instead.
  ///
  /// &gt; **Note:** Removing the `route53ResolvedIpValidation` block turns off resolved IP validation and removes the managed DNS Firewall rule group association.
  final pulumi.Input<List<String>?>? sourceIpRanges;

  /// Creates a new [FirewallPolicyFirewallPolicyRoute53ResolvedIpValidation].
  /// [action] Action to take on connections that fail validation. Allowed values are: `ALERT`, `DROP`, and `REJECT`. `ALERT` requires firewall logging. `REJECT` sends a TCP reset; Network Firewall drops non-TCP traffic.
  /// [bypassDestinationValidationIpRanges] Set of destination IPv4 or IPv6 CIDR blocks that are exempt from the policy-level check. Use `/32` or `/128` for a single address. Valid number of entries is between `1` and `100`. Doesn't affect rules that use the `AWS_ROUTE_53_RESOLVED_DOMAIN` target type.
  /// [dnsExpiryExceptionPolicy] Action to take when the recorded DNS resolution has expired from the resolved IP cache but traffic continues. Allowed values are: `CONTINUE`, `DROP`, and `REJECT`. `CONTINUE` treats the expired resolution as valid.
  /// [dnsFirewallRuleGroupId] ID of the Route 53 Resolver DNS Firewall rule group, such as `aws_route53_resolver_firewall_rule_group.example.id`. DNS responses from the Route 53 Resolver in VPCs associated with this rule group are used for validation. Changing this value swaps the managed association asynchronously; the provider waits for the policy to return to `ACTIVE`.
  /// [sourceIpRanges] Set of client source IPv4 or IPv6 CIDR blocks whose connections are subject to the policy-level validation check. Use `/32` or `/128` for a single address. Valid number of entries is between `1` and `100`. If omitted, validation applies to the CIDR ranges of the firewall's VPC and of any additional VPCs attached to the firewall. Doesn't affect stateful rules that use the `AWS_ROUTE_53_RESOLVED_DOMAIN` target type or `awsRoute53ResolvedDomain` rule keyword; those rules still evaluate traffic regardless of these source ranges.
  const FirewallPolicyFirewallPolicyRoute53ResolvedIpValidation({
    required this.action,
    this.bypassDestinationValidationIpRanges,
    required this.dnsExpiryExceptionPolicy,
    required this.dnsFirewallRuleGroupId,
    this.sourceIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'bypassDestinationValidationIpRanges': ?bypassDestinationValidationIpRanges,
      'dnsExpiryExceptionPolicy': dnsExpiryExceptionPolicy,
      'dnsFirewallRuleGroupId': dnsFirewallRuleGroupId,
      'sourceIpRanges': ?sourceIpRanges,
    };
  }

  factory FirewallPolicyFirewallPolicyRoute53ResolvedIpValidation.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyRoute53ResolvedIpValidation(
      action: pulumi.Input.fromValue(map['action'] as String),
      bypassDestinationValidationIpRanges: (() { final guardedValue = map['bypassDestinationValidationIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dnsExpiryExceptionPolicy: pulumi.Input.fromValue(map['dnsExpiryExceptionPolicy'] as String),
      dnsFirewallRuleGroupId: pulumi.Input.fromValue(map['dnsFirewallRuleGroupId'] as String),
      sourceIpRanges: (() { final guardedValue = map['sourceIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
