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
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

