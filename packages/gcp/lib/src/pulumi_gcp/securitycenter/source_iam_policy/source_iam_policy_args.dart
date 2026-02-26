// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SourceIamPolicy.
class SourceIamPolicyArgs {
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final Input<String> organization;
  final Input<String> policyData;
  final Input<String> source;

  SourceIamPolicyArgs({
    required this.organization,
    required this.policyData,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organization'] = organization;
    map['policyData'] = policyData;
    map['source'] = source;
    return map;
  }

  factory SourceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SourceIamPolicyArgs(
      organization: Input.asInput<String>(map['organization']),
      policyData: Input.asInput<String>(map['policyData']),
      source: Input.asInput<String>(map['source']),
    );
  }
}
