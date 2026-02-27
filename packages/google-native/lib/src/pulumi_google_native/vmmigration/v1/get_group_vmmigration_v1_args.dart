// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGroup.
class GetGroupVmmigrationV1Args {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetGroupVmmigrationV1Args({
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

  factory GetGroupVmmigrationV1Args.fromMap(Map<String, dynamic> map) {
    return GetGroupVmmigrationV1Args(
      groupId: pulumi.Input.asInput<String>(map['groupId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
