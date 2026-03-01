// ignore_for_file: unused_element, unnecessary_cast


/// Remote Support Node Session Details on the Node.
class PerNodeRemoteSupportSessionResponse {
  /// Remote Support Access Level
  final String accessLevel;
  /// Duration of Remote Support Enablement
  final double duration;
  /// Name of the node
  final String nodeName;
  /// Remote Support Session EndTime on the Node
  final String sessionEndTime;
  /// Remote Support Session StartTime on the Node
  final String sessionStartTime;

  /// Creates a new [PerNodeRemoteSupportSessionResponse].
  /// [accessLevel] Remote Support Access Level
  /// [duration] Duration of Remote Support Enablement
  /// [nodeName] Name of the node
  /// [sessionEndTime] Remote Support Session EndTime on the Node
  /// [sessionStartTime] Remote Support Session StartTime on the Node
  PerNodeRemoteSupportSessionResponse({
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
      accessLevel: map['accessLevel'] as String,
      duration: map['duration'] as double,
      nodeName: map['nodeName'] as String,
      sessionEndTime: map['sessionEndTime'] as String,
      sessionStartTime: map['sessionStartTime'] as String,
    );
  }
}

