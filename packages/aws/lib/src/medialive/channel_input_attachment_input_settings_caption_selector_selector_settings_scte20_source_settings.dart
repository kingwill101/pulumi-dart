// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings {
  final String? convert608To708;
  final int? source608ChannelNumber;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings].
  /// [convert608To708] Optional.
  /// [source608ChannelNumber] Optional.
  ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings({
    this.convert608To708,
    this.source608ChannelNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'convert608To708': ?convert608To708,
      'source608ChannelNumber': ?source608ChannelNumber,
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings.fromMap(
    Map<String, dynamic> map,
  ) {
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
