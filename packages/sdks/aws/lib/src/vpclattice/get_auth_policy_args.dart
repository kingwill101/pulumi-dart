// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_get_auth_policy_get_auth_policy_args_doc}
/// Arguments for getAuthPolicy.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_get_auth_policy_get_auth_policy_args_doc}
class GetAuthPolicyArgs {
  /// Auth policy. The policy string in JSON must not contain newlines or blank lines.
  final pulumi.Input<String?>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID or ARN of the service network or service for which the policy is created.
  final pulumi.Input<String> resourceIdentifier;
  /// State of the auth policy. The auth policy is only active when the auth type is set to AWS_IAM. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the Auth type is NONE, then, any auth policy you provide will remain inactive.
  final pulumi.Input<String?>? state;

  /// Creates a new [GetAuthPolicyArgs].
  /// [policy] Auth policy. The policy string in JSON must not contain newlines or blank lines.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceIdentifier] ID or ARN of the service network or service for which the policy is created.
  /// [state] State of the auth policy. The auth policy is only active when the auth type is set to AWS_IAM. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the Auth type is NONE, then, any auth policy you provide will remain inactive.
  const GetAuthPolicyArgs({
    this.policy,
    this.region,
    required this.resourceIdentifier,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'resourceIdentifier': resourceIdentifier,
      'state': ?state,
    };
  }

  factory GetAuthPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthPolicyArgs(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceIdentifier: pulumi.Input.fromValue(map['resourceIdentifier'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
