// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel {
  /// Remixing value, from -60 to 6 decibels.
  final pulumi.Input<int> gain;
  /// Index of the input channel used as a source.
  final pulumi.Input<int> inputChannel;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel].
  /// [gain] Remixing value, from -60 to 6 decibels.
  /// [inputChannel] Index of the input channel used as a source.
  const ChannelEncoderSettingsAudioDescriptionRemixSettingsChannelMappingInputChannelLevel({
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
      gain: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['gain'])),
      inputChannel: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['inputChannel'])),
    );
  }
}
