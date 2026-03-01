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

  /// Creates a new [GetResolverFirewallRulesFirewallRule].
  /// [action] The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list.
  /// [blockOverrideDnsType] The DNS record's type.
  /// [blockOverrideDomain] The custom DNS record to send back in response to the query.
  /// [blockOverrideTtl] The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record.
  /// [blockResponse] The way that you want DNS Firewall to block the request.
  /// [confidenceThreshold] The confidence threshold for DNS Firewall Advanced rules.
  /// [creationTime] The date and time that the rule was created, in Unix time format and Coordinated Universal Time (UTC).
  /// [creatorRequestId] A unique string defined by you to identify the request.
  /// [dnsThreatProtection] The type of DNS Firewall Advanced rule.
  /// [firewallDomainListId] The ID of the domain list that's used in the rule.
  /// [firewallDomainRedirectionAction] How DNS Firewall evaluates DNS redirection in the DNS redirection chain.
  /// [firewallRuleGroupId] The unique identifier of the firewall rule group that you want to retrieve the rules for.
  /// [firewallThreatProtectionId] The ID of the DNS Firewall Advanced rule.
  /// [modificationTime] The date and time that the rule was last modified, in Unix time format and Coordinated Universal Time (UTC).
  /// [name] The name of the rule.
  /// [priority] The setting that determines the processing order of the rules in a rule group.
  /// [qType] The DNS query type that the rule evaluates.
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
    return <String, dynamic>{
      'action': action,
      'blockOverrideDnsType': blockOverrideDnsType,
      'blockOverrideDomain': blockOverrideDomain,
      'blockOverrideTtl': blockOverrideTtl,
      'blockResponse': blockResponse,
      'confidenceThreshold': confidenceThreshold,
      'creationTime': creationTime,
      'creatorRequestId': creatorRequestId,
      'dnsThreatProtection': dnsThreatProtection,
      'firewallDomainListId': firewallDomainListId,
      'firewallDomainRedirectionAction': firewallDomainRedirectionAction,
      'firewallRuleGroupId': firewallRuleGroupId,
      'firewallThreatProtectionId': firewallThreatProtectionId,
      'modificationTime': modificationTime,
      'name': name,
      'priority': priority,
      'qType': qType,
    };
  }

  factory GetResolverFirewallRulesFirewallRule.fromMap(Map<String, dynamic> map) {
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
      firewallDomainRedirectionAction: map['firewallDomainRedirectionAction'] as String,
      firewallRuleGroupId: map['firewallRuleGroupId'] as String,
      firewallThreatProtectionId: map['firewallThreatProtectionId'] as String,
      modificationTime: map['modificationTime'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      qType: map['qType'] as String,
    );
  }
}

