// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResolverFirewallRulesFirewallRule {
  /// The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list.
  final pulumi.Input<String> action;
  /// The DNS record's type.
  final pulumi.Input<String> blockOverrideDnsType;
  /// The custom DNS record to send back in response to the query.
  final pulumi.Input<String> blockOverrideDomain;
  /// The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record.
  final pulumi.Input<int> blockOverrideTtl;
  /// The way that you want DNS Firewall to block the request.
  final pulumi.Input<String> blockResponse;
  /// The confidence threshold for DNS Firewall Advanced rules.
  final pulumi.Input<String> confidenceThreshold;
  /// The date and time that the rule was created, in Unix time format and Coordinated Universal Time (UTC).
  final pulumi.Input<String> creationTime;
  /// A unique string defined by you to identify the request.
  final pulumi.Input<String> creatorRequestId;
  /// The type of DNS Firewall Advanced rule.
  final pulumi.Input<String> dnsThreatProtection;
  /// The ID of the domain list that's used in the rule.
  final pulumi.Input<String> firewallDomainListId;
  /// How DNS Firewall evaluates DNS redirection in the DNS redirection chain.
  final pulumi.Input<String> firewallDomainRedirectionAction;
  /// The unique identifier of the firewall rule group that you want to retrieve the rules for.
  final pulumi.Input<String> firewallRuleGroupId;
  /// The ID of the DNS Firewall Advanced rule.
  final pulumi.Input<String> firewallThreatProtectionId;
  /// The date and time that the rule was last modified, in Unix time format and Coordinated Universal Time (UTC).
  final pulumi.Input<String> modificationTime;
  /// The name of the rule.
  final pulumi.Input<String> name;
  /// The setting that determines the processing order of the rules in a rule group.
  final pulumi.Input<int> priority;
  /// The DNS query type that the rule evaluates.
  final pulumi.Input<String> qType;

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
      action: (map['action'] as String).input(),
      blockOverrideDnsType: (map['blockOverrideDnsType'] as String).input(),
      blockOverrideDomain: (map['blockOverrideDomain'] as String).input(),
      blockOverrideTtl: (map['blockOverrideTtl'] as int).input(),
      blockResponse: (map['blockResponse'] as String).input(),
      confidenceThreshold: (map['confidenceThreshold'] as String).input(),
      creationTime: (map['creationTime'] as String).input(),
      creatorRequestId: (map['creatorRequestId'] as String).input(),
      dnsThreatProtection: (map['dnsThreatProtection'] as String).input(),
      firewallDomainListId: (map['firewallDomainListId'] as String).input(),
      firewallDomainRedirectionAction: (map['firewallDomainRedirectionAction'] as String).input(),
      firewallRuleGroupId: (map['firewallRuleGroupId'] as String).input(),
      firewallThreatProtectionId: (map['firewallThreatProtectionId'] as String).input(),
      modificationTime: (map['modificationTime'] as String).input(),
      name: (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
      qType: (map['qType'] as String).input(),
    );
  }
}

