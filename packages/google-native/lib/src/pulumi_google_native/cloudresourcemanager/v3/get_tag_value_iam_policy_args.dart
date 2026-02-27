// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTagValueIamPolicy.
class GetTagValueIamPolicyArgs {
  final pulumi.Input<String> tagValueId;

  GetTagValueIamPolicyArgs({
    required this.tagValueId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tagValueId'] = tagValueId;
    return map;
  }

  factory GetTagValueIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagValueIamPolicyArgs(
      tagValueId: pulumi.Input.asInput<String>(map['tagValueId']),
    );
  }
}
