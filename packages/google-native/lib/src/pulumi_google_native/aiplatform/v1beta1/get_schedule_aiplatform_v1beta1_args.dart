// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSchedule.
class GetScheduleAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scheduleId;

  GetScheduleAiplatformV1beta1Args({
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

  factory GetScheduleAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetScheduleAiplatformV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      scheduleId: pulumi.Input.asInput<String>(map['scheduleId']),
    );
  }
}
