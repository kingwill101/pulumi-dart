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

  factory GetServerlessAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessAccessPolicyArgs(
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

