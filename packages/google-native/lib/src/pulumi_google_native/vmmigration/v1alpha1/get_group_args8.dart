// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGroup.
class GetGroupArgs8 {
  final Input<String> groupId;
  final Input<String> location;
  final Input<String>? project;

  GetGroupArgs8({
    required this.groupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGroupArgs8.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs8(
      groupId: Input.asInput<String>(map['groupId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
