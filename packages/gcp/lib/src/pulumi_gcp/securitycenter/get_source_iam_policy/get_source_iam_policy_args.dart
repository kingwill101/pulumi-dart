// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSourceIamPolicy.
class GetSourceIamPolicyArgs {
  final Input<String> organization;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> source;

  GetSourceIamPolicyArgs({
    required this.organization,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organization'] = organization;
    map['source'] = source;
    return map;
  }

  factory GetSourceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSourceIamPolicyArgs(
      organization: Input.asInput<String>(map['organization']),
      source: Input.asInput<String>(map['source']),
    );
  }
}
