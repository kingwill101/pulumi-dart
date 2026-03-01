// ignore_for_file: unused_element, unnecessary_cast


class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection {
  /// Selects a specific three-letter language code from within an audio source.
  final String languageCode;
  /// When set to “strict”, the transport stream demux strictly identifies audio streams by their language descriptor. If a PMT update occurs such that an audio stream matching the initially selected language is no longer present then mute will be encoded until the language returns. If “loose”, then on a PMT update the demux will choose another audio stream in the program with the same stream type if it can’t find one with the same language.
  final String? languageSelectionPolicy;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection].
  /// [languageCode] Selects a specific three-letter language code from within an audio source.
  /// [languageSelectionPolicy] When set to “strict”, the transport stream demux strictly identifies audio streams by their language descriptor. If a PMT update occurs such that an audio stream matching the initially selected language is no longer present then mute will be encoded until the language returns. If “loose”, then on a PMT update the demux will choose another audio stream in the program with the same stream type if it can’t find one with the same language.
  ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection({
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
      languageCode: map['languageCode'] as String,
      languageSelectionPolicy: map['languageSelectionPolicy'] == null ? null : map['languageSelectionPolicy'] as String,
    );
  }
}

