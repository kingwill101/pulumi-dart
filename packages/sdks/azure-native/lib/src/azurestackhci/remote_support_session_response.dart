// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a remote support session.
class RemoteSupportSessionResponse {
  /// The level of access granted during the remote support session.
  final pulumi.Input<String> accessLevel;
  /// The end time of the remote support session, in UTC.
  final pulumi.Input<String> sessionEndTime;
  /// Unique session Id.
  final pulumi.Input<String> sessionId;
  /// The start time of the remote support session, in UTC.
  final pulumi.Input<String> sessionStartTime;
  /// The location where the session transcript is stored.
  final pulumi.Input<String> transcriptLocation;

  /// Creates a new [RemoteSupportSessionResponse].
  /// [accessLevel] The level of access granted during the remote support session.
  /// [sessionEndTime] The end time of the remote support session, in UTC.
  /// [sessionId] Unique session Id.
  /// [sessionStartTime] The start time of the remote support session, in UTC.
  /// [transcriptLocation] The location where the session transcript is stored.
  RemoteSupportSessionResponse({
    required this.accessLevel,
    required this.sessionEndTime,
    required this.sessionId,
    required this.sessionStartTime,
    required this.transcriptLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': accessLevel,
      'sessionEndTime': sessionEndTime,
      'sessionId': sessionId,
      'sessionStartTime': sessionStartTime,
      'transcriptLocation': transcriptLocation,
    };
  }

  factory RemoteSupportSessionResponse.fromMap(Map<String, dynamic> map) {
    return RemoteSupportSessionResponse(
      accessLevel: pulumi.Input.fromValue(map['accessLevel'] as String),
      sessionEndTime: pulumi.Input.fromValue(map['sessionEndTime'] as String),
      sessionId: pulumi.Input.fromValue(map['sessionId'] as String),
      sessionStartTime: pulumi.Input.fromValue(map['sessionStartTime'] as String),
      transcriptLocation: pulumi.Input.fromValue(map['transcriptLocation'] as String),
    );
  }
}

