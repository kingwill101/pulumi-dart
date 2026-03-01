// ignore_for_file: unused_element, unnecessary_cast


/// Represents a remote support session.
class RemoteSupportSessionResponse {
  /// The level of access granted during the remote support session.
  final String accessLevel;
  /// The end time of the remote support session, in UTC.
  final String sessionEndTime;
  /// Unique session Id.
  final String sessionId;
  /// The start time of the remote support session, in UTC.
  final String sessionStartTime;
  /// The location where the session transcript is stored.
  final String transcriptLocation;

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
      accessLevel: map['accessLevel'] as String,
      sessionEndTime: map['sessionEndTime'] as String,
      sessionId: map['sessionId'] as String,
      sessionStartTime: map['sessionStartTime'] as String,
      transcriptLocation: map['transcriptLocation'] as String,
    );
  }
}

