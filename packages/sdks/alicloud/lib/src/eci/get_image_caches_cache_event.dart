// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageCachesCacheEvent {
  /// Number of events.
  final pulumi.Input<int> count;
  /// Start time.
  final pulumi.Input<String> firstTimestamp;
  /// End time.
  final pulumi.Input<String> lastTimestamp;
  final pulumi.Input<String> message;
  /// The name of event.
  final pulumi.Input<String> name;
  /// The type of event.
  final pulumi.Input<String> type;

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
      count: (map['count'] as int).input(),
      firstTimestamp: (map['firstTimestamp'] as String).input(),
      lastTimestamp: (map['lastTimestamp'] as String).input(),
      message: (map['message'] as String).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

