import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_security_policy_rule_match/region_security_policy_rule_match.dart';
import '../region_security_policy_rule_network_match/region_security_policy_rule_network_match.dart';
import '../region_security_policy_rule_preconfigured_waf_config/region_security_policy_rule_preconfigured_waf_config.dart';
import '../region_security_policy_rule_rate_limit_options/region_security_policy_rule_rate_limit_options.dart';
import 'region_security_policy_rule_args.dart';

/// A rule for the RegionSecurityPolicy.
///
///
/// To get more information about RegionSecurityPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/regionSecurityPolicies/addRule)
/// * How-to Guides
/// * [Creating region security policy rules](https://cloud.google.com/armor/docs/configure-security-policies)
///
/// ## Example Usage
///
/// ### Region Security Policy Rule Basic
///
///
///
/// ### Region Security Policy Rule Multiple Rules
///
///
///
/// ### Region Security Policy Rule Default Rule
///
///
///
/// ### Region Security Policy Rule With Preconfigured Waf Config
///
///
///
/// ### Region Security Policy Rule With Network Match
///
///
///
///
/// ## Import
///
/// RegionSecurityPolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/securityPolicies/{{security_policy}}/priority/{{priority}}`
///
/// * `{{project}}/{{region}}/{{security_policy}}/{{priority}}`
///
/// * `{{region}}/{{security_policy}}/{{priority}}`
///
/// * `{{security_policy}}/{{priority}}`
///
/// When using the `pulumi import` command, RegionSecurityPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicyRule:RegionSecurityPolicyRule default projects/{{project}}/regions/{{region}}/securityPolicies/{{security_policy}}/priority/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicyRule:RegionSecurityPolicyRule default {{project}}/{{region}}/{{security_policy}}/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicyRule:RegionSecurityPolicyRule default {{region}}/{{security_policy}}/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicyRule:RegionSecurityPolicyRule default {{security_policy}}/{{priority}}
/// ```
class RegionSecurityPolicyRuleCompute extends pulumi.CustomResource {
  /// The Action to perform when the rule is matched. The following are the valid actions:
  /// * allow: allow access to target.
  /// * deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.
  /// * rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.
  /// * redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// * throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  late final pulumi.Output<String> action;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;

  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final pulumi.Output<RegionSecurityPolicyRuleMatch?> match;

  /// A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced.
  /// The match criteria for a rule consists of built-in match fields (like 'srcIpRanges') and potentially multiple user-defined match fields ('userDefinedFields').
  /// Field values may be extracted directly from the packet or derived from it (e.g. 'srcRegionCodes'). Some fields may not be present in every packet (e.g. 'srcPorts'). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds.
  /// Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it's not required to be present. For strings specifying '*' is also equivalent to match all.
  /// For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet.
  /// Example:
  /// networkMatch: srcIpRanges: - "192.0.2.0/24" - "198.51.100.0/24" userDefinedFields: - name: "ipv4_fragment_offset" values: - "1-0x1fff"
  /// The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named "ipv4_fragment_offset" with a value between 1 and 0x1fff inclusive
  /// Structure is documented below.
  late final pulumi.Output<RegionSecurityPolicyRuleNetworkMatch?> networkMatch;

  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// Structure is documented below.
  late final pulumi.Output<RegionSecurityPolicyRulePreconfiguredWafConfig?>
      preconfiguredWafConfig;

  /// If set to true, the specified action is not enforced.
  late final pulumi.Output<bool?> preview;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  late final pulumi.Output<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  /// Structure is documented below.
  late final pulumi.Output<RegionSecurityPolicyRuleRateLimitOptions?>
      rateLimitOptions;

  /// The Region in which the created Region Security Policy rule should reside.
  late final pulumi.Output<String> region;

  /// The name of the security policy this rule belongs to.
  late final pulumi.Output<String> securityPolicy;

  RegionSecurityPolicyRuleCompute(
    String name, {
    RegionSecurityPolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionSecurityPolicyRule:RegionSecurityPolicyRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.description = registerOutput<String?>('description');
    this.match = registerOutput<RegionSecurityPolicyRuleMatch?>('match');
    this.networkMatch =
        registerOutput<RegionSecurityPolicyRuleNetworkMatch?>('networkMatch');
    this.preconfiguredWafConfig =
        registerOutput<RegionSecurityPolicyRulePreconfiguredWafConfig?>(
            'preconfiguredWafConfig');
    this.preview = registerOutput<bool?>('preview');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.rateLimitOptions =
        registerOutput<RegionSecurityPolicyRuleRateLimitOptions?>(
            'rateLimitOptions');
    this.region = registerOutput<String>('region');
    this.securityPolicy = registerOutput<String>('securityPolicy');
  }
}
