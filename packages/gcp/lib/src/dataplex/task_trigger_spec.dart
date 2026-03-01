// ignore_for_file: unused_element, unnecessary_cast

class TaskTriggerSpec {
  /// Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks.
  final bool? disabled;

  /// Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task.
  final int? maxRetries;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: 'CRON_TZ=${IANA_TIME_ZONE}' or 'TZ=${IANA_TIME_ZONE}'. The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks.
  final String? schedule;

  /// The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING.
  final String? startTime;

  /// Trigger type of the user-specified Task
  /// Possible values are: `ON_DEMAND`, `RECURRING`.
  final String type;

  /// Creates a new [TaskTriggerSpec].
  /// [disabled] Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks.
  /// [maxRetries] Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task.
  /// [schedule] Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: 'CRON_TZ=${IANA_TIME_ZONE}' or 'TZ=${IANA_TIME_ZONE}'. The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks.
  /// [startTime] The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING.
  /// [type] Trigger type of the user-specified Task
  TaskTriggerSpec({
    this.disabled,
    this.maxRetries,
    this.schedule,
    this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'maxRetries': ?maxRetries,
      'schedule': ?schedule,
      'startTime': ?startTime,
      'type': type,
    };
  }

  factory TaskTriggerSpec.fromMap(Map<String, dynamic> map) {
    return TaskTriggerSpec(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      type: map['type'] as String,
    );
  }
}
