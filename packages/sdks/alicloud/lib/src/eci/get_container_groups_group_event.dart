// ignore_for_file: unused_element, unnecessary_cast


class GetContainerGroupsGroupEvent {
  /// The number of events.
  final int count;
  /// The time when the event started.
  final String firstTimestamp;
  /// The time when the event ended.
  final String lastTimestamp;
  /// The content of the event.
  final String message;
  /// The name of the object to which the event belongs.
  final String name;
  /// The name of the event.
  final String reason;
  /// The type of the event. Valid values: Normal and Warning.
  final String type;

  /// Creates a new [GetContainerGroupsGroupEvent].
  /// [count] The number of events.
  /// [firstTimestamp] The time when the event started.
  /// [lastTimestamp] The time when the event ended.
  /// [message] The content of the event.
  /// [name] The name of the object to which the event belongs.
  /// [reason] The name of the event.
  /// [type] The type of the event. Valid values: Normal and Warning.
  GetContainerGroupsGroupEvent({
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

  factory GetContainerGroupsGroupEvent.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupEvent(
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

