// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGroup.
class GetGroupArgs {
  final Input<String> groupId;

  GetGroupArgs({
    required this.groupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    return map;
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      groupId: Input.asInput<String>(map['groupId']),
    );
  }
}
