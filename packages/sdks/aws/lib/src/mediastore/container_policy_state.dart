// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContainerPolicy resources.
class ContainerPolicyState {
  /// The name of the container.
  final pulumi.Input<String>? containerName;
  /// The contents of the policy.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ContainerPolicyState].
  /// [containerName] The name of the container.
  /// [policy] The contents of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ContainerPolicyState({
    pulumi.Output<String>? containerName,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
  }) :
      containerName = pulumi.Input.asOptionalInput<String>(containerName),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory ContainerPolicyState.fromMap(Map<String, dynamic> map) {
    return ContainerPolicyState(
      containerName: map['containerName'] == null ? null : pulumi.Output.create<String>(map['containerName'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

