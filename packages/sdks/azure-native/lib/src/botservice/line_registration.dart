// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties corresponding to a line channel registration
class LineRegistration {
  /// Access token for the line channel registration
  final pulumi.Input<String>? channelAccessToken;
  /// Secret for the line channel registration
  final pulumi.Input<String>? channelSecret;

  /// Creates a new [LineRegistration].
  /// [channelAccessToken] Access token for the line channel registration
  /// [channelSecret] Secret for the line channel registration
  const LineRegistration({
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
      channelAccessToken: (() { final guardedValue = map['channelAccessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelSecret: (() { final guardedValue = map['channelSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

