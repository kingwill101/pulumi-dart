// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files.
class EventStream {
  /// Specifies the data and time at which Storage Transfer Service stops listening for events from this stream. After this time, any transfers in progress will complete, but no new transfers are initiated.
  final String? eventStreamExpirationTime;

  /// Specifies the date and time that Storage Transfer Service starts listening for events from this stream. If no start time is specified or start time is in the past, Storage Transfer Service starts listening immediately.
  final String? eventStreamStartTime;

  /// Specifies a unique name of the resource such as AWS SQS ARN in the form 'arn:aws:sqs:region:account_id:queue_name', or Pub/Sub subscription resource name in the form 'projects/{project}/subscriptions/{sub}'.
  final String name;

  EventStream({
    this.eventStreamExpirationTime,
    this.eventStreamStartTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventStreamExpirationTimeValue = eventStreamExpirationTime;
    if (eventStreamExpirationTimeValue != null) {
      map['eventStreamExpirationTime'] = eventStreamExpirationTimeValue;
    }
    final eventStreamStartTimeValue = eventStreamStartTime;
    if (eventStreamStartTimeValue != null) {
      map['eventStreamStartTime'] = eventStreamStartTimeValue;
    }
    map['name'] = name;
    return map;
  }

  factory EventStream.fromMap(Map<String, dynamic> map) {
    return EventStream(
      eventStreamExpirationTime: map['eventStreamExpirationTime'] == null
          ? null
          : map['eventStreamExpirationTime'] as String,
      eventStreamStartTime: map['eventStreamStartTime'] == null
          ? null
          : map['eventStreamStartTime'] as String,
      name: map['name'] as String,
    );
  }
}
