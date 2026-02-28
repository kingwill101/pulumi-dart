// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIngressRule.
class GetIngressRuleResult {
  /// The action to take on matched requests.
  final String action;

  /// An optional string description of this rule. This field has a maximum length of 400 characters.
  final String description;

  /// A positive integer between 1, Int32.MaxValue-1 that defines the order of rule evaluation. Rules with the lowest priority are evaluated first.A default rule at priority Int32.MaxValue matches all IPv4 and IPv6 traffic when no previous rule matches. Only the action of this rule can be modified by the user.
  final int priority;

  /// IP address or range, defined using CIDR notation, of requests that this rule applies to. You can use the wildcard character "*" to match all IPs equivalent to "0/0" and "::/0" together. Examples: 192.168.1.1 or 192.168.0.0/16 or 2001:db8::/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. Truncation will be silently performed on addresses which are not properly truncated. For example, 1.2.3.4/24 is accepted as the same address as 1.2.3.0/24. Similarly, for IPv6, 2001:db8::1/32 is accepted as the same address as 2001:db8::/32.
  final String sourceRange;

  /// Creates a new [GetIngressRuleResult].
  /// [action] The action to take on matched requests.
  /// [description] An optional string description of this rule. This field has a maximum length of 400 characters.
  /// [priority] A positive integer between 1, Int32.MaxValue-1 that defines the order of rule evaluation. Rules with the lowest priority are evaluated first.A default rule at priority Int32.MaxValue matches all IPv4 and IPv6 traffic when no previous rule matches. Only the action of this rule can be modified by the user.
  /// [sourceRange] IP address or range, defined using CIDR notation, of requests that this rule applies to. You can use the wildcard character "*" to match all IPs equivalent to "0/0" and "::/0" together. Examples: 192.168.1.1 or 192.168.0.0/16 or 2001:db8::/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. Truncation will be silently performed on addresses which are not properly truncated. For example, 1.2.3.4/24 is accepted as the same address as 1.2.3.0/24. Similarly, for IPv6, 2001:db8::1/32 is accepted as the same address as 2001:db8::/32.
  GetIngressRuleResult({
    required this.action,
    required this.description,
    required this.priority,
    required this.sourceRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['description'] = description;
    map['priority'] = priority;
    map['sourceRange'] = sourceRange;
    return map;
  }

  factory GetIngressRuleResult.fromMap(Map<String, dynamic> map) {
    return GetIngressRuleResult(
      action: map['action'] as String,
      description: map['description'] as String,
      priority: map['priority'] as int,
      sourceRange: map['sourceRange'] as String,
    );
  }
}
