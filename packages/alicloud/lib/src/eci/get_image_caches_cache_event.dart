// ignore_for_file: unused_element, unnecessary_cast


class GetImageCachesCacheEvent {
  /// Number of events.
  final int count;
  /// Start time.
  final String firstTimestamp;
  /// End time.
  final String lastTimestamp;
  final String message;
  /// The name of event.
  final String name;
  /// The type of event.
  final String type;

  /// Creates a new [GetImageCachesCacheEvent].
  /// [count] Number of events.
  /// [firstTimestamp] Start time.
  /// [lastTimestamp] End time.
  /// [message] Required.
  /// [name] The name of event.
  /// [type] The type of event.
  GetImageCachesCacheEvent({
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

  factory GetImageCachesCacheEvent.fromMap(Map<String, dynamic> map) {
    return GetImageCachesCacheEvent(
      count: map['count'] as int,
      firstTimestamp: map['firstTimestamp'] as String,
      lastTimestamp: map['lastTimestamp'] as String,
      message: map['message'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

