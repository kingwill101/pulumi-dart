// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodesNodeEvent {
  /// The number of occurrences.
  final pulumi.Input<int> count;
  /// The first presentation time stamp.
  final pulumi.Input<String> firstTimestamp;
  /// The most recent time stamp.
  final pulumi.Input<String> lastTimestamp;
  /// The event of the message body.
  final pulumi.Input<String> message;
  /// The name of the event.
  final pulumi.Input<String> name;
  /// The causes of the incident.
  final pulumi.Input<String> reason;
  /// The Event type.
  final pulumi.Input<String> type;

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
      count: pulumi.Input.fromValue(map['count'] as int),
      firstTimestamp: pulumi.Input.fromValue(map['firstTimestamp'] as String),
      lastTimestamp: pulumi.Input.fromValue(map['lastTimestamp'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

