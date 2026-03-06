// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings_audio_silence_settings.dart';
import 'channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings_input_loss_settings.dart';
import 'channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings_video_black_settings.dart';

class ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings {
  /// MediaLive will perform a failover if the specified audio selector is silent for the specified period. See Audio Silence Failover Settings for more details.
  final pulumi.Input<ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings>? audioSilenceSettings;
  /// MediaLive will perform a failover if content is not detected in this input for the specified period. See Input Loss Failover Settings for more details.
  final pulumi.Input<ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings>? inputLossSettings;
  /// MediaLive will perform a failover if content is considered black for the specified period. See Video Black Failover Settings for more details.
  final pulumi.Input<ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings>? videoBlackSettings;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings].
  /// [audioSilenceSettings] MediaLive will perform a failover if the specified audio selector is silent for the specified period. See Audio Silence Failover Settings for more details.
  /// [inputLossSettings] MediaLive will perform a failover if content is not detected in this input for the specified period. See Input Loss Failover Settings for more details.
  /// [videoBlackSettings] MediaLive will perform a failover if content is considered black for the specified period. See Video Black Failover Settings for more details.
  const ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings({
    this.audioSilenceSettings,
    this.inputLossSettings,
    this.videoBlackSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioSilenceSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings, Map<String, dynamic>>(audioSilenceSettings, (value) => value.toMap()),
      'inputLossSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings, Map<String, dynamic>>(inputLossSettings, (value) => value.toMap()),
      'videoBlackSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings, Map<String, dynamic>>(videoBlackSettings, (value) => value.toMap()),
    };
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings(
      audioSilenceSettings: (() { final guardedValue = map['audioSilenceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputLossSettings: (() { final guardedValue = map['inputLossSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      videoBlackSettings: (() { final guardedValue = map['videoBlackSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

