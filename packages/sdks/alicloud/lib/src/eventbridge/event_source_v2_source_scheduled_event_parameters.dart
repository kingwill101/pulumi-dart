// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceV2SourceScheduledEventParameters {
  /// Cron expression
  final pulumi.Input<String>? schedule;
  /// The Cron execution time zone.
  final pulumi.Input<String>? timeZone;
  /// JSON string
  final pulumi.Input<String>? userData;

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
      schedule: map['schedule'] == null ? null : (map['schedule'] as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      userData: map['userData'] == null ? null : (map['userData'] as String).input(),
    );
  }
}

