// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodesNodeEvent {
  /// The number of occurrences.
  final int count;
  /// The first presentation time stamp.
  final String firstTimestamp;
  /// The most recent time stamp.
  final String lastTimestamp;
  /// The event of the message body.
  final String message;
  /// The name of the event.
  final String name;
  /// The causes of the incident.
  final String reason;
  /// The Event type.
  final String type;

  /// Creates a new [GetVirtualNodesNodeEvent].
  /// [count] The number of occurrences.
  /// [firstTimestamp] The first presentation time stamp.
  /// [lastTimestamp] The most recent time stamp.
  /// [message] The event of the message body.
  /// [name] The name of the event.
  /// [reason] The causes of the incident.
  /// [type] The Event type.
  GetVirtualNodesNodeEvent({
    required this.count,
    required this.firstTimestamp,
    required this.lastTimestamp,
    required this.message,
    required this.name,
    required this.reason,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'firstTimestamp': firstTimestamp,
      'lastTimestamp': lastTimestamp,
      'message': message,
      'name': name,
      'reason': reason,
      'type': type,
    };
  }

  factory GetVirtualNodesNodeEvent.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodesNodeEvent(
      count: map['count'] as int,
      firstTimestamp: map['firstTimestamp'] as String,
      lastTimestamp: map['lastTimestamp'] as String,
      message: map['message'] as String,
      name: map['name'] as String,
      reason: map['reason'] as String,
      type: map['type'] as String,
    );
  }
}

