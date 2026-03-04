// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings {
  final pulumi.Input<String>? ocrLanguage;
  final pulumi.Input<int>? pid;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings].
  /// [ocrLanguage] Optional.
  /// [pid] Optional.
  ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings({
    this.ocrLanguage,
    this.pid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ocrLanguage': ?ocrLanguage, 'pid': ?pid};
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings(
      ocrLanguage: (() {
        final guardedValue = map['ocrLanguage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pid: (() {
        final guardedValue = map['pid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
