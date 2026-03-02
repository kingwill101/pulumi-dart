// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettingsFont {
  /// Key used to extract the password from EC2 Parameter store.
  final pulumi.Input<String>? passwordParam;
  /// Path to a file accessible to the live stream.
  final pulumi.Input<String> uri;
  /// Username to be used.
  final pulumi.Input<String>? username;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettingsFont].
  /// [passwordParam] Key used to extract the password from EC2 Parameter store.
  /// [uri] Path to a file accessible to the live stream.
  /// [username] Username to be used.
  ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettingsFont({
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

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettingsFont.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettingsFont(
      passwordParam: map['passwordParam'] == null ? null : ((map['passwordParam'] as String).input()).input(),
      uri: (map['uri'] as String).input(),
      username: map['username'] == null ? null : ((map['username'] as String).input()).input(),
    );
  }
}

