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
  RegistryPolicyArgs({required this.policy, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policy': policy, 'region': ?region};
  }

  factory RegistryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RegistryPolicyArgs(
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
