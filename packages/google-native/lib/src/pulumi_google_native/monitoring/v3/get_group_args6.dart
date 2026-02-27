// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getGroup.
class GetGroupArgs6 {
  final Input<String> groupId;
  final Input<String>? project;

  GetGroupArgs6({
    required this.groupId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGroupArgs6.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs6(
      groupId: Input.asInput<String>(map['groupId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
