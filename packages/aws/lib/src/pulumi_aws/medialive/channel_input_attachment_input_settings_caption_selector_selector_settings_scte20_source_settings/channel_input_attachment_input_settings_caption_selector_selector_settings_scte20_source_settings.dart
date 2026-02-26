// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings {
  final String? convert608To708;
  final int? source608ChannelNumber;

  ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings({
    this.convert608To708,
    this.source608ChannelNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final convert608To708Value = convert608To708;
    if (convert608To708Value != null) {
      map['convert608To708'] = convert608To708Value;
    }
    final source608ChannelNumberValue = source608ChannelNumber;
    if (source608ChannelNumberValue != null) {
      map['source608ChannelNumber'] = source608ChannelNumberValue;
    }
    return map;
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings(
      convert608To708: map['convert608To708'] == null
          ? null
          : map['convert608To708'] as String,
      source608ChannelNumber: map['source608ChannelNumber'] == null
          ? null
          : map['source608ChannelNumber'] as int,
    );
  }
}
