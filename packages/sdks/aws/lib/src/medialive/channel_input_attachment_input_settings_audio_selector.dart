// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_audio_selector_selector_settings.dart';

class ChannelInputAttachmentInputSettingsAudioSelector {
  /// Name of the Channel.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  final pulumi.Input<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings>? selectorSettings;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelector].
  /// [name] Name of the Channel.
  /// [selectorSettings] Optional.
  ChannelInputAttachmentInputSettingsAudioSelector({
    required this.name,
    this.selectorSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'selectorSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings, Map<String, dynamic>>(selectorSettings, (value) => value.toMap()),
    };
  }

  factory ChannelInputAttachmentInputSettingsAudioSelector.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsAudioSelector(
      name: (map['name'] as String).input(),
      selectorSettings: map['selectorSettings'] == null ? null : ((ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings.fromMap((map['selectorSettings']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

