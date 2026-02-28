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
    required String identity,
    String? name,
    required String policy,
    String? region,
  })  : identity = pulumi.Input.asInput<String>(identity),
        name = pulumi.Input.asOptionalInput<String>(name),
        policy = pulumi.Input.asInput<String>(policy),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identity'] = identity;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory IdentityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return IdentityPolicyArgs(
      identity: map['identity'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policy: map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
