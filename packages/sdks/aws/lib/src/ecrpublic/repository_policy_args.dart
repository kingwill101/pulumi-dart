// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecrpublic_repository_policy_repository_policy_args_doc}
/// The set of arguments for RepositoryPolicy.
/// {@endtemplate}
/// {@macro pulumi_ecrpublic_repository_policy_repository_policy_args_doc}
class RepositoryPolicyArgs {
  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Name of the repository to apply the policy.
  final pulumi.Input<String> repositoryName;

  /// Creates a new [RepositoryPolicyArgs].
  /// [policy] The policy document. This is a JSON formatted string.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositoryName] Name of the repository to apply the policy.
  const RepositoryPolicyArgs({
    required this.policy,
    this.region,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
      'repositoryName': repositoryName,
    };
  }

  factory RepositoryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryPolicyArgs(
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
    );
  }
}
