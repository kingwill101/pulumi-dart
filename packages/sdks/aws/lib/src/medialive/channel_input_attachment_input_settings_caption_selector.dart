// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_caption_selector_selector_settings.dart';

class ChannelInputAttachmentInputSettingsCaptionSelector {
  final pulumi.Input<String>? languageCode;
  /// Name of the Channel.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings>? selectorSettings;

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
      'selectorSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings, Map<String, dynamic>>(selectorSettings, (value) => value.toMap()),
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelector.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelector(
      languageCode: map['languageCode'] == null ? null : ((map['languageCode'] as String).input()).input(),
      name: (map['name'] as String).input(),
      selectorSettings: map['selectorSettings'] == null ? null : ((ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings.fromMap((map['selectorSettings']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

