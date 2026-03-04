// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_data_protection_policy_log_data_protection_policy_args_doc}
/// The set of arguments for LogDataProtectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_data_protection_policy_log_data_protection_policy_args_doc}
class LogDataProtectionPolicyArgs {
  /// The name of the log group under which the log stream is to be created.
  final pulumi.Input<String> logGroupName;

  /// Specifies the data protection policy in JSON. Read more at [Data protection policy syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-start.html#mask-sensitive-log-data-policysyntax).
  final pulumi.Input<String> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogDataProtectionPolicyArgs].
  /// [logGroupName] The name of the log group under which the log stream is to be created.
  /// [policyDocument] Specifies the data protection policy in JSON. Read more at [Data protection policy syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-start.html#mask-sensitive-log-data-policysyntax).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogDataProtectionPolicyArgs({
    required this.logGroupName,
    required this.policyDocument,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupName': logGroupName,
      'policyDocument': policyDocument,
      'region': ?region,
    };
  }

  factory LogDataProtectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogDataProtectionPolicyArgs(
      logGroupName: pulumi.Input.fromValue(map['logGroupName'] as String),
      policyDocument: pulumi.Input.fromValue(map['policyDocument'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
