// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RepositoryPolicy.
class RepositoryPolicyArgs2 {
  /// The policy document. This is a JSON formatted string.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the repository to apply the policy.
  final Input<String> repositoryName;

  RepositoryPolicyArgs2({
    required this.policy,
    this.region,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory RepositoryPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return RepositoryPolicyArgs2(
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      repositoryName: Input.asInput<String>(map['repositoryName']),
    );
  }
}
