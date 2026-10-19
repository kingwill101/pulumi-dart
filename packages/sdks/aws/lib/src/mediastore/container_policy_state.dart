// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContainerPolicy resources.
class ContainerPolicyState {
  /// Name of the container.
  final pulumi.Input<String?>? containerName;
  /// Contents of the policy. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  final pulumi.Input<String?>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [ContainerPolicyState].
  /// [containerName] Name of the container.
  /// [policy] Contents of the policy. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ContainerPolicyState({
    this.containerName,
    this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory ContainerPolicyState.fromMap(Map<String, dynamic> map) {
    return ContainerPolicyState(
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
