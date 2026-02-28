// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_task_trigger_spec_type.dart';

/// Task scheduling and trigger settings.
class GoogleCloudDataplexV1TaskTriggerSpec {
  /// Optional. Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks.
  final bool? disabled;

  /// Optional. Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task.
  final int? maxRetries;

  /// Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks.
  final String? schedule;

  /// Optional. The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING.
  final String? startTime;

  /// Immutable. Trigger type of the user-specified Task.
  final GoogleCloudDataplexV1TaskTriggerSpecType type;

  /// Creates a new [GoogleCloudDataplexV1TaskTriggerSpec].
  /// [disabled] Optional. Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks.
  /// [maxRetries] Optional. Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task.
  /// [schedule] Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks.
  /// [startTime] Optional. The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING.
  /// [type] Immutable. Trigger type of the user-specified Task.
  GoogleCloudDataplexV1TaskTriggerSpec({
    this.disabled,
    this.maxRetries,
    this.schedule,
    this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final maxRetriesValue = maxRetries;
    if (maxRetriesValue != null) {
      map['maxRetries'] = maxRetriesValue;
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    map['type'] = type.value;
    return map;
  }

  factory GoogleCloudDataplexV1TaskTriggerSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskTriggerSpec(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      type: GoogleCloudDataplexV1TaskTriggerSpecType.fromValue(
          map['type'] as String),
    );
  }
}
