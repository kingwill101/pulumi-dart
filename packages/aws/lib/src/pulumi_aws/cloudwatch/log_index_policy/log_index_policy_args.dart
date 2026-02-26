// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LogIndexPolicy.
class LogIndexPolicyArgs {
  /// Log group name to set the policy for.
  final Input<String> logGroupName;

  /// JSON policy document. This is a JSON formatted string.
  final Input<String> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      logGroupName: Input.asInput<String>(map['logGroupName']),
      policyDocument: Input.asInput<String>(map['policyDocument']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
