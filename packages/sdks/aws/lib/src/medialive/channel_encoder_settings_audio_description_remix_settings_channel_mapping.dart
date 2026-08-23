// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_audio_description_remix_settings_channel_mapping_input_channel_level.dart';

class ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping {
  final pulumi.Input<List<ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel>> inputChannelLevels;
  final pulumi.Input<int> outputChannel;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping].
  /// [inputChannelLevels] Required.
  /// [outputChannel] Required.
  const ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping({
    required this.inputChannelLevels,
    required this.outputChannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputChannelLevels': pulumi.Input.mapInputValue<List<ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel>, List<Map<String, dynamic>>>(inputChannelLevels, (value) => pulumi.Input.encodeList<ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outputChannel': outputChannel,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMapping(
      inputChannelLevels: pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel>(map['inputChannelLevels']!, (value) => ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel.fromMap((value as Map).cast<String, dynamic>()))),
      outputChannel: pulumi.Input.fromValue(map['outputChannel'] as int),
    );
  }
}
