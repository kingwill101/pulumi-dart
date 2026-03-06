// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings {
  /// If upconvert, 608 data is both passed through via the “608 compatibility bytes” fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
  final pulumi.Input<String>? convert608To708;
  /// Set to “auto” to handle streams with intermittent and/or non-aligned SCTE-20 and Embedded captions.
  final pulumi.Input<String>? scte20Detection;
  /// Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
  final pulumi.Input<int>? source608ChannelNumber;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings].
  /// [convert608To708] If upconvert, 608 data is both passed through via the “608 compatibility bytes” fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
  /// [scte20Detection] Set to “auto” to handle streams with intermittent and/or non-aligned SCTE-20 and Embedded captions.
  /// [source608ChannelNumber] Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
  const ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings({
    this.convert608To708,
    this.scte20Detection,
    this.source608ChannelNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'convert608To708': ?convert608To708,
      'scte20Detection': ?scte20Detection,
      'source608ChannelNumber': ?source608ChannelNumber,
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings(
      convert608To708: (() { final guardedValue = map['convert608To708']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scte20Detection: (() { final guardedValue = map['scte20Detection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source608ChannelNumber: (() { final guardedValue = map['source608ChannelNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

