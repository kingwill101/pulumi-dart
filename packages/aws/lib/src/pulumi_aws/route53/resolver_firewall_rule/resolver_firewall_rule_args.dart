// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ResolverFirewallRule.
class ResolverFirewallRuleArgs {
  /// The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule. Valid values: `ALLOW`, `BLOCK`, `ALERT`. Note: `ALLOW` is not valid for DNS Firewall Advanced rules.
  final pulumi.Input<String> action;

  /// The DNS record's type. This determines the format of the record value that you provided in BlockOverrideDomain. Value values: `CNAME`.
  final pulumi.Input<String>? blockOverrideDnsType;

  /// The custom DNS record to send back in response to the query.
  final pulumi.Input<String>? blockOverrideDomain;

  /// The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Minimum value of 0. Maximum value of 604800.
  final pulumi.Input<int>? blockOverrideTtl;

  /// The way that you want DNS Firewall to block the request. Valid values: `NODATA`, `NXDOMAIN`, `OVERRIDE`.
  final pulumi.Input<String>? blockResponse;

  /// The confidence threshold for DNS Firewall Advanced rules. You must provide this value when creating a DNS Firewall Advanced rule. Valid values: `LOW`, `MEDIUM`, `HIGH`. Conflicts with `firewall_domain_list_id`.
  final pulumi.Input<String>? confidenceThreshold;

  /// The type of DNS Firewall Advanced rule. You must provide this value when creating a DNS Firewall Advanced rule. Valid values: `DGA`, `DNS_TUNNELING`. Conflicts with `firewall_domain_list_id`.
  final pulumi.Input<String>? dnsThreatProtection;

  /// The ID of the domain list that you want to use in the rule. Required for standard rules. Conflicts with `dns_threat_protection` and `confidence_threshold`.
  final pulumi.Input<String>? firewallDomainListId;

  /// Evaluate DNS redirection in the DNS redirection chain, such as CNAME, DNAME, ot ALIAS. Valid values are `INSPECT_REDIRECTION_DOMAIN` and `TRUST_REDIRECTION_DOMAIN`. Default value is `INSPECT_REDIRECTION_DOMAIN`.
  final pulumi.Input<String>? firewallDomainRedirectionAction;

  /// The unique identifier of the firewall rule group where you want to create the rule.
  final pulumi.Input<String> firewallRuleGroupId;

  /// A name that lets you identify the rule, to manage and use it.
  final pulumi.Input<String>? name;

  /// The setting that determines the processing order of the rule in the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.
  final pulumi.Input<int> priority;

  /// The query type you want the rule to evaluate. Additional details can be found [here](https://en.wikipedia.org/wiki/List_of_DNS_record_types)
  final pulumi.Input<String>? qType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ResolverFirewallRuleArgs({
    required this.action,
    this.blockOverrideDnsType,
    this.blockOverrideDomain,
    this.blockOverrideTtl,
    this.blockResponse,
    this.confidenceThreshold,
    this.dnsThreatProtection,
    this.firewallDomainListId,
    this.firewallDomainRedirectionAction,
    required this.firewallRuleGroupId,
    this.name,
    required this.priority,
    this.qType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final blockOverrideDnsTypeValue = blockOverrideDnsType;
    if (blockOverrideDnsTypeValue != null) {
      map['blockOverrideDnsType'] = blockOverrideDnsTypeValue;
    }
    final blockOverrideDomainValue = blockOverrideDomain;
    if (blockOverrideDomainValue != null) {
      map['blockOverrideDomain'] = blockOverrideDomainValue;
    }
    final blockOverrideTtlValue = blockOverrideTtl;
    if (blockOverrideTtlValue != null) {
      map['blockOverrideTtl'] = blockOverrideTtlValue;
    }
    final blockResponseValue = blockResponse;
    if (blockResponseValue != null) {
      map['blockResponse'] = blockResponseValue;
    }
    final confidenceThresholdValue = confidenceThreshold;
    if (confidenceThresholdValue != null) {
      map['confidenceThreshold'] = confidenceThresholdValue;
    }
    final dnsThreatProtectionValue = dnsThreatProtection;
    if (dnsThreatProtectionValue != null) {
      map['dnsThreatProtection'] = dnsThreatProtectionValue;
    }
    final firewallDomainListIdValue = firewallDomainListId;
    if (firewallDomainListIdValue != null) {
      map['firewallDomainListId'] = firewallDomainListIdValue;
    }
    final firewallDomainRedirectionActionValue =
        firewallDomainRedirectionAction;
    if (firewallDomainRedirectionActionValue != null) {
      map['firewallDomainRedirectionAction'] =
          firewallDomainRedirectionActionValue;
    }
    map['firewallRuleGroupId'] = firewallRuleGroupId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['priority'] = priority;
    final qTypeValue = qType;
    if (qTypeValue != null) {
      map['qType'] = qTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ResolverFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return ResolverFirewallRuleArgs(
      action: pulumi.Input.asInput<String>(map['action']),
      blockOverrideDnsType:
          pulumi.Input.asOptionalInput<String>(map['blockOverrideDnsType']),
      blockOverrideDomain:
          pulumi.Input.asOptionalInput<String>(map['blockOverrideDomain']),
      blockOverrideTtl:
          pulumi.Input.asOptionalInput<int>(map['blockOverrideTtl']),
      blockResponse: pulumi.Input.asOptionalInput<String>(map['blockResponse']),
      confidenceThreshold:
          pulumi.Input.asOptionalInput<String>(map['confidenceThreshold']),
      dnsThreatProtection:
          pulumi.Input.asOptionalInput<String>(map['dnsThreatProtection']),
      firewallDomainListId:
          pulumi.Input.asOptionalInput<String>(map['firewallDomainListId']),
      firewallDomainRedirectionAction: pulumi.Input.asOptionalInput<String>(
          map['firewallDomainRedirectionAction']),
      firewallRuleGroupId:
          pulumi.Input.asInput<String>(map['firewallRuleGroupId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      priority: pulumi.Input.asInput<int>(map['priority']),
      qType: pulumi.Input.asOptionalInput<String>(map['qType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
