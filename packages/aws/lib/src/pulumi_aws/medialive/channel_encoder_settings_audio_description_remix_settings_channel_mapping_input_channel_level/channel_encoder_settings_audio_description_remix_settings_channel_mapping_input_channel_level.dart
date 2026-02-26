// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel {
  final int gain;
  final int inputChannel;

  ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel({
    required this.gain,
    required this.inputChannel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gain'] = gain;
    map['inputChannel'] = inputChannel;
    return map;
  }

  factory ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel(
      gain: map['gain'] as int,
      inputChannel: map['inputChannel'] as int,
    );
  }
}
