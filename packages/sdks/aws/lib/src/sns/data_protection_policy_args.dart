// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sns_data_protection_policy_data_protection_policy_args_doc}
/// The set of arguments for DataProtectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_sns_data_protection_policy_data_protection_policy_args_doc}
class DataProtectionPolicyArgs {
  /// The ARN of the SNS topic
  final pulumi.Input<String> arn;
  /// The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DataProtectionPolicyArgs].
  /// [arn] The ARN of the SNS topic
  /// [policy] The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DataProtectionPolicyArgs({
    required this.arn,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'policy': policy,
      'region': ?region,
    };
  }

  factory DataProtectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DataProtectionPolicyArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
