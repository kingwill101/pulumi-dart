// ignore_for_file: unused_element, unnecessary_cast


class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings {
  final String? ocrLanguage;
  final int? pid;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings].
  /// [ocrLanguage] Optional.
  /// [pid] Optional.
  ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings({
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
      ocrLanguage: map['ocrLanguage'] == null ? null : map['ocrLanguage'] as String,
      pid: map['pid'] == null ? null : map['pid'] as int,
    );
  }
}

