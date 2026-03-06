// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping {
  final pulumi.Input<int> captionChannel;
  final pulumi.Input<String> languageCode;
  /// Human readable information to indicate captions available for players (eg. English, or Spanish).
  final pulumi.Input<String> languageDescription;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping].
  /// [captionChannel] Required.
  /// [languageCode] Required.
  /// [languageDescription] Human readable information to indicate captions available for players (eg. English, or Spanish).
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping({
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
      captionChannel: pulumi.Input.fromValue(map['captionChannel'] as int),
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      languageDescription: pulumi.Input.fromValue(map['languageDescription'] as String),
    );
  }
}

