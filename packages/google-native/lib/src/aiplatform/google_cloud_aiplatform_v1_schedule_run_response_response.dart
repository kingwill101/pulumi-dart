// ignore_for_file: unused_element, unnecessary_cast

/// Status of a scheduled run.
class GoogleCloudAiplatformV1ScheduleRunResponseResponse {
  /// The response of the scheduled run.
  final String runResponse;

  /// The scheduled run time based on the user-specified schedule.
  final String scheduledRunTime;

  /// Creates a new [GoogleCloudAiplatformV1ScheduleRunResponseResponse].
  /// [runResponse] The response of the scheduled run.
  /// [scheduledRunTime] The scheduled run time based on the user-specified schedule.
  GoogleCloudAiplatformV1ScheduleRunResponseResponse({
    required this.runResponse,
    required this.scheduledRunTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runResponse': runResponse,
      'scheduledRunTime': scheduledRunTime,
    };
  }

  factory GoogleCloudAiplatformV1ScheduleRunResponseResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1ScheduleRunResponseResponse(
      runResponse: map['runResponse'] as String,
      scheduledRunTime: map['scheduledRunTime'] as String,
    );
  }
}
