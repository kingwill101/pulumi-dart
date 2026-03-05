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
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      selectorSettings: (() { final guardedValue = map['selectorSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

