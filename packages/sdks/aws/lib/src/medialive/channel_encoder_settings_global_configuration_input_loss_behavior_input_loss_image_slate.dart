// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate {
  /// Key used to extract the password from EC2 Parameter store.
  final pulumi.Input<String?>? passwordParam;
  /// Path to a file accessible to the live stream.
  final pulumi.Input<String> uri;
  /// Username for the server.
  final pulumi.Input<String?>? username;

  /// Creates a new [ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate].
  /// [passwordParam] Key used to extract the password from EC2 Parameter store.
  /// [uri] Path to a file accessible to the live stream.
  /// [username] Username for the server.
  const ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordParam': ?passwordParam,
      'uri': uri,
      'username': ?username,
    };
  }

  factory ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate(
      passwordParam: (() { final guardedValue = map['passwordParam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
