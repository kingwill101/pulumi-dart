// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont {
  /// Key used to extract the password from EC2 Parameter store.
  final String? passwordParam;

  /// Path to a file accessible to the live stream.
  final String uri;

  /// Username to be used.
  final String? username;

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
    final map = <String, dynamic>{};
    final passwordParamValue = passwordParam;
    if (passwordParamValue != null) {
      map['passwordParam'] = passwordParamValue;
    }
    map['uri'] = uri;
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont(
      passwordParam:
          map['passwordParam'] == null ? null : map['passwordParam'] as String,
      uri: map['uri'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
