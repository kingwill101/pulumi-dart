// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings {
  final String? ocrLanguage;
  final int? pid;

  ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings({
    this.ocrLanguage,
    this.pid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ocrLanguageValue = ocrLanguage;
    if (ocrLanguageValue != null) {
      map['ocrLanguage'] = ocrLanguageValue;
    }
    final pidValue = pid;
    if (pidValue != null) {
      map['pid'] = pidValue;
    }
    return map;
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings(
      ocrLanguage:
          map['ocrLanguage'] == null ? null : map['ocrLanguage'] as String,
      pid: map['pid'] == null ? null : map['pid'] as int,
    );
  }
}
