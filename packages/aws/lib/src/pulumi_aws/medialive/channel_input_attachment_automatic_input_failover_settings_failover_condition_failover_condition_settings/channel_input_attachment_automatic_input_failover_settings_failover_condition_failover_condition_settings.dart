// ignore_for_file: unused_element, unnecessary_cast

import '../channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings_audio_silence_settings/channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings_audio_silence_settings.dart';
import '../channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings_input_loss_settings/channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings_input_loss_settings.dart';
import '../channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings_video_black_settings/channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings_video_black_settings.dart';

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

  ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings({
    this.audioSilenceSettings,
    this.inputLossSettings,
    this.videoBlackSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioSilenceSettingsValue = audioSilenceSettings;
    if (audioSilenceSettingsValue != null) {
      map['audioSilenceSettings'] = audioSilenceSettingsValue.toMap();
    }
    final inputLossSettingsValue = inputLossSettings;
    if (inputLossSettingsValue != null) {
      map['inputLossSettings'] = inputLossSettingsValue.toMap();
    }
    final videoBlackSettingsValue = videoBlackSettings;
    if (videoBlackSettingsValue != null) {
      map['videoBlackSettings'] = videoBlackSettingsValue.toMap();
    }
    return map;
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings(
      audioSilenceSettings: map['audioSilenceSettings'] == null
          ? null
          : ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings
              .fromMap(
                  (map['audioSilenceSettings'] as Map).cast<String, dynamic>()),
      inputLossSettings: map['inputLossSettings'] == null
          ? null
          : ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings
              .fromMap(
                  (map['inputLossSettings'] as Map).cast<String, dynamic>()),
      videoBlackSettings: map['videoBlackSettings'] == null
          ? null
          : ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings
              .fromMap(
                  (map['videoBlackSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
