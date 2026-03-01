// ignore_for_file: unused_element, unnecessary_cast

/// The configuration settings for Cloud Composer maintenance window. The following example: ``` { "startTime":"2019-08-01T01:00:00Z" "endTime":"2019-08-01T07:00:00Z" "recurrence":"FREQ=WEEKLY;BYDAY=TU,WE" } ``` would define a maintenance window between 01 and 07 hours UTC during each Tuesday and Wednesday.
class MaintenanceWindowComposerV1beta1 {
  /// Maintenance window end time. It is used only to calculate the duration of the maintenance window. The value for end_time must be in the future, relative to `start_time`.
  final String endTime;

  /// Maintenance window recurrence. Format is a subset of [RFC-5545](https://tools.ietf.org/html/rfc5545) `RRULE`. The only allowed values for `FREQ` field are `FREQ=DAILY` and `FREQ=WEEKLY;BYDAY=...` Example values: `FREQ=WEEKLY;BYDAY=TU,WE`, `FREQ=DAILY`.
  final String recurrence;

  /// Start time of the first recurrence of the maintenance window.
  final String startTime;

  /// Creates a new [MaintenanceWindowComposerV1beta1].
  /// [endTime] Maintenance window end time. It is used only to calculate the duration of the maintenance window. The value for end_time must be in the future, relative to `start_time`.
  /// [recurrence] Maintenance window recurrence. Format is a subset of [RFC-5545](https://tools.ietf.org/html/rfc5545) `RRULE`. The only allowed values for `FREQ` field are `FREQ=DAILY` and `FREQ=WEEKLY;BYDAY=...` Example values: `FREQ=WEEKLY;BYDAY=TU,WE`, `FREQ=DAILY`.
  /// [startTime] Start time of the first recurrence of the maintenance window.
  MaintenanceWindowComposerV1beta1({
    required this.endTime,
    required this.recurrence,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'recurrence': recurrence,
      'startTime': startTime,
    };
  }

  factory MaintenanceWindowComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowComposerV1beta1(
      endTime: map['endTime'] as String,
      recurrence: map['recurrence'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
