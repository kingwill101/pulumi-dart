// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverFirewallRule resources.
class ResolverFirewallRuleState {
  /// The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule. Valid values: `ALLOW`, `BLOCK`, `ALERT`. Note: `ALLOW` is not valid for DNS Firewall Advanced rules.
  final pulumi.Input<String>? action;
  /// The DNS record's type. This determines the format of the record value that you provided in BlockOverrideDomain. Value values: `CNAME`.
  final pulumi.Input<String>? blockOverrideDnsType;
  /// The custom DNS record to send back in response to the query.
  final pulumi.Input<String>? blockOverrideDomain;
  /// The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Minimum value of 0. Maximum value of 604800.
  final pulumi.Input<int>? blockOverrideTtl;
  /// The way that you want DNS Firewall to block the request. Valid values: `NODATA`, `NXDOMAIN`, `OVERRIDE`.
  final pulumi.Input<String>? blockResponse;
  /// The confidence threshold for DNS Firewall Advanced rules. You must provide this value when creating a DNS Firewall Advanced rule. Valid values: `LOW`, `MEDIUM`, `HIGH`. Conflicts with `firewallDomainListId`.
  final pulumi.Input<String>? confidenceThreshold;
  /// The type of DNS Firewall Advanced rule. You must provide this value when creating a DNS Firewall Advanced rule. Valid values: `DGA`, `DICTIONARY_DGA`, `DNS_TUNNELING`. Conflicts with `firewallDomainListId`.
  final pulumi.Input<String>? dnsThreatProtection;
  /// The ID of the domain list that you want to use in the rule. Required for standard rules. Conflicts with `dnsThreatProtection` and `confidenceThreshold`.
  final pulumi.Input<String>? firewallDomainListId;
  /// Evaluate DNS redirection in the DNS redirection chain, such as CNAME, DNAME, ot ALIAS. Valid values are `INSPECT_REDIRECTION_DOMAIN` and `TRUST_REDIRECTION_DOMAIN`. Default value is `INSPECT_REDIRECTION_DOMAIN`.
  final pulumi.Input<String>? firewallDomainRedirectionAction;
  /// The unique identifier of the firewall rule group where you want to create the rule.
  final pulumi.Input<String>? firewallRuleGroupId;
  /// The ID of the DNS Firewall Advanced rule. Only set for DNS Firewall Advanced rules.
  final pulumi.Input<String>? firewallThreatProtectionId;
  /// A name that lets you identify the rule, to manage and use it.
  final pulumi.Input<String>? name;
  /// The setting that determines the processing order of the rule in the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.
  final pulumi.Input<int>? priority;
  /// The query type you want the rule to evaluate. Additional details can be found [here](https://en.wikipedia.org/wiki/List_of_DNS_record_types)
  final pulumi.Input<String>? qType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ResolverFirewallRuleState].
  /// [action] The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule. Valid values: `ALLOW`, `BLOCK`, `ALERT`. Note: `ALLOW` is not valid for DNS Firewall Advanced rules.
  /// [blockOverrideDnsType] The DNS record's type. This determines the format of the record value that you provided in BlockOverrideDomain. Value values: `CNAME`.
  /// [blockOverrideDomain] The custom DNS record to send back in response to the query.
  /// [blockOverrideTtl] The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Minimum value of 0. Maximum value of 604800.
  /// [blockResponse] The way that you want DNS Firewall to block the request. Valid values: `NODATA`, `NXDOMAIN`, `OVERRIDE`.
  /// [confidenceThreshold] The confidence threshold for DNS Firewall Advanced rules. You must provide this value when creating a DNS Firewall Advanced rule. Valid values: `LOW`, `MEDIUM`, `HIGH`. Conflicts with `firewallDomainListId`.
  /// [dnsThreatProtection] The type of DNS Firewall Advanced rule. You must provide this value when creating a DNS Firewall Advanced rule. Valid values: `DGA`, `DICTIONARY_DGA`, `DNS_TUNNELING`. Conflicts with `firewallDomainListId`.
  /// [firewallDomainListId] The ID of the domain list that you want to use in the rule. Required for standard rules. Conflicts with `dnsThreatProtection` and `confidenceThreshold`.
  /// [firewallDomainRedirectionAction] Evaluate DNS redirection in the DNS redirection chain, such as CNAME, DNAME, ot ALIAS. Valid values are `INSPECT_REDIRECTION_DOMAIN` and `TRUST_REDIRECTION_DOMAIN`. Default value is `INSPECT_REDIRECTION_DOMAIN`.
  /// [firewallRuleGroupId] The unique identifier of the firewall rule group where you want to create the rule.
  /// [firewallThreatProtectionId] The ID of the DNS Firewall Advanced rule. Only set for DNS Firewall Advanced rules.
  /// [name] A name that lets you identify the rule, to manage and use it.
  /// [priority] The setting that determines the processing order of the rule in the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.
  /// [qType] The query type you want the rule to evaluate. Additional details can be found [here](https://en.wikipedia.org/wiki/List_of_DNS_record_types)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ResolverFirewallRuleState({
    this.action,
    this.blockOverrideDnsType,
    this.blockOverrideDomain,
    this.blockOverrideTtl,
    this.blockResponse,
    this.confidenceThreshold,
    this.dnsThreatProtection,
    this.firewallDomainListId,
    this.firewallDomainRedirectionAction,
    this.firewallRuleGroupId,
    this.firewallThreatProtectionId,
    this.name,
    this.priority,
    this.qType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'blockOverrideDnsType': ?blockOverrideDnsType,
      'blockOverrideDomain': ?blockOverrideDomain,
      'blockOverrideTtl': ?blockOverrideTtl,
      'blockResponse': ?blockResponse,
      'confidenceThreshold': ?confidenceThreshold,
      'dnsThreatProtection': ?dnsThreatProtection,
      'firewallDomainListId': ?firewallDomainListId,
      'firewallDomainRedirectionAction': ?firewallDomainRedirectionAction,
      'firewallRuleGroupId': ?firewallRuleGroupId,
      'firewallThreatProtectionId': ?firewallThreatProtectionId,
      'name': ?name,
      'priority': ?priority,
      'qType': ?qType,
      'region': ?region,
    };
  }

  factory ResolverFirewallRuleState.fromMap(Map<String, dynamic> map) {
    return ResolverFirewallRuleState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blockOverrideDnsType: (() { final guardedValue = map['blockOverrideDnsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blockOverrideDomain: (() { final guardedValue = map['blockOverrideDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blockOverrideTtl: (() { final guardedValue = map['blockOverrideTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      blockResponse: (() { final guardedValue = map['blockResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      confidenceThreshold: (() { final guardedValue = map['confidenceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsThreatProtection: (() { final guardedValue = map['dnsThreatProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallDomainListId: (() { final guardedValue = map['firewallDomainListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallDomainRedirectionAction: (() { final guardedValue = map['firewallDomainRedirectionAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallRuleGroupId: (() { final guardedValue = map['firewallRuleGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallThreatProtectionId: (() { final guardedValue = map['firewallThreatProtectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      qType: (() { final guardedValue = map['qType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
