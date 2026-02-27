// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTagKeyIamPolicy.
class GetTagKeyIamPolicyArgs {
  final pulumi.Input<String> tagKeyId;

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
      tagKeyId: pulumi.Input.asInput<String>(map['tagKeyId']),
    );
  }
}
