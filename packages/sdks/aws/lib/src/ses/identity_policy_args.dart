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
    required pulumi.Output<String> identity,
    pulumi.Output<String>? name,
    required pulumi.Output<String> policy,
    pulumi.Output<String>? region,
  }) :
      identity = pulumi.Input.asInput<String>(identity),
      name = pulumi.Input.asOptionalInput<String>(name),
      policy = pulumi.Input.asInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      identity: pulumi.Output.create<String>(map['identity'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

