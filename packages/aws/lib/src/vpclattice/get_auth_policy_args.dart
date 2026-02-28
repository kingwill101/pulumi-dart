// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_get_auth_policy_get_auth_policy_args_doc}
/// Arguments for getAuthPolicy.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_get_auth_policy_get_auth_policy_args_doc}
class GetAuthPolicyArgs {
  /// The auth policy. The policy string in JSON must not contain newlines or blank lines.
  final pulumi.Input<String>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  final pulumi.Input<String> resourceIdentifier;

  /// The state of the auth policy. The auth policy is only active when the auth type is set to AWS_IAM. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the Auth type is NONE, then, any auth policy you provide will remain inactive.
  final pulumi.Input<String>? state;

  /// Creates a new [GetAuthPolicyArgs].
  /// [policy] The auth policy. The policy string in JSON must not contain newlines or blank lines.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceIdentifier] The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  /// [state] The state of the auth policy. The auth policy is only active when the auth type is set to AWS_IAM. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the Auth type is NONE, then, any auth policy you provide will remain inactive.
  GetAuthPolicyArgs({
    String? policy,
    String? region,
    required String resourceIdentifier,
    String? state,
  })  : policy = pulumi.Input.asOptionalInput<String>(policy),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceIdentifier = pulumi.Input.asInput<String>(resourceIdentifier),
        state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceIdentifier'] = resourceIdentifier;
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory GetAuthPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthPolicyArgs(
      policy: map['policy'] == null ? null : map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceIdentifier: map['resourceIdentifier'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
