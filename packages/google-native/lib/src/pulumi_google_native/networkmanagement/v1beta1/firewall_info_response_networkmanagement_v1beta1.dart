// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a VPC firewall rule, an implied VPC firewall rule, or a hierarchical firewall policy rule.
class FirewallInfoResponseNetworkmanagementV1beta1 {
  /// Possible values: ALLOW, DENY
  final String action;

  /// Possible values: INGRESS, EGRESS
  final String direction;

  /// The display name of the VPC firewall rule. This field is not applicable to hierarchical firewall policy rules.
  final String displayName;

  /// The firewall rule's type.
  final String firewallRuleType;

  /// The URI of the VPC network that the firewall rule is associated with. This field is not applicable to hierarchical firewall policy rules.
  final String networkUri;

  /// The hierarchical firewall policy that this rule is associated with. This field is not applicable to VPC firewall rules.
  final String policy;

  /// The priority of the firewall rule.
  final int priority;

  /// The target service accounts specified by the firewall rule.
  final List<String> targetServiceAccounts;

  /// The target tags defined by the VPC firewall rule. This field is not applicable to hierarchical firewall policy rules.
  final List<String> targetTags;

  /// The URI of the VPC firewall rule. This field is not applicable to implied firewall rules or hierarchical firewall policy rules.
  final String uri;

  FirewallInfoResponseNetworkmanagementV1beta1({
    required this.action,
    required this.direction,
    required this.displayName,
    required this.firewallRuleType,
    required this.networkUri,
    required this.policy,
    required this.priority,
    required this.targetServiceAccounts,
    required this.targetTags,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['direction'] = direction;
    map['displayName'] = displayName;
    map['firewallRuleType'] = firewallRuleType;
    map['networkUri'] = networkUri;
    map['policy'] = policy;
    map['priority'] = priority;
    map['targetServiceAccounts'] = targetServiceAccounts;
    map['targetTags'] = targetTags;
    map['uri'] = uri;
    return map;
  }

  factory FirewallInfoResponseNetworkmanagementV1beta1.fromMap(
      Map<String, dynamic> map) {
    return FirewallInfoResponseNetworkmanagementV1beta1(
      action: map['action'] as String,
      direction: map['direction'] as String,
      displayName: map['displayName'] as String,
      firewallRuleType: map['firewallRuleType'] as String,
      networkUri: map['networkUri'] as String,
      policy: map['policy'] as String,
      priority: map['priority'] as int,
      targetServiceAccounts:
          (map['targetServiceAccounts'] as List).cast<String>(),
      targetTags: (map['targetTags'] as List).cast<String>(),
      uri: map['uri'] as String,
    );
  }
}
