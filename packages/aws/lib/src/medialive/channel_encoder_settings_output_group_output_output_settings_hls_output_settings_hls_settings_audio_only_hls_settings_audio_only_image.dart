// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage {
  final String? passwordParam;
  final String uri;
  final String? username;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage].
  /// [passwordParam] Optional.
  /// [uri] Required.
  /// [username] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage({
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

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage(
      passwordParam: map['passwordParam'] == null
          ? null
          : map['passwordParam'] as String,
      uri: map['uri'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
