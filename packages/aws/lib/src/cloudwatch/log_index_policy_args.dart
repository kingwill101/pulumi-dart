// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_index_policy_log_index_policy_args_doc}
/// The set of arguments for LogIndexPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_index_policy_log_index_policy_args_doc}
class LogIndexPolicyArgs {
  /// Log group name to set the policy for.
  final pulumi.Input<String> logGroupName;

  /// JSON policy document. This is a JSON formatted string.
  final pulumi.Input<String> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogIndexPolicyArgs].
  /// [logGroupName] Log group name to set the policy for.
  /// [policyDocument] JSON policy document. This is a JSON formatted string.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogIndexPolicyArgs({
    required String logGroupName,
    required String policyDocument,
    String? region,
  }) : logGroupName = pulumi.Input.asInput<String>(logGroupName),
       policyDocument = pulumi.Input.asInput<String>(policyDocument),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupName': logGroupName,
      'policyDocument': policyDocument,
      'region': ?region,
    };
  }

  factory LogIndexPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogIndexPolicyArgs(
      logGroupName: map['logGroupName'] as String,
      policyDocument: map['policyDocument'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
