// ignore_for_file: unused_element, unnecessary_cast


/// A container group or container instance event.
class EventResponse {
  /// The count of the event.
  final int count;
  /// The date-time of the earliest logged event.
  final String firstTimestamp;
  /// The date-time of the latest logged event.
  final String lastTimestamp;
  /// The event message.
  final String message;
  /// The event name.
  final String name;
  /// The event type.
  final String type;

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
      count: map['count'] as int,
      firstTimestamp: map['firstTimestamp'] as String,
      lastTimestamp: map['lastTimestamp'] as String,
      message: map['message'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

