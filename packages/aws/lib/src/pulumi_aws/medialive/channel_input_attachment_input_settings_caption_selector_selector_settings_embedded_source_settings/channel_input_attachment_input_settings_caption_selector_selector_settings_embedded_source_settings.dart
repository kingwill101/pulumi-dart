// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings {
  /// If upconvert, 608 data is both passed through via the “608 compatibility bytes” fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
  final String? convert608To708;

  /// Set to “auto” to handle streams with intermittent and/or non-aligned SCTE-20 and Embedded captions.
  final String? scte20Detection;

  /// Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
  final int? source608ChannelNumber;

  ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings({
    this.convert608To708,
    this.scte20Detection,
    this.source608ChannelNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final convert608To708Value = convert608To708;
    if (convert608To708Value != null) {
      map['convert608To708'] = convert608To708Value;
    }
    final scte20DetectionValue = scte20Detection;
    if (scte20DetectionValue != null) {
      map['scte20Detection'] = scte20DetectionValue;
    }
    final source608ChannelNumberValue = source608ChannelNumber;
    if (source608ChannelNumberValue != null) {
      map['source608ChannelNumber'] = source608ChannelNumberValue;
    }
    return map;
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings(
      convert608To708: map['convert608To708'] == null
          ? null
          : map['convert608To708'] as String,
      scte20Detection: map['scte20Detection'] == null
          ? null
          : map['scte20Detection'] as String,
      source608ChannelNumber: map['source608ChannelNumber'] == null
          ? null
          : map['source608ChannelNumber'] as int,
    );
  }
}
