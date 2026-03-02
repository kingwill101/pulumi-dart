// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSchedulesSchedule {
  /// The CRON expression of the time-based schedule to be created.
  final pulumi.Input<String> cronExpression;
  /// The description of the time-based schedule to be created.
  final pulumi.Input<String> description;
  /// Specifies whether to enable the time-based schedule you want to create.
  final pulumi.Input<bool> enable;
  /// The ID of the Schedule.
  final pulumi.Input<String> id;
  /// The time when the time-based schedule was last updated.
  final pulumi.Input<String> lastModifiedTime;
  /// The trigger message of the time-based schedule to be created. It must be in JSON object format.
  final pulumi.Input<String> payload;
  /// The ID of the time-based schedule.
  final pulumi.Input<String> scheduleId;
  /// The name of the time-based schedule to be created.
  final pulumi.Input<String> scheduleName;

  /// Creates a new [GetSchedulesSchedule].
  /// [cronExpression] The CRON expression of the time-based schedule to be created.
  /// [description] The description of the time-based schedule to be created.
  /// [enable] Specifies whether to enable the time-based schedule you want to create.
  /// [id] The ID of the Schedule.
  /// [lastModifiedTime] The time when the time-based schedule was last updated.
  /// [payload] The trigger message of the time-based schedule to be created. It must be in JSON object format.
  /// [scheduleId] The ID of the time-based schedule.
  /// [scheduleName] The name of the time-based schedule to be created.
  GetSchedulesSchedule({
    required this.cronExpression,
    required this.description,
    required this.enable,
    required this.id,
    required this.lastModifiedTime,
    required this.payload,
    required this.scheduleId,
    required this.scheduleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpression': cronExpression,
      'description': description,
      'enable': enable,
      'id': id,
      'lastModifiedTime': lastModifiedTime,
      'payload': payload,
      'scheduleId': scheduleId,
      'scheduleName': scheduleName,
    };
  }

  factory GetSchedulesSchedule.fromMap(Map<String, dynamic> map) {
    return GetSchedulesSchedule(
      cronExpression: (map['cronExpression'] as String).input(),
      description: (map['description'] as String).input(),
      enable: (map['enable'] as bool).input(),
      id: (map['id'] as String).input(),
      lastModifiedTime: (map['lastModifiedTime'] as String).input(),
      payload: (map['payload'] as String).input(),
      scheduleId: (map['scheduleId'] as String).input(),
      scheduleName: (map['scheduleName'] as String).input(),
    );
  }
}

