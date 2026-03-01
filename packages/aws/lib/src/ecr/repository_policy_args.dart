// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_repository_policy_repository_policy_args_doc}
/// The set of arguments for RepositoryPolicy.
/// {@endtemplate}
/// {@macro pulumi_ecr_repository_policy_repository_policy_args_doc}
class RepositoryPolicyArgs {
  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the repository to apply the policy.
  final pulumi.Input<String> repository;

  /// Creates a new [RepositoryPolicyArgs].
  /// [policy] The policy document. This is a JSON formatted string.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repository] Name of the repository to apply the policy.
  RepositoryPolicyArgs({
    required String policy,
    String? region,
    required String repository,
  }) : policy = pulumi.Input.asInput<String>(policy),
       region = pulumi.Input.asOptionalInput<String>(region),
       repository = pulumi.Input.asInput<String>(repository);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
      'repository': repository,
    };
  }

  factory RepositoryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryPolicyArgs(
      policy: map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      repository: map['repository'] as String,
    );
  }
}
