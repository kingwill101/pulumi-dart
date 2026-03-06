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
  const GetServerlessLifecyclePolicyArgs({
    required this.name,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'type': type,
    };
  }

  factory GetServerlessLifecyclePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessLifecyclePolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

