// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate {
  final pulumi.Input<String>? passwordParam;
  final pulumi.Input<String> uri;
  final pulumi.Input<String>? username;

  /// Creates a new [ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate].
  /// [passwordParam] Optional.
  /// [uri] Required.
  /// [username] Optional.
  ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate({
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
      passwordParam: map['passwordParam'] == null ? null : (map['passwordParam'] as String).input(),
      uri: (map['uri'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

