// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTagKey.
class GetTagKeyArgs {
  final pulumi.Input<String> tagKeyId;

  GetTagKeyArgs({
    required this.tagKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tagKeyId'] = tagKeyId;
    return map;
  }

  factory GetTagKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagKeyArgs(
      tagKeyId: pulumi.Input.asInput<String>(map['tagKeyId']),
    );
  }
}
