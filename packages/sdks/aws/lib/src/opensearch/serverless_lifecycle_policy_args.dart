// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_serverless_lifecycle_policy_serverless_lifecycle_policy_args_doc}
/// The set of arguments for ServerlessLifecyclePolicy.
/// {@endtemplate}
/// {@macro pulumi_opensearch_serverless_lifecycle_policy_serverless_lifecycle_policy_args_doc}
class ServerlessLifecyclePolicyArgs {
  /// Description of the policy.
  final pulumi.Input<String>? description;
  /// Name of the policy.
  final pulumi.Input<String>? name;
  /// JSON policy document to use as the content for the new policy.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of lifecycle policy. Must be `retention`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [ServerlessLifecyclePolicyArgs].
  /// [description] Description of the policy.
  /// [name] Name of the policy.
  /// [policy] JSON policy document to use as the content for the new policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of lifecycle policy. Must be `retention`.
  ServerlessLifecyclePolicyArgs({
    this.description,
    this.name,
    required this.policy,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'policy': policy,
      'region': ?region,
      'type': type,
    };
  }

  factory ServerlessLifecyclePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessLifecyclePolicyArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      policy: (map['policy'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

