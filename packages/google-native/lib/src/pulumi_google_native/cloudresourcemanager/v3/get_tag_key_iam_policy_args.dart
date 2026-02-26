// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTagKeyIamPolicy.
class GetTagKeyIamPolicyArgs {
  final Input<String> tagKeyId;

  GetTagKeyIamPolicyArgs({
    required this.tagKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tagKeyId'] = tagKeyId;
    return map;
  }

  factory GetTagKeyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagKeyIamPolicyArgs(
      tagKeyId: Input.asInput<String>(map['tagKeyId']),
    );
  }
}
