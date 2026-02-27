// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LogDataProtectionPolicy.
class LogDataProtectionPolicyArgs {
  /// The name of the log group under which the log stream is to be created.
  final pulumi.Input<String> logGroupName;

  /// Specifies the data protection policy in JSON. Read more at [Data protection policy syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-start.html#mask-sensitive-log-data-policysyntax).
  final pulumi.Input<String> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  LogDataProtectionPolicyArgs({
    required this.logGroupName,
    required this.policyDocument,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroupName'] = logGroupName;
    map['policyDocument'] = policyDocument;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LogDataProtectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogDataProtectionPolicyArgs(
      logGroupName: pulumi.Input.asInput<String>(map['logGroupName']),
      policyDocument: pulumi.Input.asInput<String>(map['policyDocument']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
