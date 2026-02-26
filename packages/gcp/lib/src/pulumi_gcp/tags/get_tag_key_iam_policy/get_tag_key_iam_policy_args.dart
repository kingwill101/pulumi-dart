// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTagKeyIamPolicy.
class GetTagKeyIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> tagKey;

  GetTagKeyIamPolicyArgs({
    required this.tagKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tagKey'] = tagKey;
    return map;
  }

  factory GetTagKeyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagKeyIamPolicyArgs(
      tagKey: Input.asInput<String>(map['tagKey']),
    );
  }
}
