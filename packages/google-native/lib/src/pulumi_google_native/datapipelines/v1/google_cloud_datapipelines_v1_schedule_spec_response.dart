// ignore_for_file: unused_element, unnecessary_cast

/// Details of the schedule the pipeline runs on.
class GoogleCloudDatapipelinesV1ScheduleSpecResponse {
  /// When the next Scheduler job is going to run.
  final String nextJobTime;

  /// Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler.
  final String schedule;

  /// Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed.
  final String timeZone;

  GoogleCloudDatapipelinesV1ScheduleSpecResponse({
    required this.nextJobTime,
    required this.schedule,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nextJobTime'] = nextJobTime;
    map['schedule'] = schedule;
    map['timeZone'] = timeZone;
    return map;
  }

  factory GoogleCloudDatapipelinesV1ScheduleSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1ScheduleSpecResponse(
      nextJobTime: map['nextJobTime'] as String,
      schedule: map['schedule'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}
