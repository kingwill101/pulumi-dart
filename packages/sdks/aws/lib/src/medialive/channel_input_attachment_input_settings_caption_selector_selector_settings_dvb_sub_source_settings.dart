// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings {
  /// Language to consider when translating the image-based source to text, for a referencing WebVTT caption description.
  final pulumi.Input<String?>? ocrLanguage;
  /// PID for the source content when using DVB-Sub with Burn-In or SMPTE-TT. Unused for DVB-Sub passthrough. All DVB-Sub content is passed through, regardless of selectors.
  final pulumi.Input<int?>? pid;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings].
  /// [ocrLanguage] Language to consider when translating the image-based source to text, for a referencing WebVTT caption description.
  /// [pid] PID for the source content when using DVB-Sub with Burn-In or SMPTE-TT. Unused for DVB-Sub passthrough. All DVB-Sub content is passed through, regardless of selectors.
  const ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings({
    this.ocrLanguage,
    this.pid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ocrLanguage': ?ocrLanguage,
      'pid': ?pid,
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings(
      ocrLanguage: (() { final guardedValue = map['ocrLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pid: (() { final guardedValue = map['pid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
