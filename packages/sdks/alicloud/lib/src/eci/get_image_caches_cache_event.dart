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
      count: pulumi.Input.fromValue(map['count'] as int),
      firstTimestamp: pulumi.Input.fromValue(map['firstTimestamp'] as String),
      lastTimestamp: pulumi.Input.fromValue(map['lastTimestamp'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
