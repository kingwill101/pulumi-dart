// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_resource_policy_log_resource_policy_args_doc}
/// The set of arguments for LogResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_resource_policy_log_resource_policy_args_doc}
class LogResourcePolicyArgs {
  /// Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters.
  final pulumi.Input<String> policyDocument;

  /// Name of the resource policy.
  final pulumi.Input<String> policyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogResourcePolicyArgs].
  /// [policyDocument] Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters.
  /// [policyName] Name of the resource policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogResourcePolicyArgs({
    required String policyDocument,
    required String policyName,
    String? region,
  }) : policyDocument = pulumi.Input.asInput<String>(policyDocument),
       policyName = pulumi.Input.asInput<String>(policyName),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDocument': policyDocument,
      'policyName': policyName,
      'region': ?region,
    };
  }

  factory LogResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogResourcePolicyArgs(
      policyDocument: map['policyDocument'] as String,
      policyName: map['policyName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
