// ignore_for_file: unused_element, unnecessary_cast

import 'channel_input_attachment_input_settings_caption_selector_selector_settings.dart';

class ChannelInputAttachmentInputSettingsCaptionSelector {
  final String? languageCode;

  /// Name of the Channel.
  ///
  /// The following arguments are optional:
  final String name;
  final ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings?
  selectorSettings;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelector].
  /// [languageCode] Optional.
  /// [name] Name of the Channel.
  /// [selectorSettings] Optional.
  ChannelInputAttachmentInputSettingsCaptionSelector({
    this.languageCode,
    required this.name,
    this.selectorSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': ?languageCode,
      'name': name,
      'selectorSettings': ?selectorSettings == null
          ? null
          : selectorSettings!.toMap(),
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentInputSettingsCaptionSelector(
      languageCode: map['languageCode'] == null
          ? null
          : map['languageCode'] as String,
      name: map['name'] as String,
      selectorSettings: map['selectorSettings'] == null
          ? null
          : ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings.fromMap(
              (map['selectorSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
