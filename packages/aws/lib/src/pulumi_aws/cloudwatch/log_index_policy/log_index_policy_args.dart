// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LogIndexPolicy.
class LogIndexPolicyArgs {
  /// Log group name to set the policy for.
  final pulumi.Input<String> logGroupName;

  /// JSON policy document. This is a JSON formatted string.
  final pulumi.Input<String> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  LogIndexPolicyArgs({
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

  factory LogIndexPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogIndexPolicyArgs(
      logGroupName: pulumi.Input.asInput<String>(map['logGroupName']),
      policyDocument: pulumi.Input.asInput<String>(map['policyDocument']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
