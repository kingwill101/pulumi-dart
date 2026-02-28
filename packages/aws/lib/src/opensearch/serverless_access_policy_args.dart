// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_serverless_access_policy_serverless_access_policy_args_doc}
/// The set of arguments for ServerlessAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_opensearch_serverless_access_policy_serverless_access_policy_args_doc}
class ServerlessAccessPolicyArgs {
  /// Description of the policy. Typically used to store information about the permissions defined in the policy.
  final pulumi.Input<String>? description;
  /// Name of the policy.
  final pulumi.Input<String>? name;
  /// JSON policy document to use as the content for the new policy
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of access policy. Must be `data`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [ServerlessAccessPolicyArgs].
  /// [description] Description of the policy. Typically used to store information about the permissions defined in the policy.
  /// [name] Name of the policy.
  /// [policy] JSON policy document to use as the content for the new policy
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of access policy. Must be `data`.
  ServerlessAccessPolicyArgs({
    String? description,
    String? name,
    required String policy,
    String? region,
    required String type,
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

  factory ServerlessAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessAccessPolicyArgs(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policy: map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      type: map['type'] as String,
    );
  }
}

