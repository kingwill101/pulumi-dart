// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGroup.
class GetGroupArgs3 {
  final Input<String> groupId;
  final Input<String>? project;

  GetGroupArgs3({
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

  factory GetGroupArgs3.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs3(
      groupId: Input.asInput<String>(map['groupId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
