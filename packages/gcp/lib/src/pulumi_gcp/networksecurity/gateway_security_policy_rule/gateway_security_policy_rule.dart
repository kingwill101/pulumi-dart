import 'package:pulumi/pulumi.dart';
import 'gateway_security_policy_rule_args.dart';

/// The GatewaySecurityPolicyRule resource is in a nested collection within a GatewaySecurityPolicy and represents
/// a traffic matching condition and associated action to perform.
///
///
/// To get more information about GatewaySecurityPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/secure-web-proxy/docs/reference/network-security/rest/v1/projects.locations.gatewaySecurityPolicies.rules)
///
/// ## Example Usage
///
/// ### Network Security Gateway Security Policy Rules Basic
///
///
///
/// ### Network Security Gateway Security Policy Rules Advanced
///
///
///
///
/// ## Import
///
/// GatewaySecurityPolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/gatewaySecurityPolicies/{{gateway_security_policy}}/rules/{{name}}`
///
/// * `{{project}}/{{location}}/{{gateway_security_policy}}/{{name}}`
///
/// * `{{location}}/{{gateway_security_policy}}/{{name}}`
///
/// When using the `pulumi import` command, GatewaySecurityPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule default projects/{{project}}/locations/{{location}}/gatewaySecurityPolicies/{{gateway_security_policy}}/rules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule default {{project}}/{{location}}/{{gateway_security_policy}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule default {{location}}/{{gateway_security_policy}}/{{name}}
/// ```
class GatewaySecurityPolicyRule extends CustomResource {
  /// CEL expression for matching on L7/application level criteria.
  late final Output<String?> applicationMatcher;

  /// Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY.
  /// Possible values are: `BASIC_PROFILE_UNSPECIFIED`, `ALLOW`, `DENY`.
  late final Output<String> basicProfile;

  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final Output<String> createTime;

  /// Free-text description of the resource.
  late final Output<String?> description;

  /// Whether the rule is enforced.
  late final Output<bool> enabled;

  /// The name of the gatewat security policy this rule belongs to.
  late final Output<String> gatewaySecurityPolicy;

  /// The location of the gateway security policy.
  late final Output<String> location;

  /// Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// rule should match the pattern: (^a-z?$).
  late final Output<String> name;

  /// Priority of the rule. Lower number corresponds to higher precedence.
  late final Output<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Server-defined URL of this resource.
  late final Output<String> selfLink;

  /// CEL expression for matching on session criteria.
  late final Output<String> sessionMatcher;

  /// Flag to enable TLS inspection of traffic matching on. Can only be true if the
  /// parent GatewaySecurityPolicy references a TLSInspectionConfig.
  late final Output<bool?> tlsInspectionEnabled;

  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  GatewaySecurityPolicyRule(
    String name, {
    GatewaySecurityPolicyRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationMatcher = registerOutput<String?>('applicationMatcher');
    this.basicProfile = registerOutput<String>('basicProfile');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool>('enabled');
    this.gatewaySecurityPolicy =
        registerOutput<String>('gatewaySecurityPolicy');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.sessionMatcher = registerOutput<String>('sessionMatcher');
    this.tlsInspectionEnabled = registerOutput<bool?>('tlsInspectionEnabled');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
