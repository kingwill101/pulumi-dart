// ignore_for_file: unused_element, unnecessary_cast

import 'channel_input_attachment_input_settings_audio_selector_selector_settings_audio_hls_rendition_selection.dart';
import 'channel_input_attachment_input_settings_audio_selector_selector_settings_audio_language_selection.dart';
import 'channel_input_attachment_input_settings_audio_selector_selector_settings_audio_pid_selection.dart';
import 'channel_input_attachment_input_settings_audio_selector_selector_settings_audio_track_selection.dart';

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings {
  /// Audio HLS Rendition Selection. See Audio HLS Rendition Selection for more details.
  final ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection?
  audioHlsRenditionSelection;

  /// Audio Language Selection. See Audio Language Selection for more details.
  final ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection?
  audioLanguageSelection;

  /// Audio Pid Selection. See Audio PID Selection for more details.
  final ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection?
  audioPidSelection;

  /// Audio Track Selection. See Audio Track Selection for more details.
  final ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection?
  audioTrackSelection;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings].
  /// [audioHlsRenditionSelection] Audio HLS Rendition Selection. See Audio HLS Rendition Selection for more details.
  /// [audioLanguageSelection] Audio Language Selection. See Audio Language Selection for more details.
  /// [audioPidSelection] Audio Pid Selection. See Audio PID Selection for more details.
  /// [audioTrackSelection] Audio Track Selection. See Audio Track Selection for more details.
  ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings({
    this.audioHlsRenditionSelection,
    this.audioLanguageSelection,
    this.audioPidSelection,
    this.audioTrackSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioHlsRenditionSelection': ?audioHlsRenditionSelection == null
          ? null
          : audioHlsRenditionSelection!.toMap(),
      'audioLanguageSelection': ?audioLanguageSelection == null
          ? null
          : audioLanguageSelection!.toMap(),
      'audioPidSelection': ?audioPidSelection == null
          ? null
          : audioPidSelection!.toMap(),
      'audioTrackSelection': ?audioTrackSelection == null
          ? null
          : audioTrackSelection!.toMap(),
    };
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings(
      audioHlsRenditionSelection: map['audioHlsRenditionSelection'] == null
          ? null
          : ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection.fromMap(
              (map['audioHlsRenditionSelection'] as Map)
                  .cast<String, dynamic>(),
            ),
      audioLanguageSelection: map['audioLanguageSelection'] == null
          ? null
          : ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection.fromMap(
              (map['audioLanguageSelection'] as Map).cast<String, dynamic>(),
            ),
      audioPidSelection: map['audioPidSelection'] == null
          ? null
          : ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection.fromMap(
              (map['audioPidSelection'] as Map).cast<String, dynamic>(),
            ),
      audioTrackSelection: map['audioTrackSelection'] == null
          ? null
          : ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection.fromMap(
              (map['audioTrackSelection'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
