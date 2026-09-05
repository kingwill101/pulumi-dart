// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LifecyclePolicy resources.
class LifecyclePolicyState {
  /// The policy document. This is a JSON formatted string. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the `aws.ecr.getLifecyclePolicyDocument` dataSource to generate/manage the JSON document used for the `policy` argument.
  final pulumi.Input<dynamic>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The registry ID where the repository was created.
  final pulumi.Input<String?>? registryId;
  /// Name of the repository to apply the policy.
  final pulumi.Input<String?>? repository;

  /// Creates a new [LifecyclePolicyState].
  /// [policy] The policy document. This is a JSON formatted string. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the `aws.ecr.getLifecyclePolicyDocument` dataSource to generate/manage the JSON document used for the `policy` argument.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] The registry ID where the repository was created.
  /// [repository] Name of the repository to apply the policy.
  const LifecyclePolicyState({
    this.policy,
    this.region,
    this.registryId,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'registryId': ?registryId,
      'repository': ?repository,
    };
  }

  factory LifecyclePolicyState.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyState(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
