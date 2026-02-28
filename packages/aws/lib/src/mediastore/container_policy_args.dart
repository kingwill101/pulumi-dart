// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mediastore_container_policy_container_policy_args_doc}
/// The set of arguments for ContainerPolicy.
/// {@endtemplate}
/// {@macro pulumi_mediastore_container_policy_container_policy_args_doc}
class ContainerPolicyArgs {
  /// The name of the container.
  final pulumi.Input<String> containerName;
  /// The contents of the policy.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ContainerPolicyArgs].
  /// [containerName] The name of the container.
  /// [policy] The contents of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ContainerPolicyArgs({
    required String containerName,
    required String policy,
    String? region,
  }) :
      containerName = pulumi.Input.asInput<String>(containerName),
      policy = pulumi.Input.asInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'policy': policy,
      'region': ?region,
    };
  }

  factory ContainerPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ContainerPolicyArgs(
      containerName: map['containerName'] as String,
      policy: map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

