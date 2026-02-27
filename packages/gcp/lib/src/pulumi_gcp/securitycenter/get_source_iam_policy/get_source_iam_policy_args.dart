// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSourceIamPolicy.
class GetSourceIamPolicyArgs {
  final pulumi.Input<String> organization;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> source;

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
      organization: pulumi.Input.asInput<String>(map['organization']),
      source: pulumi.Input.asInput<String>(map['source']),
    );
  }
}
