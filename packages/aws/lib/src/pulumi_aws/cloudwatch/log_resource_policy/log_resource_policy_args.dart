// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LogResourcePolicy.
class LogResourcePolicyArgs {
  /// Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters.
  final Input<String> policyDocument;

  /// Name of the resource policy.
  final Input<String> policyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  LogResourcePolicyArgs({
    required this.policyDocument,
    required this.policyName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyDocument'] = policyDocument;
    map['policyName'] = policyName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LogResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogResourcePolicyArgs(
      policyDocument: Input.asInput<String>(map['policyDocument']),
      policyName: Input.asInput<String>(map['policyName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
