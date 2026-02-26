// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../channel_encoder_settings_audio_description_remix_settings_channel_mapping_input_channel_level/channel_encoder_settings_audio_description_remix_settings_channel_mapping_input_channel_level.dart';

class ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping {
  final List<
          ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel>
      inputChannelLevels;
  final int outputChannel;

  ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping({
    required this.inputChannelLevels,
    required this.outputChannel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputChannelLevels'] = Input.encodeList<
        ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel,
        Map<String, dynamic>>(inputChannelLevels, (value) => value.toMap());
    map['outputChannel'] = outputChannel;
    return map;
  }

  factory ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping(
      inputChannelLevels: Input.decodeList<
              ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel>(
          map['inputChannelLevels'],
          (value) =>
              ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel
                  .fromMap((value as Map).cast<String, dynamic>())),
      outputChannel: map['outputChannel'] as int,
    );
  }
}
