// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_events_event.dart';

/// Result data returned by getEvents.
class GetEventsResult {
  final int? duration;
  final String? endTime;
  /// List of categories for the event.
  final List<String>? eventCategories;
  /// List of events. See `events` below.
  final List<GetEventsEvent>? events;
  final String? region;
  /// Identifier of the event source.
  final String? sourceIdentifier;
  /// Type of the event source.
  final String? sourceType;
  final String? startTime;

  /// Creates a new [GetEventsResult].
  /// [duration] Optional.
  /// [endTime] Optional.
  /// [eventCategories] List of categories for the event.
  /// [events] List of events. See `events` below.
  /// [region] Optional.
  /// [sourceIdentifier] Identifier of the event source.
  /// [sourceType] Type of the event source.
  /// [startTime] Optional.
  const GetEventsResult({
    this.duration,
    this.endTime,
    this.eventCategories,
    this.events,
    this.region,
    this.sourceIdentifier,
    this.sourceType,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'endTime': ?endTime,
      'eventCategories': ?eventCategories,
      'events': ?(() { final guardedValue = events; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEventsEvent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'sourceIdentifier': ?sourceIdentifier,
      'sourceType': ?sourceType,
      'startTime': ?startTime,
    };
  }

  factory GetEventsResult.fromMap(Map<String, dynamic> map) {
    return GetEventsResult(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventCategories: (() { final guardedValue = map['eventCategories']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEventsEvent>(guardedValue, (value) => GetEventsEvent.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceIdentifier: (() { final guardedValue = map['sourceIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
