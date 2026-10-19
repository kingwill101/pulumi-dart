// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping {
  /// Caption channel to install in the output.
  final pulumi.Input<int> captionChannel;
  /// Three-character ISO 639-2 language code.
  final pulumi.Input<String> languageCode;
  /// Textual description of the language.
  final pulumi.Input<String> languageDescription;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping].
  /// [captionChannel] Caption channel to install in the output.
  /// [languageCode] Three-character ISO 639-2 language code.
  /// [languageDescription] Textual description of the language.
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
      captionChannel: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['captionChannel'])),
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      languageDescription: pulumi.Input.fromValue(map['languageDescription'] as String),
    );
  }
}
