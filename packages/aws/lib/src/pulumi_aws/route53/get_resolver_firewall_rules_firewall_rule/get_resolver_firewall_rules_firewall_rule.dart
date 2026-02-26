// ignore_for_file: unused_element, unnecessary_cast

class GetResolverFirewallRulesFirewallRule {
  /// The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list.
  final String action;

  /// The DNS record's type.
  final String blockOverrideDnsType;

  /// The custom DNS record to send back in response to the query.
  final String blockOverrideDomain;

  /// The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record.
  final int blockOverrideTtl;

  /// The way that you want DNS Firewall to block the request.
  final String blockResponse;

  /// The confidence threshold for DNS Firewall Advanced rules.
  final String confidenceThreshold;

  /// The date and time that the rule was created, in Unix time format and Coordinated Universal Time (UTC).
  final String creationTime;

  /// A unique string defined by you to identify the request.
  final String creatorRequestId;

  /// The type of DNS Firewall Advanced rule.
  final String dnsThreatProtection;

  /// The ID of the domain list that's used in the rule.
  final String firewallDomainListId;

  /// How DNS Firewall evaluates DNS redirection in the DNS redirection chain.
  final String firewallDomainRedirectionAction;

  /// The unique identifier of the firewall rule group that you want to retrieve the rules for.
  final String firewallRuleGroupId;

  /// The ID of the DNS Firewall Advanced rule.
  final String firewallThreatProtectionId;

  /// The date and time that the rule was last modified, in Unix time format and Coordinated Universal Time (UTC).
  final String modificationTime;

  /// The name of the rule.
  final String name;

  /// The setting that determines the processing order of the rules in a rule group.
  final int priority;

  /// The DNS query type that the rule evaluates.
  final String qType;

  GetResolverFirewallRulesFirewallRule({
    required this.action,
    required this.blockOverrideDnsType,
    required this.blockOverrideDomain,
    required this.blockOverrideTtl,
    required this.blockResponse,
    required this.confidenceThreshold,
    required this.creationTime,
    required this.creatorRequestId,
    required this.dnsThreatProtection,
    required this.firewallDomainListId,
    required this.firewallDomainRedirectionAction,
    required this.firewallRuleGroupId,
    required this.firewallThreatProtectionId,
    required this.modificationTime,
    required this.name,
    required this.priority,
    required this.qType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['blockOverrideDnsType'] = blockOverrideDnsType;
    map['blockOverrideDomain'] = blockOverrideDomain;
    map['blockOverrideTtl'] = blockOverrideTtl;
    map['blockResponse'] = blockResponse;
    map['confidenceThreshold'] = confidenceThreshold;
    map['creationTime'] = creationTime;
    map['creatorRequestId'] = creatorRequestId;
    map['dnsThreatProtection'] = dnsThreatProtection;
    map['firewallDomainListId'] = firewallDomainListId;
    map['firewallDomainRedirectionAction'] = firewallDomainRedirectionAction;
    map['firewallRuleGroupId'] = firewallRuleGroupId;
    map['firewallThreatProtectionId'] = firewallThreatProtectionId;
    map['modificationTime'] = modificationTime;
    map['name'] = name;
    map['priority'] = priority;
    map['qType'] = qType;
    return map;
  }

  factory GetResolverFirewallRulesFirewallRule.fromMap(
      Map<String, dynamic> map) {
    return GetResolverFirewallRulesFirewallRule(
      action: map['action'] as String,
      blockOverrideDnsType: map['blockOverrideDnsType'] as String,
      blockOverrideDomain: map['blockOverrideDomain'] as String,
      blockOverrideTtl: map['blockOverrideTtl'] as int,
      blockResponse: map['blockResponse'] as String,
      confidenceThreshold: map['confidenceThreshold'] as String,
      creationTime: map['creationTime'] as String,
      creatorRequestId: map['creatorRequestId'] as String,
      dnsThreatProtection: map['dnsThreatProtection'] as String,
      firewallDomainListId: map['firewallDomainListId'] as String,
      firewallDomainRedirectionAction:
          map['firewallDomainRedirectionAction'] as String,
      firewallRuleGroupId: map['firewallRuleGroupId'] as String,
      firewallThreatProtectionId: map['firewallThreatProtectionId'] as String,
      modificationTime: map['modificationTime'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      qType: map['qType'] as String,
    );
  }
}
