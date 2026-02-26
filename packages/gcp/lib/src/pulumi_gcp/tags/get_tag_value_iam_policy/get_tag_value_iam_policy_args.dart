// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTagValueIamPolicy.
class GetTagValueIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> tagValue;

  GetTagValueIamPolicyArgs({
    required this.tagValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tagValue'] = tagValue;
    return map;
  }

  factory GetTagValueIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagValueIamPolicyArgs(
      tagValue: Input.asInput<String>(map['tagValue']),
    );
  }
}
