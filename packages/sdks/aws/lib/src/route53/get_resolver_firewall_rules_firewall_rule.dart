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
  const GetResolverFirewallRulesFirewallRule({
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
      action: pulumi.Input.fromValue(map['action'] as String),
      blockOverrideDnsType: pulumi.Input.fromValue(map['blockOverrideDnsType'] as String),
      blockOverrideDomain: pulumi.Input.fromValue(map['blockOverrideDomain'] as String),
      blockOverrideTtl: pulumi.Input.fromValue(map['blockOverrideTtl'] as int),
      blockResponse: pulumi.Input.fromValue(map['blockResponse'] as String),
      confidenceThreshold: pulumi.Input.fromValue(map['confidenceThreshold'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      creatorRequestId: pulumi.Input.fromValue(map['creatorRequestId'] as String),
      dnsThreatProtection: pulumi.Input.fromValue(map['dnsThreatProtection'] as String),
      firewallDomainListId: pulumi.Input.fromValue(map['firewallDomainListId'] as String),
      firewallDomainRedirectionAction: pulumi.Input.fromValue(map['firewallDomainRedirectionAction'] as String),
      firewallRuleGroupId: pulumi.Input.fromValue(map['firewallRuleGroupId'] as String),
      firewallThreatProtectionId: pulumi.Input.fromValue(map['firewallThreatProtectionId'] as String),
      modificationTime: pulumi.Input.fromValue(map['modificationTime'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      qType: pulumi.Input.fromValue(map['qType'] as String),
    );
  }
}
