// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties corresponding to a line channel registration
class LineRegistrationResponse {
  /// Access token for the line channel registration
  final pulumi.Input<String?>? channelAccessToken;
  /// Secret for the line channel registration
  final pulumi.Input<String?>? channelSecret;
  /// Id generated for the line channel registration
  final pulumi.Input<String> generatedId;

  /// Creates a new [LineRegistrationResponse].
  /// [channelAccessToken] Access token for the line channel registration
  /// [channelSecret] Secret for the line channel registration
  /// [generatedId] Id generated for the line channel registration
  const LineRegistrationResponse({
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
      channelAccessToken: (() { final guardedValue = map['channelAccessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelSecret: (() { final guardedValue = map['channelSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generatedId: pulumi.Input.fromValue(map['generatedId'] as String),
    );
  }
}
