// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_auth_policy_auth_policy_args_doc}
/// The set of arguments for AuthPolicy.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_auth_policy_auth_policy_args_doc}
class AuthPolicyArgs {
  /// The auth policy. The policy string in JSON must not contain newlines or blank lines.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  final pulumi.Input<String> resourceIdentifier;
  /// The state of the auth policy. The auth policy is only active when the auth type is set to `AWS_IAM`. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the Auth type is `NONE`, then, any auth policy you provide will remain inactive.
  final pulumi.Input<String>? state;

  /// Creates a new [AuthPolicyArgs].
  /// [policy] The auth policy. The policy string in JSON must not contain newlines or blank lines.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceIdentifier] The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  /// [state] The state of the auth policy. The auth policy is only active when the auth type is set to `AWS_IAM`. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the Auth type is `NONE`, then, any auth policy you provide will remain inactive.
  AuthPolicyArgs({
    required pulumi.Output<String> policy,
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourceIdentifier,
    pulumi.Output<String>? state,
  }) :
      policy = pulumi.Input.asInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceIdentifier = pulumi.Input.asInput<String>(resourceIdentifier),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
      'resourceIdentifier': resourceIdentifier,
      'state': ?state,
    };
  }

  factory AuthPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AuthPolicyArgs(
      policy: pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceIdentifier: pulumi.Output.create<String>(map['resourceIdentifier'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

