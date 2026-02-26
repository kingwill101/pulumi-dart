// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RepositoryPolicy.
class RepositoryPolicyArgs {
  /// The policy document. This is a JSON formatted string.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the repository to apply the policy.
  final Input<String> repository;

  RepositoryPolicyArgs({
    required this.policy,
    this.region,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repository'] = repository;
    return map;
  }

  factory RepositoryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryPolicyArgs(
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      repository: Input.asInput<String>(map['repository']),
    );
  }
}
