import 'package:pulumi/pulumi.dart';
import 'authorization_policy_args.dart';
import 'rule_response6.dart';

/// Creates a new AuthorizationPolicy in a given project and location.
class AuthorizationPolicy extends CustomResource {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  late final Output<String> action;

  /// Required. Short name of the AuthorizationPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  late final Output<String> authorizationPolicyId;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. Free-text description of the resource.
  late final Output<String> description;

  /// Optional. Set of label tags associated with the AuthorizationPolicy resource.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  late final Output<List<RuleResponse6>> rules;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  AuthorizationPolicy(
    String name, {
    AuthorizationPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1:AuthorizationPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = Output.createUnknown<String>();
    this.authorizationPolicyId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.rules = Output.createUnknown<List<RuleResponse6>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
