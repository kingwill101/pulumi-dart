// ignore_for_file: unused_element, unnecessary_cast


class EventSourceV2SourceScheduledEventParameters {
  /// Cron expression
  final String? schedule;
  /// The Cron execution time zone.
  final String? timeZone;
  /// JSON string
  final String? userData;

  /// Creates a new [EventSourceV2SourceScheduledEventParameters].
  /// [schedule] Cron expression
  /// [timeZone] The Cron execution time zone.
  /// [userData] JSON string
  EventSourceV2SourceScheduledEventParameters({
    this.schedule,
    this.timeZone,
    this.userData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': ?schedule,
      'timeZone': ?timeZone,
      'userData': ?userData,
    };
  }

  factory EventSourceV2SourceScheduledEventParameters.fromMap(Map<String, dynamic> map) {
    return EventSourceV2SourceScheduledEventParameters(
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      userData: map['userData'] == null ? null : map['userData'] as String,
    );
  }
}

