// ignore_for_file: unused_element, unnecessary_cast

import 'channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings_audio_silence_settings.dart';
import 'channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings_input_loss_settings.dart';
import 'channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings_video_black_settings.dart';

class ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings {
  /// MediaLive will perform a failover if the specified audio selector is silent for the specified period. See Audio Silence Failover Settings for more details.
  final ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings?
  audioSilenceSettings;

  /// MediaLive will perform a failover if content is not detected in this input for the specified period. See Input Loss Failover Settings for more details.
  final ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings?
  inputLossSettings;

  /// MediaLive will perform a failover if content is considered black for the specified period. See Video Black Failover Settings for more details.
  final ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings?
  videoBlackSettings;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings].
  /// [audioSilenceSettings] MediaLive will perform a failover if the specified audio selector is silent for the specified period. See Audio Silence Failover Settings for more details.
  /// [inputLossSettings] MediaLive will perform a failover if content is not detected in this input for the specified period. See Input Loss Failover Settings for more details.
  /// [videoBlackSettings] MediaLive will perform a failover if content is considered black for the specified period. See Video Black Failover Settings for more details.
  ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings({
    this.audioSilenceSettings,
    this.inputLossSettings,
    this.videoBlackSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioSilenceSettings': ?audioSilenceSettings == null
          ? null
          : audioSilenceSettings!.toMap(),
      'inputLossSettings': ?inputLossSettings == null
          ? null
          : inputLossSettings!.toMap(),
      'videoBlackSettings': ?videoBlackSettings == null
          ? null
          : videoBlackSettings!.toMap(),
    };
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings(
      audioSilenceSettings: map['audioSilenceSettings'] == null
          ? null
          : ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings.fromMap(
              (map['audioSilenceSettings'] as Map).cast<String, dynamic>(),
            ),
      inputLossSettings: map['inputLossSettings'] == null
          ? null
          : ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings.fromMap(
              (map['inputLossSettings'] as Map).cast<String, dynamic>(),
            ),
      videoBlackSettings: map['videoBlackSettings'] == null
          ? null
          : ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings.fromMap(
              (map['videoBlackSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
