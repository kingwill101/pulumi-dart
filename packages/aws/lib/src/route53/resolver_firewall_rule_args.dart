// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_resolver_firewall_rule_resolver_firewall_rule_args_doc}
/// The set of arguments for ResolverFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_route53_resolver_firewall_rule_resolver_firewall_rule_args_doc}
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

  /// Creates a new [ResolverFirewallRuleArgs].
  /// [action] The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule. Valid values: `ALLOW`, `BLOCK`, `ALERT`. Note: `ALLOW` is not valid for DNS Firewall Advanced rules.
  /// [blockOverrideDnsType] The DNS record's type. This determines the format of the record value that you provided in BlockOverrideDomain. Value values: `CNAME`.
  /// [blockOverrideDomain] The custom DNS record to send back in response to the query.
  /// [blockOverrideTtl] The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Minimum value of 0. Maximum value of 604800.
  /// [blockResponse] The way that you want DNS Firewall to block the request. Valid values: `NODATA`, `NXDOMAIN`, `OVERRIDE`.
  /// [confidenceThreshold] The confidence threshold for DNS Firewall Advanced rules. You must provide this value when creating a DNS Firewall Advanced rule. Valid values: `LOW`, `MEDIUM`, `HIGH`. Conflicts with `firewall_domain_list_id`.
  /// [dnsThreatProtection] The type of DNS Firewall Advanced rule. You must provide this value when creating a DNS Firewall Advanced rule. Valid values: `DGA`, `DNS_TUNNELING`. Conflicts with `firewall_domain_list_id`.
  /// [firewallDomainListId] The ID of the domain list that you want to use in the rule. Required for standard rules. Conflicts with `dns_threat_protection` and `confidence_threshold`.
  /// [firewallDomainRedirectionAction] Evaluate DNS redirection in the DNS redirection chain, such as CNAME, DNAME, ot ALIAS. Valid values are `INSPECT_REDIRECTION_DOMAIN` and `TRUST_REDIRECTION_DOMAIN`. Default value is `INSPECT_REDIRECTION_DOMAIN`.
  /// [firewallRuleGroupId] The unique identifier of the firewall rule group where you want to create the rule.
  /// [name] A name that lets you identify the rule, to manage and use it.
  /// [priority] The setting that determines the processing order of the rule in the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.
  /// [qType] The query type you want the rule to evaluate. Additional details can be found [here](https://en.wikipedia.org/wiki/List_of_DNS_record_types)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ResolverFirewallRuleArgs({
    required String action,
    String? blockOverrideDnsType,
    String? blockOverrideDomain,
    int? blockOverrideTtl,
    String? blockResponse,
    String? confidenceThreshold,
    String? dnsThreatProtection,
    String? firewallDomainListId,
    String? firewallDomainRedirectionAction,
    required String firewallRuleGroupId,
    String? name,
    required int priority,
    String? qType,
    String? region,
  }) : action = pulumi.Input.asInput<String>(action),
       blockOverrideDnsType = pulumi.Input.asOptionalInput<String>(
         blockOverrideDnsType,
       ),
       blockOverrideDomain = pulumi.Input.asOptionalInput<String>(
         blockOverrideDomain,
       ),
       blockOverrideTtl = pulumi.Input.asOptionalInput<int>(blockOverrideTtl),
       blockResponse = pulumi.Input.asOptionalInput<String>(blockResponse),
       confidenceThreshold = pulumi.Input.asOptionalInput<String>(
         confidenceThreshold,
       ),
       dnsThreatProtection = pulumi.Input.asOptionalInput<String>(
         dnsThreatProtection,
       ),
       firewallDomainListId = pulumi.Input.asOptionalInput<String>(
         firewallDomainListId,
       ),
       firewallDomainRedirectionAction = pulumi.Input.asOptionalInput<String>(
         firewallDomainRedirectionAction,
       ),
       firewallRuleGroupId = pulumi.Input.asInput<String>(firewallRuleGroupId),
       name = pulumi.Input.asOptionalInput<String>(name),
       priority = pulumi.Input.asInput<int>(priority),
       qType = pulumi.Input.asOptionalInput<String>(qType),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'blockOverrideDnsType': ?blockOverrideDnsType,
      'blockOverrideDomain': ?blockOverrideDomain,
      'blockOverrideTtl': ?blockOverrideTtl,
      'blockResponse': ?blockResponse,
      'confidenceThreshold': ?confidenceThreshold,
      'dnsThreatProtection': ?dnsThreatProtection,
      'firewallDomainListId': ?firewallDomainListId,
      'firewallDomainRedirectionAction': ?firewallDomainRedirectionAction,
      'firewallRuleGroupId': firewallRuleGroupId,
      'name': ?name,
      'priority': priority,
      'qType': ?qType,
      'region': ?region,
    };
  }

  factory ResolverFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return ResolverFirewallRuleArgs(
      action: map['action'] as String,
      blockOverrideDnsType: map['blockOverrideDnsType'] == null
          ? null
          : map['blockOverrideDnsType'] as String,
      blockOverrideDomain: map['blockOverrideDomain'] == null
          ? null
          : map['blockOverrideDomain'] as String,
      blockOverrideTtl: map['blockOverrideTtl'] == null
          ? null
          : map['blockOverrideTtl'] as int,
      blockResponse: map['blockResponse'] == null
          ? null
          : map['blockResponse'] as String,
      confidenceThreshold: map['confidenceThreshold'] == null
          ? null
          : map['confidenceThreshold'] as String,
      dnsThreatProtection: map['dnsThreatProtection'] == null
          ? null
          : map['dnsThreatProtection'] as String,
      firewallDomainListId: map['firewallDomainListId'] == null
          ? null
          : map['firewallDomainListId'] as String,
      firewallDomainRedirectionAction:
          map['firewallDomainRedirectionAction'] == null
          ? null
          : map['firewallDomainRedirectionAction'] as String,
      firewallRuleGroupId: map['firewallRuleGroupId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] as int,
      qType: map['qType'] == null ? null : map['qType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
