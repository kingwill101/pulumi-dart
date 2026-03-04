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
  final pulumi.Input<String>? repositoryName;

  /// Creates a new [RepositoryPolicyState].
  /// [policy] The policy document. This is a JSON formatted string.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] The registry ID where the repository was created.
  /// [repositoryName] Name of the repository to apply the policy.
  RepositoryPolicyState({
    this.policy,
    this.region,
    this.registryId,
    this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'registryId': ?registryId,
      'repositoryName': ?repositoryName,
    };
  }

  factory RepositoryPolicyState.fromMap(Map<String, dynamic> map) {
    return RepositoryPolicyState(
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registryId: (() {
        final guardedValue = map['registryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repositoryName: (() {
        final guardedValue = map['repositoryName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
