// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings {
  /// Language to consider when translating the image-based source to text, for a referencing WebVTT caption description.
  final pulumi.Input<String?>? ocrLanguage;
  /// PID field used with the caption selector `languageCode` field as follows. Specify PID and language: extracts captions from that PID; the language is informational. Specify PID and omit language: extracts the specified PID. Omit PID and specify language: extracts the specified language, whichever PID that happens to be. Omit PID and omit language: valid only if the source is DVB-Sub that is being passed through; all languages are passed through.
  final pulumi.Input<int?>? pid;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings].
  /// [ocrLanguage] Language to consider when translating the image-based source to text, for a referencing WebVTT caption description.
  /// [pid] PID field used with the caption selector `languageCode` field as follows. Specify PID and language: extracts captions from that PID; the language is informational. Specify PID and omit language: extracts the specified PID. Omit PID and specify language: extracts the specified language, whichever PID that happens to be. Omit PID and omit language: valid only if the source is DVB-Sub that is being passed through; all languages are passed through.
  const ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings({
    this.ocrLanguage,
    this.pid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ocrLanguage': ?ocrLanguage,
      'pid': ?pid,
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings(
      ocrLanguage: (() { final guardedValue = map['ocrLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pid: (() { final guardedValue = map['pid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
