// ignore_for_file: unused_element, unnecessary_cast

/// Status of a scheduled run.
class GoogleCloudAiplatformV1beta1ScheduleRunResponseResponse {
  /// The response of the scheduled run.
  final String runResponse;

  /// The scheduled run time based on the user-specified schedule.
  final String scheduledRunTime;

  GoogleCloudAiplatformV1beta1ScheduleRunResponseResponse({
    required this.runResponse,
    required this.scheduledRunTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['runResponse'] = runResponse;
    map['scheduledRunTime'] = scheduledRunTime;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ScheduleRunResponseResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ScheduleRunResponseResponse(
      runResponse: map['runResponse'] as String,
      scheduledRunTime: map['scheduledRunTime'] as String,
    );
  }
}
