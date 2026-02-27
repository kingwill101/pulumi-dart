// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RepositoryPolicy.
class RepositoryPolicyEcrpublicArgs {
  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the repository to apply the policy.
  final pulumi.Input<String> repositoryName;

  RepositoryPolicyEcrpublicArgs({
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

  factory RepositoryPolicyEcrpublicArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryPolicyEcrpublicArgs(
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repositoryName: pulumi.Input.asInput<String>(map['repositoryName']),
    );
  }
}
