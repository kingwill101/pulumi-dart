// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_get_serverless_lifecycle_policy_get_serverless_lifecycle_policy_args_doc}
/// Arguments for getServerlessLifecyclePolicy.
/// {@endtemplate}
/// {@macro pulumi_opensearch_get_serverless_lifecycle_policy_get_serverless_lifecycle_policy_args_doc}
class GetServerlessLifecyclePolicyArgs {
  /// Name of the policy
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of lifecycle policy. Must be `retention`.
  final pulumi.Input<String> type;

  /// Creates a new [GetServerlessLifecyclePolicyArgs].
  /// [name] Name of the policy
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of lifecycle policy. Must be `retention`.
  GetServerlessLifecyclePolicyArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
    required pulumi.Output<String> type,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'type': type,
    };
  }

  factory GetServerlessLifecyclePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessLifecyclePolicyArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

