import 'package:pulumi/pulumi.dart';
import '../security_policy_rule_header_action/security_policy_rule_header_action.dart';
import '../security_policy_rule_match/security_policy_rule_match.dart';
import '../security_policy_rule_preconfigured_waf_config/security_policy_rule_preconfigured_waf_config.dart';
import '../security_policy_rule_rate_limit_options/security_policy_rule_rate_limit_options.dart';
import '../security_policy_rule_redirect_options/security_policy_rule_redirect_options.dart';
import 'security_policy_rule_args.dart';

/// A rule for the SecurityPolicy.
///
///
/// To get more information about SecurityPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/addRule)
/// * How-to Guides
/// * [Creating global security policy rules](https://cloud.google.com/armor/docs/configure-security-policies)
///
/// ## Example Usage
///
/// ### Security Policy Rule Basic
///
///
///
/// ### Security Policy Rule Default Rule
///
///
///
/// ### Security Policy Rule Multiple Rules
///
///
///
///
/// ## Import
///
/// SecurityPolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/securityPolicies/{{security_policy}}/priority/{{priority}}`
///
/// * `{{project}}/{{security_policy}}/{{priority}}`
///
/// * `{{security_policy}}/{{priority}}`
///
/// When using the `pulumi import` command, SecurityPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/securityPolicyRule:SecurityPolicyRule default projects/{{project}}/global/securityPolicies/{{security_policy}}/priority/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/securityPolicyRule:SecurityPolicyRule default {{project}}/{{security_policy}}/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/securityPolicyRule:SecurityPolicyRule default {{security_policy}}/{{priority}}
/// ```
class SecurityPolicyRule2 extends CustomResource {
  /// The Action to perform when the rule is matched. The following are the valid actions:
  /// * allow: allow access to target.
  /// * deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.
  /// * rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.
  /// * redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// * throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  late final Output<String> action;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// Optional, additional actions that are performed on headers. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// Structure is documented below.
  late final Output<SecurityPolicyRuleHeaderAction?> headerAction;

  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final Output<SecurityPolicyRuleMatch?> match;

  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// Structure is documented below.
  late final Output<SecurityPolicyRulePreconfiguredWafConfig?>
      preconfiguredWafConfig;

  /// If set to true, the specified action is not enforced.
  late final Output<bool?> preview;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  late final Output<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  /// Structure is documented below.
  late final Output<SecurityPolicyRuleRateLimitOptions?> rateLimitOptions;

  /// Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// Structure is documented below.
  late final Output<SecurityPolicyRuleRedirectOptions?> redirectOptions;

  /// The name of the security policy this rule belongs to.
  late final Output<String> securityPolicy;

  SecurityPolicyRule2(
    String name, {
    SecurityPolicyRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/securityPolicyRule:SecurityPolicyRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.description = registerOutput<String?>('description');
    this.headerAction =
        registerOutput<SecurityPolicyRuleHeaderAction?>('headerAction');
    this.match = registerOutput<SecurityPolicyRuleMatch?>('match');
    this.preconfiguredWafConfig =
        registerOutput<SecurityPolicyRulePreconfiguredWafConfig?>(
            'preconfiguredWafConfig');
    this.preview = registerOutput<bool?>('preview');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.rateLimitOptions =
        registerOutput<SecurityPolicyRuleRateLimitOptions?>('rateLimitOptions');
    this.redirectOptions =
        registerOutput<SecurityPolicyRuleRedirectOptions?>('redirectOptions');
    this.securityPolicy = registerOutput<String>('securityPolicy');
  }
}
