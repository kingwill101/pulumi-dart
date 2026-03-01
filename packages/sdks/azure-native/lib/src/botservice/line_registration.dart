// ignore_for_file: unused_element, unnecessary_cast


/// The properties corresponding to a line channel registration
class LineRegistration {
  /// Access token for the line channel registration
  final String? channelAccessToken;
  /// Secret for the line channel registration
  final String? channelSecret;

  /// Creates a new [LineRegistration].
  /// [channelAccessToken] Access token for the line channel registration
  /// [channelSecret] Secret for the line channel registration
  LineRegistration({
    this.channelAccessToken,
    this.channelSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelAccessToken': ?channelAccessToken,
      'channelSecret': ?channelSecret,
    };
  }

  factory LineRegistration.fromMap(Map<String, dynamic> map) {
    return LineRegistration(
      channelAccessToken: map['channelAccessToken'] == null ? null : map['channelAccessToken'] as String,
      channelSecret: map['channelSecret'] == null ? null : map['channelSecret'] as String,
    );
  }
}

