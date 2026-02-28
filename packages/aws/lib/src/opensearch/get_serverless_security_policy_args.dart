// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_get_serverless_security_policy_get_serverless_security_policy_args_doc}
/// Arguments for getServerlessSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_opensearch_get_serverless_security_policy_get_serverless_security_policy_args_doc}
class GetServerlessSecurityPolicyArgs {
  /// Name of the policy
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Type of security policy. One of `encryption` or `network`.
  final pulumi.Input<String> type;

  /// Creates a new [GetServerlessSecurityPolicyArgs].
  /// [name] Name of the policy
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of security policy. One of `encryption` or `network`.
  GetServerlessSecurityPolicyArgs({
    required String name,
    String? region,
    required String type,
  })  : name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['type'] = type;
    return map;
  }

  factory GetServerlessSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityPolicyArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      type: map['type'] as String,
    );
  }
}
