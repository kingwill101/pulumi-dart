// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mediastore_container_policy_container_policy_args_doc}
/// The set of arguments for ContainerPolicy.
/// {@endtemplate}
/// {@macro pulumi_mediastore_container_policy_container_policy_args_doc}
class ContainerPolicyArgs {
  /// Name of the container.
  final pulumi.Input<String> containerName;
  /// Contents of the policy. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [ContainerPolicyArgs].
  /// [containerName] Name of the container.
  /// [policy] Contents of the policy. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ContainerPolicyArgs({
    required this.containerName,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'policy': policy,
      'region': ?region,
    };
  }

  factory ContainerPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ContainerPolicyArgs(
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
