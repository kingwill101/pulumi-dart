// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGroup.
class GetGroupMonitoringV3Args {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String>? project;

  GetGroupMonitoringV3Args({
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

  factory GetGroupMonitoringV3Args.fromMap(Map<String, dynamic> map) {
    return GetGroupMonitoringV3Args(
      groupId: pulumi.Input.asInput<String>(map['groupId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
