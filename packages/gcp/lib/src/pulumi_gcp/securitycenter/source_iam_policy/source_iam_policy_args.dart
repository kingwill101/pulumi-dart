// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SourceIamPolicy.
class SourceIamPolicyArgs {
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String> organization;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String> source;

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
      organization: pulumi.Input.asInput<String>(map['organization']),
      policyData: pulumi.Input.asInput<String>(map['policyData']),
      source: pulumi.Input.asInput<String>(map['source']),
    );
  }
}
