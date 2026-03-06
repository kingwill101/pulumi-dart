// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_audio_description.dart';
import 'channel_encoder_settings_avail_blanking.dart';
import 'channel_encoder_settings_caption_description.dart';
import 'channel_encoder_settings_global_configuration.dart';
import 'channel_encoder_settings_motion_graphics_configuration.dart';
import 'channel_encoder_settings_nielsen_configuration.dart';
import 'channel_encoder_settings_output_group.dart';
import 'channel_encoder_settings_timecode_config.dart';
import 'channel_encoder_settings_video_description.dart';

class ChannelEncoderSettings {
  /// Audio descriptions for the channel. See Audio Descriptions for more details.
  final pulumi.Input<List<ChannelEncoderSettingsAudioDescription>>? audioDescriptions;
  /// Settings for ad avail blanking. See Avail Blanking for more details.
  final pulumi.Input<ChannelEncoderSettingsAvailBlanking>? availBlanking;
  /// Caption Descriptions. See Caption Descriptions for more details.
  final pulumi.Input<List<ChannelEncoderSettingsCaptionDescription>>? captionDescriptions;
  /// Configuration settings that apply to the event as a whole. See Global Configuration for more details.
  final pulumi.Input<ChannelEncoderSettingsGlobalConfiguration>? globalConfiguration;
  /// Settings for motion graphics. See Motion Graphics Configuration for more details.
  final pulumi.Input<ChannelEncoderSettingsMotionGraphicsConfiguration>? motionGraphicsConfiguration;
  /// Nielsen configuration settings. See Nielsen Configuration for more details.
  final pulumi.Input<ChannelEncoderSettingsNielsenConfiguration>? nielsenConfiguration;
  /// Output groups for the channel. See Output Groups for more details.
  final pulumi.Input<List<ChannelEncoderSettingsOutputGroup>> outputGroups;
  /// Contains settings used to acquire and adjust timecode information from inputs. See Timecode Config for more details.
  final pulumi.Input<ChannelEncoderSettingsTimecodeConfig> timecodeConfig;
  /// Video Descriptions. See Video Descriptions for more details.
  final pulumi.Input<List<ChannelEncoderSettingsVideoDescription>>? videoDescriptions;

  /// Creates a new [ChannelEncoderSettings].
  /// [audioDescriptions] Audio descriptions for the channel. See Audio Descriptions for more details.
  /// [availBlanking] Settings for ad avail blanking. See Avail Blanking for more details.
  /// [captionDescriptions] Caption Descriptions. See Caption Descriptions for more details.
  /// [globalConfiguration] Configuration settings that apply to the event as a whole. See Global Configuration for more details.
  /// [motionGraphicsConfiguration] Settings for motion graphics. See Motion Graphics Configuration for more details.
  /// [nielsenConfiguration] Nielsen configuration settings. See Nielsen Configuration for more details.
  /// [outputGroups] Output groups for the channel. See Output Groups for more details.
  /// [timecodeConfig] Contains settings used to acquire and adjust timecode information from inputs. See Timecode Config for more details.
  /// [videoDescriptions] Video Descriptions. See Video Descriptions for more details.
  const ChannelEncoderSettings({
    this.audioDescriptions,
    this.availBlanking,
    this.captionDescriptions,
    this.globalConfiguration,
    this.motionGraphicsConfiguration,
    this.nielsenConfiguration,
    required this.outputGroups,
    required this.timecodeConfig,
    this.videoDescriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioDescriptions': ?pulumi.Input.mapOptionalInputValue<List<ChannelEncoderSettingsAudioDescription>, List<Map<String, dynamic>>>(audioDescriptions, (value) => pulumi.Input.encodeList<ChannelEncoderSettingsAudioDescription, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availBlanking': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAvailBlanking, Map<String, dynamic>>(availBlanking, (value) => value.toMap()),
      'captionDescriptions': ?pulumi.Input.mapOptionalInputValue<List<ChannelEncoderSettingsCaptionDescription>, List<Map<String, dynamic>>>(captionDescriptions, (value) => pulumi.Input.encodeList<ChannelEncoderSettingsCaptionDescription, Map<String, dynamic>>(value, (value) => value.toMap())),
      'globalConfiguration': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsGlobalConfiguration, Map<String, dynamic>>(globalConfiguration, (value) => value.toMap()),
      'motionGraphicsConfiguration': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsMotionGraphicsConfiguration, Map<String, dynamic>>(motionGraphicsConfiguration, (value) => value.toMap()),
      'nielsenConfiguration': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsNielsenConfiguration, Map<String, dynamic>>(nielsenConfiguration, (value) => value.toMap()),
      'outputGroups': pulumi.Input.mapInputValue<List<ChannelEncoderSettingsOutputGroup>, List<Map<String, dynamic>>>(outputGroups, (value) => pulumi.Input.encodeList<ChannelEncoderSettingsOutputGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timecodeConfig': pulumi.Input.mapInputValue<ChannelEncoderSettingsTimecodeConfig, Map<String, dynamic>>(timecodeConfig, (value) => value.toMap()),
      'videoDescriptions': ?pulumi.Input.mapOptionalInputValue<List<ChannelEncoderSettingsVideoDescription>, List<Map<String, dynamic>>>(videoDescriptions, (value) => pulumi.Input.encodeList<ChannelEncoderSettingsVideoDescription, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChannelEncoderSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettings(
      audioDescriptions: (() { final guardedValue = map['audioDescriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelEncoderSettingsAudioDescription>(guardedValue, (value) => ChannelEncoderSettingsAudioDescription.fromMap((value as Map).cast<String, dynamic>()))); })(),
      availBlanking: (() { final guardedValue = map['availBlanking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsAvailBlanking.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      captionDescriptions: (() { final guardedValue = map['captionDescriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelEncoderSettingsCaptionDescription>(guardedValue, (value) => ChannelEncoderSettingsCaptionDescription.fromMap((value as Map).cast<String, dynamic>()))); })(),
      globalConfiguration: (() { final guardedValue = map['globalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsGlobalConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      motionGraphicsConfiguration: (() { final guardedValue = map['motionGraphicsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsMotionGraphicsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nielsenConfiguration: (() { final guardedValue = map['nielsenConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsNielsenConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelEncoderSettingsOutputGroup>(map['outputGroups']!, (value) => ChannelEncoderSettingsOutputGroup.fromMap((value as Map).cast<String, dynamic>()))),
      timecodeConfig: pulumi.Input.fromValue(ChannelEncoderSettingsTimecodeConfig.fromMap((map['timecodeConfig']! as Map).cast<String, dynamic>())),
      videoDescriptions: (() { final guardedValue = map['videoDescriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelEncoderSettingsVideoDescription>(guardedValue, (value) => ChannelEncoderSettingsVideoDescription.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

