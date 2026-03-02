// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_identity_policy_identity_policy_args_doc}
/// The set of arguments for IdentityPolicy.
/// {@endtemplate}
/// {@macro pulumi_ses_identity_policy_identity_policy_args_doc}
class IdentityPolicyArgs {
  /// Name or Amazon Resource Name (ARN) of the SES Identity.
  final pulumi.Input<String> identity;
  /// Name of the policy.
  final pulumi.Input<String>? name;
  /// JSON string of the policy.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [IdentityPolicyArgs].
  /// [identity] Name or Amazon Resource Name (ARN) of the SES Identity.
  /// [name] Name of the policy.
  /// [policy] JSON string of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  IdentityPolicyArgs({
    required this.identity,
    this.name,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'name': ?name,
      'policy': policy,
      'region': ?region,
    };
  }

  factory IdentityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return IdentityPolicyArgs(
      identity: (map['identity'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      policy: (map['policy'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

