// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A container group or container instance event.
class EventResponse {
  /// The count of the event.
  final pulumi.Input<int> count;
  /// The date-time of the earliest logged event.
  final pulumi.Input<String> firstTimestamp;
  /// The date-time of the latest logged event.
  final pulumi.Input<String> lastTimestamp;
  /// The event message.
  final pulumi.Input<String> message;
  /// The event name.
  final pulumi.Input<String> name;
  /// The event type.
  final pulumi.Input<String> type;

  /// Creates a new [EventResponse].
  /// [count] The count of the event.
  /// [firstTimestamp] The date-time of the earliest logged event.
  /// [lastTimestamp] The date-time of the latest logged event.
  /// [message] The event message.
  /// [name] The event name.
  /// [type] The event type.
  EventResponse({
    required this.count,
    required this.firstTimestamp,
    required this.lastTimestamp,
    required this.message,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'firstTimestamp': firstTimestamp,
      'lastTimestamp': lastTimestamp,
      'message': message,
      'name': name,
      'type': type,
    };
  }

  factory EventResponse.fromMap(Map<String, dynamic> map) {
    return EventResponse(
      count: (map['count'] as int).input(),
      firstTimestamp: (map['firstTimestamp'] as String).input(),
      lastTimestamp: (map['lastTimestamp'] as String).input(),
      message: (map['message'] as String).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

