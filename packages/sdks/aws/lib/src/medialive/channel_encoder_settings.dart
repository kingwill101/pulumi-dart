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
  final List<ChannelEncoderSettingsAudioDescription>? audioDescriptions;
  /// Settings for ad avail blanking. See Avail Blanking for more details.
  final ChannelEncoderSettingsAvailBlanking? availBlanking;
  /// Caption Descriptions. See Caption Descriptions for more details.
  final List<ChannelEncoderSettingsCaptionDescription>? captionDescriptions;
  /// Configuration settings that apply to the event as a whole. See Global Configuration for more details.
  final ChannelEncoderSettingsGlobalConfiguration? globalConfiguration;
  /// Settings for motion graphics. See Motion Graphics Configuration for more details.
  final ChannelEncoderSettingsMotionGraphicsConfiguration? motionGraphicsConfiguration;
  /// Nielsen configuration settings. See Nielsen Configuration for more details.
  final ChannelEncoderSettingsNielsenConfiguration? nielsenConfiguration;
  /// Output groups for the channel. See Output Groups for more details.
  final List<ChannelEncoderSettingsOutputGroup> outputGroups;
  /// Contains settings used to acquire and adjust timecode information from inputs. See Timecode Config for more details.
  final ChannelEncoderSettingsTimecodeConfig timecodeConfig;
  /// Video Descriptions. See Video Descriptions for more details.
  final List<ChannelEncoderSettingsVideoDescription>? videoDescriptions;

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
  ChannelEncoderSettings({
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
      'audioDescriptions': ?audioDescriptions == null ? null : pulumi.Input.encodeList<ChannelEncoderSettingsAudioDescription, Map<String, dynamic>>(audioDescriptions!, (value) => value.toMap()),
      'availBlanking': ?availBlanking == null ? null : availBlanking!.toMap(),
      'captionDescriptions': ?captionDescriptions == null ? null : pulumi.Input.encodeList<ChannelEncoderSettingsCaptionDescription, Map<String, dynamic>>(captionDescriptions!, (value) => value.toMap()),
      'globalConfiguration': ?globalConfiguration == null ? null : globalConfiguration!.toMap(),
      'motionGraphicsConfiguration': ?motionGraphicsConfiguration == null ? null : motionGraphicsConfiguration!.toMap(),
      'nielsenConfiguration': ?nielsenConfiguration == null ? null : nielsenConfiguration!.toMap(),
      'outputGroups': pulumi.Input.encodeList<ChannelEncoderSettingsOutputGroup, Map<String, dynamic>>(outputGroups, (value) => value.toMap()),
      'timecodeConfig': timecodeConfig.toMap(),
      'videoDescriptions': ?videoDescriptions == null ? null : pulumi.Input.encodeList<ChannelEncoderSettingsVideoDescription, Map<String, dynamic>>(videoDescriptions!, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettings(
      audioDescriptions: map['audioDescriptions'] == null ? null : pulumi.Input.decodeList<ChannelEncoderSettingsAudioDescription>(map['audioDescriptions'], (value) => ChannelEncoderSettingsAudioDescription.fromMap((value as Map).cast<String, dynamic>())),
      availBlanking: map['availBlanking'] == null ? null : ChannelEncoderSettingsAvailBlanking.fromMap((map['availBlanking'] as Map).cast<String, dynamic>()),
      captionDescriptions: map['captionDescriptions'] == null ? null : pulumi.Input.decodeList<ChannelEncoderSettingsCaptionDescription>(map['captionDescriptions'], (value) => ChannelEncoderSettingsCaptionDescription.fromMap((value as Map).cast<String, dynamic>())),
      globalConfiguration: map['globalConfiguration'] == null ? null : ChannelEncoderSettingsGlobalConfiguration.fromMap((map['globalConfiguration'] as Map).cast<String, dynamic>()),
      motionGraphicsConfiguration: map['motionGraphicsConfiguration'] == null ? null : ChannelEncoderSettingsMotionGraphicsConfiguration.fromMap((map['motionGraphicsConfiguration'] as Map).cast<String, dynamic>()),
      nielsenConfiguration: map['nielsenConfiguration'] == null ? null : ChannelEncoderSettingsNielsenConfiguration.fromMap((map['nielsenConfiguration'] as Map).cast<String, dynamic>()),
      outputGroups: pulumi.Input.decodeList<ChannelEncoderSettingsOutputGroup>(map['outputGroups'], (value) => ChannelEncoderSettingsOutputGroup.fromMap((value as Map).cast<String, dynamic>())),
      timecodeConfig: ChannelEncoderSettingsTimecodeConfig.fromMap((map['timecodeConfig'] as Map).cast<String, dynamic>()),
      videoDescriptions: map['videoDescriptions'] == null ? null : pulumi.Input.decodeList<ChannelEncoderSettingsVideoDescription>(map['videoDescriptions'], (value) => ChannelEncoderSettingsVideoDescription.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

