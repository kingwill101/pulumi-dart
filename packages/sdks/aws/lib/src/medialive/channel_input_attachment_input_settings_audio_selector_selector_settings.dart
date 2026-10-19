// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_audio_selector_selector_settings_audio_hls_rendition_selection.dart';
import 'channel_input_attachment_input_settings_audio_selector_selector_settings_audio_language_selection.dart';
import 'channel_input_attachment_input_settings_audio_selector_selector_settings_audio_pid_selection.dart';
import 'channel_input_attachment_input_settings_audio_selector_selector_settings_audio_track_selection.dart';

class ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings {
  /// HLS rendition selection. See `audioHlsRenditionSelection` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection?>? audioHlsRenditionSelection;
  /// Language selection. See `audioLanguageSelection` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection?>? audioLanguageSelection;
  /// PID selection. See `audioPidSelection` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection?>? audioPidSelection;
  /// Track selection. See `audioTrackSelection` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection?>? audioTrackSelection;

  /// Creates a new [ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings].
  /// [audioHlsRenditionSelection] HLS rendition selection. See `audioHlsRenditionSelection` Block for details.
  /// [audioLanguageSelection] Language selection. See `audioLanguageSelection` Block for details.
  /// [audioPidSelection] PID selection. See `audioPidSelection` Block for details.
  /// [audioTrackSelection] Track selection. See `audioTrackSelection` Block for details.
  const ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings({
    this.audioHlsRenditionSelection,
    this.audioLanguageSelection,
    this.audioPidSelection,
    this.audioTrackSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioHlsRenditionSelection': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection, Map<String, dynamic>>(audioHlsRenditionSelection, (value) => value.toMap()),
      'audioLanguageSelection': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection, Map<String, dynamic>>(audioLanguageSelection, (value) => value.toMap()),
      'audioPidSelection': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection, Map<String, dynamic>>(audioPidSelection, (value) => value.toMap()),
      'audioTrackSelection': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection, Map<String, dynamic>>(audioTrackSelection, (value) => value.toMap()),
    };
  }

  factory ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettings(
      audioHlsRenditionSelection: (() { final guardedValue = map['audioHlsRenditionSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      audioLanguageSelection: (() { final guardedValue = map['audioLanguageSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      audioPidSelection: (() { final guardedValue = map['audioPidSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioPidSelection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      audioTrackSelection: (() { final guardedValue = map['audioTrackSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
