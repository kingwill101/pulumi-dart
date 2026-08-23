// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Remote Support Node Session Details on the Node.
class PerNodeRemoteSupportSessionResponse {
  /// Remote Support Access Level
  final pulumi.Input<String> accessLevel;
  /// Duration of Remote Support Enablement
  final pulumi.Input<double> duration;
  /// Name of the node
  final pulumi.Input<String> nodeName;
  /// Remote Support Session EndTime on the Node
  final pulumi.Input<String> sessionEndTime;
  /// Remote Support Session StartTime on the Node
  final pulumi.Input<String> sessionStartTime;

  /// Creates a new [PerNodeRemoteSupportSessionResponse].
  /// [accessLevel] Remote Support Access Level
  /// [duration] Duration of Remote Support Enablement
  /// [nodeName] Name of the node
  /// [sessionEndTime] Remote Support Session EndTime on the Node
  /// [sessionStartTime] Remote Support Session StartTime on the Node
  const PerNodeRemoteSupportSessionResponse({
    required this.accessLevel,
    required this.duration,
    required this.nodeName,
    required this.sessionEndTime,
    required this.sessionStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': accessLevel,
      'duration': duration,
      'nodeName': nodeName,
      'sessionEndTime': sessionEndTime,
      'sessionStartTime': sessionStartTime,
    };
  }

  factory PerNodeRemoteSupportSessionResponse.fromMap(Map<String, dynamic> map) {
    return PerNodeRemoteSupportSessionResponse(
      accessLevel: pulumi.Input.fromValue(map['accessLevel'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as double),
      nodeName: pulumi.Input.fromValue(map['nodeName'] as String),
      sessionEndTime: pulumi.Input.fromValue(map['sessionEndTime'] as String),
      sessionStartTime: pulumi.Input.fromValue(map['sessionStartTime'] as String),
    );
  }
}
