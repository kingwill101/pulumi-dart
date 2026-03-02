// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel {
  final pulumi.Input<int> gain;
  final pulumi.Input<int> inputChannel;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel].
  /// [gain] Required.
  /// [inputChannel] Required.
  ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel({
    required this.gain,
    required this.inputChannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gain': gain,
      'inputChannel': inputChannel,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel(
      gain: (map['gain'] as int).input(),
      inputChannel: (map['inputChannel'] as int).input(),
    );
  }
}

