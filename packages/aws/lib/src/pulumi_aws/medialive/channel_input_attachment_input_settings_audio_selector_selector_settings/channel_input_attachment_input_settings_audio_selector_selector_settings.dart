// ignore_for_file: unused_element, unnecessary_cast

import '../channel_input_attachment_input_settings_audio_selector_selector_settings_audio_hls_rendition_selection/channel_input_attachment_input_settings_audio_selector_selector_settings_audio_hls_rendition_selection.dart';
import '../channel_input_attachment_input_settings_audio_selector_selector_settings_audio_language_selection/channel_input_attachment_input_settings_audio_selector_selector_settings_audio_language_selection.dart';
import '../channel_input_attachment_input_settings_audio_selector_selector_settings_audio_pid_selection/channel_input_attachment_input_settings_audio_selector_selector_settings_audio_pid_selection.dart';
import '../channel_input_attachment_input_settings_audio_selector_selector_settings_audio_track_selection/channel_input_attachment_input_settings_audio_selector_selector_settings_audio_track_selection.dart';

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

  ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings({
    this.audioHlsRenditionSelection,
    this.audioLanguageSelection,
    this.audioPidSelection,
    this.audioTrackSelection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioHlsRenditionSelectionValue = audioHlsRenditionSelection;
    if (audioHlsRenditionSelectionValue != null) {
      map['audioHlsRenditionSelection'] =
          audioHlsRenditionSelectionValue.toMap();
    }
    final audioLanguageSelectionValue = audioLanguageSelection;
    if (audioLanguageSelectionValue != null) {
      map['audioLanguageSelection'] = audioLanguageSelectionValue.toMap();
    }
    final audioPidSelectionValue = audioPidSelection;
    if (audioPidSelectionValue != null) {
      map['audioPidSelection'] = audioPidSelectionValue.toMap();
    }
    final audioTrackSelectionValue = audioTrackSelection;
    if (audioTrackSelectionValue != null) {
      map['audioTrackSelection'] = audioTrackSelectionValue.toMap();
    }
    return map;
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings(
      audioHlsRenditionSelection: map['audioHlsRenditionSelection'] == null
          ? null
          : ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection
              .fromMap((map['audioHlsRenditionSelection'] as Map)
                  .cast<String, dynamic>()),
      audioLanguageSelection: map['audioLanguageSelection'] == null
          ? null
          : ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection
              .fromMap((map['audioLanguageSelection'] as Map)
                  .cast<String, dynamic>()),
      audioPidSelection: map['audioPidSelection'] == null
          ? null
          : ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection
              .fromMap(
                  (map['audioPidSelection'] as Map).cast<String, dynamic>()),
      audioTrackSelection: map['audioTrackSelection'] == null
          ? null
          : ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection
              .fromMap(
                  (map['audioTrackSelection'] as Map).cast<String, dynamic>()),
    );
  }
}
