// ignore_for_file: unused_element, unnecessary_cast


class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping {
  final int captionChannel;
  final String languageCode;
  /// Human readable information to indicate captions available for players (eg. English, or Spanish).
  final String languageDescription;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping].
  /// [captionChannel] Required.
  /// [languageCode] Required.
  /// [languageDescription] Human readable information to indicate captions available for players (eg. English, or Spanish).
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping({
    required this.captionChannel,
    required this.languageCode,
    required this.languageDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captionChannel': captionChannel,
      'languageCode': languageCode,
      'languageDescription': languageDescription,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping(
      captionChannel: map['captionChannel'] as int,
      languageCode: map['languageCode'] as String,
      languageDescription: map['languageDescription'] as String,
    );
  }
}

