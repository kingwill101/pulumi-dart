// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings {
  /// If you will configure a WebVTT caption description that references this caption selector, use this field to provide the language to consider when translating the image-based source to text.
  final String? ocrLanguage;

  /// When using DVB-Sub with Burn-In or SMPTE-TT, use this PID for the source content. Unused for DVB-Sub passthrough. All DVB-Sub content is passed through, regardless of selectors.
  final int? pid;

  ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings({
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

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings(
      ocrLanguage:
          map['ocrLanguage'] == null ? null : map['ocrLanguage'] as String,
      pid: map['pid'] == null ? null : map['pid'] as int,
    );
  }
}
