// ignore_for_file: unused_element, unnecessary_cast

/// Task scheduling and trigger settings.
class GoogleCloudDataplexV1TaskTriggerSpecResponse {
  /// Optional. Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks.
  final bool disabled;

  /// Optional. Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task.
  final int maxRetries;

  /// Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks.
  final String schedule;

  /// Optional. The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING.
  final String startTime;

  /// Immutable. Trigger type of the user-specified Task.
  final String type;

  GoogleCloudDataplexV1TaskTriggerSpecResponse({
    required this.disabled,
    required this.maxRetries,
    required this.schedule,
    required this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    map['maxRetries'] = maxRetries;
    map['schedule'] = schedule;
    map['startTime'] = startTime;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDataplexV1TaskTriggerSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskTriggerSpecResponse(
      disabled: map['disabled'] as bool,
      maxRetries: map['maxRetries'] as int,
      schedule: map['schedule'] as String,
      startTime: map['startTime'] as String,
      type: map['type'] as String,
    );
  }
}
