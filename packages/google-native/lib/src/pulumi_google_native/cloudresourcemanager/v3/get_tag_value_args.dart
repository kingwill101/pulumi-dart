// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTagValue.
class GetTagValueArgs {
  final Input<String> tagValueId;

  GetTagValueArgs({
    required this.tagValueId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tagValueId'] = tagValueId;
    return map;
  }

  factory GetTagValueArgs.fromMap(Map<String, dynamic> map) {
    return GetTagValueArgs(
      tagValueId: Input.asInput<String>(map['tagValueId']),
    );
  }
}
