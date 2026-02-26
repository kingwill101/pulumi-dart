// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../channel_encoder_settings_audio_description_remix_settings_channel_mapping/channel_encoder_settings_audio_description_remix_settings_channel_mapping.dart';

class ChannelEncoderSettingsAudioDescriptionRemixSettings {
  final List<ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping>
      channelMappings;
  final int? channelsIn;
  final int? channelsOut;

  ChannelEncoderSettingsAudioDescriptionRemixSettings({
    required this.channelMappings,
    this.channelsIn,
    this.channelsOut,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelMappings'] = Input.encodeList<
        ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping,
        Map<String, dynamic>>(channelMappings, (value) => value.toMap());
    final channelsInValue = channelsIn;
    if (channelsInValue != null) {
      map['channelsIn'] = channelsInValue;
    }
    final channelsOutValue = channelsOut;
    if (channelsOutValue != null) {
      map['channelsOut'] = channelsOutValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsAudioDescriptionRemixSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionRemixSettings(
      channelMappings: Input.decodeList<
              ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping>(
          map['channelMappings'],
          (value) =>
              ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping
                  .fromMap((value as Map).cast<String, dynamic>())),
      channelsIn: map['channelsIn'] == null ? null : map['channelsIn'] as int,
      channelsOut:
          map['channelsOut'] == null ? null : map['channelsOut'] as int,
    );
  }
}
