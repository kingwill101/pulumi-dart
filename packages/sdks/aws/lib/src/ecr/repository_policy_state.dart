// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RepositoryPolicy resources.
class RepositoryPolicyState {
  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The registry ID where the repository was created.
  final pulumi.Input<String>? registryId;
  /// Name of the repository to apply the policy.
  final pulumi.Input<String>? repository;

  /// Creates a new [RepositoryPolicyState].
  /// [policy] The policy document. This is a JSON formatted string.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] The registry ID where the repository was created.
  /// [repository] Name of the repository to apply the policy.
  RepositoryPolicyState({
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

  factory RepositoryPolicyState.fromMap(Map<String, dynamic> map) {
    return RepositoryPolicyState(
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      registryId: map['registryId'] == null ? null : (map['registryId'] as String).input(),
      repository: map['repository'] == null ? null : (map['repository'] as String).input(),
    );
  }
}

