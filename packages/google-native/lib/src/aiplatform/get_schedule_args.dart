// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_schedule_args_doc}
/// Arguments for getSchedule.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_schedule_args_doc}
class GetScheduleArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scheduleId;

  /// Creates a new [GetScheduleArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [scheduleId] Required.
  GetScheduleArgs({
    required String location,
    String? project,
    required String scheduleId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        scheduleId = pulumi.Input.asInput<String>(scheduleId);

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

  factory GetScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduleArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      scheduleId: map['scheduleId'] as String,
    );
  }
}
