// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings {
  /// When set to `upconvert`, 608 data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper and translated into 708. 708 data present in the source content is discarded.
  final pulumi.Input<String?>? convert608To708;
  /// 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
  final pulumi.Input<int?>? source608ChannelNumber;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings].
  /// [convert608To708] When set to `upconvert`, 608 data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper and translated into 708. 708 data present in the source content is discarded.
  /// [source608ChannelNumber] 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
  const ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings({
    this.convert608To708,
    this.source608ChannelNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'convert608To708': ?convert608To708,
      'source608ChannelNumber': ?source608ChannelNumber,
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings(
      convert608To708: (() { final guardedValue = map['convert608To708']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source608ChannelNumber: (() { final guardedValue = map['source608ChannelNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
