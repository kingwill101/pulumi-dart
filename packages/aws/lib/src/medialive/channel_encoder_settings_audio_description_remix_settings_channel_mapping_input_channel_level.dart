// ignore_for_file: unused_element, unnecessary_cast


class ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel {
  final int gain;
  final int inputChannel;

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
      gain: map['gain'] as int,
      inputChannel: map['inputChannel'] as int,
    );
  }
}

