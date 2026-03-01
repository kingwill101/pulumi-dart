// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_registry_policy_registry_policy_args_doc}
/// The set of arguments for RegistryPolicy.
/// {@endtemplate}
/// {@macro pulumi_ecr_registry_policy_registry_policy_args_doc}
class RegistryPolicyArgs {
  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [RegistryPolicyArgs].
  /// [policy] The policy document. This is a JSON formatted string.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  RegistryPolicyArgs({
    required pulumi.Output<String> policy,
    pulumi.Output<String>? region,
  }) :
      policy = pulumi.Input.asInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
    };
  }

  factory RegistryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RegistryPolicyArgs(
      policy: pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

