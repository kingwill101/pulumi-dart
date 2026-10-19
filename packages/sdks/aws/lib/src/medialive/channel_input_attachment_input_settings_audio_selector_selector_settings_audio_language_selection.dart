// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection {
  /// Three-letter language code from within an audio source.
  final pulumi.Input<String> languageCode;
  /// How to handle a change in the language of the audio stream after it is selected. When set to `strict`, the transport stream demux strictly identifies audio streams by their language descriptor. If a PMT update occurs such that an audio stream matching the initially selected language is no longer present, then mute is encoded until the language returns. When set to `loose`, the demux chooses another audio stream in the program with the same stream type on a PMT update if it cannot find one with the same language.
  final pulumi.Input<String?>? languageSelectionPolicy;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection].
  /// [languageCode] Three-letter language code from within an audio source.
  /// [languageSelectionPolicy] How to handle a change in the language of the audio stream after it is selected. When set to `strict`, the transport stream demux strictly identifies audio streams by their language descriptor. If a PMT update occurs such that an audio stream matching the initially selected language is no longer present, then mute is encoded until the language returns. When set to `loose`, the demux chooses another audio stream in the program with the same stream type on a PMT update if it cannot find one with the same language.
  const ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection({
    required this.languageCode,
    this.languageSelectionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': languageCode,
      'languageSelectionPolicy': ?languageSelectionPolicy,
    };
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection(
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      languageSelectionPolicy: (() { final guardedValue = map['languageSelectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
