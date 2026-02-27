// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSchedule.
class GetScheduleArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> scheduleId;

  GetScheduleArgs2({
    required this.location,
    this.project,
    required this.scheduleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['scheduleId'] = scheduleId;
    return map;
  }

  factory GetScheduleArgs2.fromMap(Map<String, dynamic> map) {
    return GetScheduleArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      scheduleId: Input.asInput<String>(map['scheduleId']),
    );
  }
}
