// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_audio_description_remix_settings_channel_mapping.dart';

class ChannelEncoderSettingsAudioDescriptionRemixSettings {
  final pulumi.Input<List<ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping>> channelMappings;
  final pulumi.Input<int>? channelsIn;
  final pulumi.Input<int>? channelsOut;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionRemixSettings].
  /// [channelMappings] Required.
  /// [channelsIn] Optional.
  /// [channelsOut] Optional.
  ChannelEncoderSettingsAudioDescriptionRemixSettings({
    required this.channelMappings,
    this.channelsIn,
    this.channelsOut,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelMappings': pulumi.Input.mapInputValue<List<ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping>, List<Map<String, dynamic>>>(channelMappings, (value) => pulumi.Input.encodeList<ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'channelsIn': ?channelsIn,
      'channelsOut': ?channelsOut,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionRemixSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionRemixSettings(
      channelMappings: (pulumi.Input.decodeList<ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping>(map['channelMappings'], (value) => ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      channelsIn: map['channelsIn'] == null ? null : (map['channelsIn'] as int).input(),
      channelsOut: map['channelsOut'] == null ? null : (map['channelsOut'] as int).input(),
    );
  }
}

