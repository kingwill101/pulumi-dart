// ignore_for_file: unused_element, unnecessary_cast

/// Details of the schedule the pipeline runs on.
class GoogleCloudDatapipelinesV1ScheduleSpec {
  /// Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler.
  final String? schedule;

  /// Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed.
  final String? timeZone;

  /// Creates a new [GoogleCloudDatapipelinesV1ScheduleSpec].
  /// [schedule] Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler.
  /// [timeZone] Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed.
  GoogleCloudDatapipelinesV1ScheduleSpec({
    this.schedule,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    return map;
  }

  factory GoogleCloudDatapipelinesV1ScheduleSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1ScheduleSpec(
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}
