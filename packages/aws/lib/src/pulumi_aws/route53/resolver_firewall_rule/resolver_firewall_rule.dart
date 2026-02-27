import 'package:pulumi/pulumi.dart';
import 'resolver_firewall_rule_args.dart';

/// Provides a Route 53 Resolver DNS Firewall rule resource.
///
/// ## Example Usage
///
/// ### Domain List Rule
///
///
///
/// ### DNS Firewall Advanced Rule
///
///
///
/// ## Import
///
/// DNS Firewall Advanced rule:
///
///
/// Using `pulumi import`, import Route 53 Resolver DNS Firewall rules using the Route 53 Resolver DNS Firewall rule group ID and domain list ID (for standard rules) or threat protection ID (for advanced rules) separated by ':'. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverFirewallRule:ResolverFirewallRule example rslvr-frg-0123456789abcdef:rslvr-fdl-0123456789abcdef
/// ```
class ResolverFirewallRule extends CustomResource {
  /// The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule. Valid values: `ALLOW`, `BLOCK`, `ALERT`. Note: `ALLOW` is not valid for DNS Firewall Advanced rules.
  late final Output<String> action;

  /// The DNS record's type. This determines the format of the record value that you provided in BlockOverrideDomain. Value values: `CNAME`.
  late final Output<String?> blockOverrideDnsType;

  /// The custom DNS record to send back in response to the query.
  late final Output<String?> blockOverrideDomain;

  /// The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Minimum value of 0. Maximum value of 604800.
  late final Output<int?> blockOverrideTtl;

  /// The way that you want DNS Firewall to block the request. Valid values: `NODATA`, `NXDOMAIN`, `OVERRIDE`.
  late final Output<String?> blockResponse;

  /// The confidence threshold for DNS Firewall Advanced rules. You must provide this value when creating a DNS Firewall Advanced rule. Valid values: `LOW`, `MEDIUM`, `HIGH`. Conflicts with `firewall_domain_list_id`.
  late final Output<String?> confidenceThreshold;

  /// The type of DNS Firewall Advanced rule. You must provide this value when creating a DNS Firewall Advanced rule. Valid values: `DGA`, `DNS_TUNNELING`. Conflicts with `firewall_domain_list_id`.
  late final Output<String?> dnsThreatProtection;

  /// The ID of the domain list that you want to use in the rule. Required for standard rules. Conflicts with `dns_threat_protection` and `confidence_threshold`.
  late final Output<String?> firewallDomainListId;

  /// Evaluate DNS redirection in the DNS redirection chain, such as CNAME, DNAME, ot ALIAS. Valid values are `INSPECT_REDIRECTION_DOMAIN` and `TRUST_REDIRECTION_DOMAIN`. Default value is `INSPECT_REDIRECTION_DOMAIN`.
  late final Output<String?> firewallDomainRedirectionAction;

  /// The unique identifier of the firewall rule group where you want to create the rule.
  late final Output<String> firewallRuleGroupId;

  /// The ID of the DNS Firewall Advanced rule. Only set for DNS Firewall Advanced rules.
  late final Output<String> firewallThreatProtectionId;

  /// A name that lets you identify the rule, to manage and use it.
  late final Output<String> name;

  /// The setting that determines the processing order of the rule in the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.
  late final Output<int> priority;

  /// The query type you want the rule to evaluate. Additional details can be found [here](https://en.wikipedia.org/wiki/List_of_DNS_record_types)
  late final Output<String?> qType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ResolverFirewallRule(
    String name, {
    ResolverFirewallRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallRule:ResolverFirewallRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.blockOverrideDnsType = registerOutput<String?>('blockOverrideDnsType');
    this.blockOverrideDomain = registerOutput<String?>('blockOverrideDomain');
    this.blockOverrideTtl = registerOutput<int?>('blockOverrideTtl');
    this.blockResponse = registerOutput<String?>('blockResponse');
    this.confidenceThreshold = registerOutput<String?>('confidenceThreshold');
    this.dnsThreatProtection = registerOutput<String?>('dnsThreatProtection');
    this.firewallDomainListId = registerOutput<String?>('firewallDomainListId');
    this.firewallDomainRedirectionAction =
        registerOutput<String?>('firewallDomainRedirectionAction');
    this.firewallRuleGroupId = registerOutput<String>('firewallRuleGroupId');
    this.firewallThreatProtectionId =
        registerOutput<String>('firewallThreatProtectionId');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.qType = registerOutput<String?>('qType');
    this.region = registerOutput<String>('region');
  }
}
