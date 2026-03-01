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
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> policy,
    pulumi.Output<String>? region,
    required pulumi.Output<String> type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      policy = pulumi.Input.asInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asInput<String>(type);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

