// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_get_serverless_access_policy_get_serverless_access_policy_args_doc}
/// Arguments for getServerlessAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_opensearch_get_serverless_access_policy_get_serverless_access_policy_args_doc}
class GetServerlessAccessPolicyArgs {
  /// Name of the policy.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of access policy. Must be `data`.
  final pulumi.Input<String> type;

  /// Creates a new [GetServerlessAccessPolicyArgs].
  /// [name] Name of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of access policy. Must be `data`.
  GetServerlessAccessPolicyArgs({
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

  factory GetServerlessAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessAccessPolicyArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

