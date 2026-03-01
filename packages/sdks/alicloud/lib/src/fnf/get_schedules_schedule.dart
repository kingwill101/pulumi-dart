// ignore_for_file: unused_element, unnecessary_cast


class GetSchedulesSchedule {
  /// The CRON expression of the time-based schedule to be created.
  final String cronExpression;
  /// The description of the time-based schedule to be created.
  final String description;
  /// Specifies whether to enable the time-based schedule you want to create.
  final bool enable;
  /// The ID of the Schedule.
  final String id;
  /// The time when the time-based schedule was last updated.
  final String lastModifiedTime;
  /// The trigger message of the time-based schedule to be created. It must be in JSON object format.
  final String payload;
  /// The ID of the time-based schedule.
  final String scheduleId;
  /// The name of the time-based schedule to be created.
  final String scheduleName;

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
      cronExpression: map['cronExpression'] as String,
      description: map['description'] as String,
      enable: map['enable'] as bool,
      id: map['id'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      payload: map['payload'] as String,
      scheduleId: map['scheduleId'] as String,
      scheduleName: map['scheduleName'] as String,
    );
  }
}

