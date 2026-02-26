// ignore_for_file: unused_element, unnecessary_cast

class SessionInfoResponse {
  /// // [Preview] Id of the session.
  final String sessionId;

  SessionInfoResponse({
    required this.sessionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sessionId'] = sessionId;
    return map;
  }

  factory SessionInfoResponse.fromMap(Map<String, dynamic> map) {
    return SessionInfoResponse(
      sessionId: map['sessionId'] as String,
    );
  }
}
