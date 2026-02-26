import 'package:pulumi/pulumi.dart';
import 'rule_args.dart';

/// Creates a new GatewaySecurityPolicy in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Rule8 extends CustomResource {
  /// Optional. CEL expression for matching on L7/application level criteria.
  late final Output<String> applicationMatcher;

  /// Profile which tells what the primitive action should be.
  late final Output<String> basicProfile;

  /// Time when the rule was created.
  late final Output<String> createTime;

  /// Optional. Free-text description of the resource.
  late final Output<String> description;

  /// Whether the rule is enforced.
  late final Output<bool> enabled;
  late final Output<String> gatewaySecurityPolicyId;

  /// The ID to use for the rule, which will become the final component of the rule's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  late final Output<String?> gatewaySecurityPolicyRuleId;
  late final Output<String> location;

  /// Immutable. Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule} rule should match the pattern: (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  late final Output<String> name;

  /// Priority of the rule. Lower number corresponds to higher precedence.
  late final Output<int> priority;
  late final Output<String> project;

  /// CEL expression for matching on session criteria.
  late final Output<String> sessionMatcher;

  /// Optional. Flag to enable TLS inspection of traffic matching on , can only be true if the parent GatewaySecurityPolicy references a TLSInspectionConfig.
  late final Output<bool> tlsInspectionEnabled;

  /// Time when the rule was updated.
  late final Output<String> updateTime;

  Rule8(
    String name, {
    RuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1:Rule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationMatcher = registerOutput<String>('applicationMatcher');
    this.basicProfile = registerOutput<String>('basicProfile');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.enabled = registerOutput<bool>('enabled');
    this.gatewaySecurityPolicyId =
        registerOutput<String>('gatewaySecurityPolicyId');
    this.gatewaySecurityPolicyRuleId =
        registerOutput<String?>('gatewaySecurityPolicyRuleId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.sessionMatcher = registerOutput<String>('sessionMatcher');
    this.tlsInspectionEnabled = registerOutput<bool>('tlsInspectionEnabled');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
