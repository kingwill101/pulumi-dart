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
  const EventResponse({
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
      count: pulumi.Input.fromValue(map['count'] as int),
      firstTimestamp: pulumi.Input.fromValue(map['firstTimestamp'] as String),
      lastTimestamp: pulumi.Input.fromValue(map['lastTimestamp'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
