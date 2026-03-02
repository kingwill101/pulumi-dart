// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainerGroupsGroupEvent {
  /// The number of events.
  final pulumi.Input<int> count;
  /// The time when the event started.
  final pulumi.Input<String> firstTimestamp;
  /// The time when the event ended.
  final pulumi.Input<String> lastTimestamp;
  /// The content of the event.
  final pulumi.Input<String> message;
  /// The name of the object to which the event belongs.
  final pulumi.Input<String> name;
  /// The name of the event.
  final pulumi.Input<String> reason;
  /// The type of the event. Valid values: Normal and Warning.
  final pulumi.Input<String> type;

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
      count: (map['count'] as int).input(),
      firstTimestamp: (map['firstTimestamp'] as String).input(),
      lastTimestamp: (map['lastTimestamp'] as String).input(),
      message: (map['message'] as String).input(),
      name: (map['name'] as String).input(),
      reason: (map['reason'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

