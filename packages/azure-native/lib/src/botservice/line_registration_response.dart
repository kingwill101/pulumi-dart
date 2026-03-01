// ignore_for_file: unused_element, unnecessary_cast


/// The properties corresponding to a line channel registration
class LineRegistrationResponse {
  /// Access token for the line channel registration
  final String? channelAccessToken;
  /// Secret for the line channel registration
  final String? channelSecret;
  /// Id generated for the line channel registration
  final String generatedId;

  /// Creates a new [LineRegistrationResponse].
  /// [channelAccessToken] Access token for the line channel registration
  /// [channelSecret] Secret for the line channel registration
  /// [generatedId] Id generated for the line channel registration
  LineRegistrationResponse({
    this.channelAccessToken,
    this.channelSecret,
    required this.generatedId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelAccessToken': ?channelAccessToken,
      'channelSecret': ?channelSecret,
      'generatedId': generatedId,
    };
  }

  factory LineRegistrationResponse.fromMap(Map<String, dynamic> map) {
    return LineRegistrationResponse(
      channelAccessToken: map['channelAccessToken'] == null ? null : map['channelAccessToken'] as String,
      channelSecret: map['channelSecret'] == null ? null : map['channelSecret'] as String,
      generatedId: map['generatedId'] as String,
    );
  }
}

