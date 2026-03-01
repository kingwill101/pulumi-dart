import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';

/// Creates a new GatewaySecurityPolicy in a given project and location.
/// Auto-naming is currently not supported for this resource.
class RuleNetworksecurityV1 extends pulumi.CustomResource {
  /// Optional. CEL expression for matching on L7/application level criteria.
  late final pulumi.Output<String> applicationMatcher;

  /// Profile which tells what the primitive action should be.
  late final pulumi.Output<String> basicProfile;

  /// Time when the rule was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Free-text description of the resource.
  late final pulumi.Output<String> description;

  /// Whether the rule is enforced.
  late final pulumi.Output<bool> enabled;
  late final pulumi.Output<String> gatewaySecurityPolicyId;

  /// The ID to use for the rule, which will become the final component of the rule's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  late final pulumi.Output<String?> gatewaySecurityPolicyRuleId;
  late final pulumi.Output<String> location;

  /// Immutable. Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule} rule should match the pattern: (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  late final pulumi.Output<String> name;

  /// Priority of the rule. Lower number corresponds to higher precedence.
  late final pulumi.Output<int> priority;
  late final pulumi.Output<String> project;

  /// CEL expression for matching on session criteria.
  late final pulumi.Output<String> sessionMatcher;

  /// Optional. Flag to enable TLS inspection of traffic matching on , can only be true if the parent GatewaySecurityPolicy references a TLSInspectionConfig.
  late final pulumi.Output<bool> tlsInspectionEnabled;

  /// Time when the rule was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [RuleNetworksecurityV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuleNetworksecurityV1]. {@macro pulumi_networksecurity_v1_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuleNetworksecurityV1(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networksecurity/v1:Rule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.applicationMatcher = registerOutput<String>('applicationMatcher');
    this.basicProfile = registerOutput<String>('basicProfile');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.enabled = registerOutput<bool>('enabled');
    this.gatewaySecurityPolicyId = registerOutput<String>(
      'gatewaySecurityPolicyId',
    );
    this.gatewaySecurityPolicyRuleId = registerOutput<String?>(
      'gatewaySecurityPolicyRuleId',
    );
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.sessionMatcher = registerOutput<String>('sessionMatcher');
    this.tlsInspectionEnabled = registerOutput<bool>('tlsInspectionEnabled');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
