// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAuthPolicy.
class GetAuthPolicyArgs {
  /// The auth policy. The policy string in JSON must not contain newlines or blank lines.
  final Input<String>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  final Input<String> resourceIdentifier;

  /// The state of the auth policy. The auth policy is only active when the auth type is set to AWS_IAM. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the Auth type is NONE, then, any auth policy you provide will remain inactive.
  final Input<String>? state;

  GetAuthPolicyArgs({
    this.policy,
    this.region,
    required this.resourceIdentifier,
    this.state,
  });

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
      policy: Input.asOptionalInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceIdentifier: Input.asInput<String>(map['resourceIdentifier']),
      state: Input.asOptionalInput<String>(map['state']),
    );
  }
}
