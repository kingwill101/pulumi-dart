// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont {
  /// Key used to extract the password from EC2 Parameter store.
  final pulumi.Input<String>? passwordParam;
  /// Path to a file accessible to the live stream.
  final pulumi.Input<String> uri;
  /// Username to be used.
  final pulumi.Input<String>? username;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont].
  /// [passwordParam] Key used to extract the password from EC2 Parameter store.
  /// [uri] Path to a file accessible to the live stream.
  /// [username] Username to be used.
  ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont({
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

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont(
      passwordParam: map['passwordParam'] == null ? null : (map['passwordParam'] as String).input(),
      uri: (map['uri'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

