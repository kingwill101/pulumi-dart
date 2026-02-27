// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getGroup.
class GetGroupArgs2 {
  final Input<String> groupId;

  GetGroupArgs2({
    required this.groupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    return map;
  }

  factory GetGroupArgs2.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs2(
      groupId: Input.asInput<String>(map['groupId']),
    );
  }
}
