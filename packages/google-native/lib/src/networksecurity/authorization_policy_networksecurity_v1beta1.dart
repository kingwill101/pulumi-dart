import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_networksecurity_v1beta1_args.dart';
import 'rule_response_networksecurity_v1beta1.dart';

/// Creates a new AuthorizationPolicy in a given project and location.
class AuthorizationPolicyNetworksecurityV1beta1 extends pulumi.CustomResource {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  late final pulumi.Output<String> action;

  /// Required. Short name of the AuthorizationPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  late final pulumi.Output<String> authorizationPolicyId;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Free-text description of the resource.
  late final pulumi.Output<String> description;

  /// Optional. Set of label tags associated with the AuthorizationPolicy resource.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  late final pulumi.Output<List<RuleResponseNetworksecurityV1beta1>> rules;

  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AuthorizationPolicyNetworksecurityV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizationPolicyNetworksecurityV1beta1]. {@macro pulumi_networksecurity_v1beta1_authorization_policy_networksecurity_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizationPolicyNetworksecurityV1beta1(
    String name, {
    AuthorizationPolicyNetworksecurityV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:AuthorizationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.authorizationPolicyId =
        registerOutput<String>('authorizationPolicyId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rules =
        registerOutput<List<RuleResponseNetworksecurityV1beta1>>('rules');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
