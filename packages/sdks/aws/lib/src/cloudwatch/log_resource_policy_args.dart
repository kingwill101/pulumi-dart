// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_resource_policy_log_resource_policy_args_doc}
/// The set of arguments for LogResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_resource_policy_log_resource_policy_args_doc}
class LogResourcePolicyArgs {
  /// Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters.
  final pulumi.Input<String> policyDocument;
  /// Name of the resource policy. Exactly one of `policyName` or `resourceArn` must be specified and this argument is required for account-scoped policies. Note that the number of resource policies without `resourceArn` is limited to 10 per region.
  final pulumi.Input<String>? policyName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the CloudWatch Logs resource to which the resource policy is attached. Exactly one of `policyName` or `resourceArn` must be specified and this argument is required for resource-scoped policies. Only one policy can be attached per log group resource ARN.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [LogResourcePolicyArgs].
  /// [policyDocument] Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters.
  /// [policyName] Name of the resource policy. Exactly one of `policyName` or `resourceArn` must be specified and this argument is required for account-scoped policies. Note that the number of resource policies without `resourceArn` is limited to 10 per region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the CloudWatch Logs resource to which the resource policy is attached. Exactly one of `policyName` or `resourceArn` must be specified and this argument is required for resource-scoped policies. Only one policy can be attached per log group resource ARN.
  const LogResourcePolicyArgs({
    required this.policyDocument,
    this.policyName,
    this.region,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDocument': policyDocument,
      'policyName': ?policyName,
      'region': ?region,
      'resourceArn': ?resourceArn,
    };
  }

  factory LogResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogResourcePolicyArgs(
      policyDocument: pulumi.Input.fromValue(map['policyDocument'] as String),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
