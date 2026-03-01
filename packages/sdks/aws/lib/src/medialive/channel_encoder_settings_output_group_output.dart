// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_output_settings.dart';

class ChannelEncoderSettingsOutputGroupOutput {
  /// The names of the audio descriptions used as audio sources for the output.
  final List<String>? audioDescriptionNames;
  /// The names of the caption descriptions used as caption sources for the output.
  final List<String>? captionDescriptionNames;
  /// The name used to identify an output.
  final String? outputName;
  /// Settings for output. See Output Settings for more details.
  final ChannelEncoderSettingsOutputGroupOutputOutputSettings outputSettings;
  /// The name of the video description used as video source for the output.
  final String? videoDescriptionName;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutput].
  /// [audioDescriptionNames] The names of the audio descriptions used as audio sources for the output.
  /// [captionDescriptionNames] The names of the caption descriptions used as caption sources for the output.
  /// [outputName] The name used to identify an output.
  /// [outputSettings] Settings for output. See Output Settings for more details.
  /// [videoDescriptionName] The name of the video description used as video source for the output.
  ChannelEncoderSettingsOutputGroupOutput({
    this.audioDescriptionNames,
    this.captionDescriptionNames,
    this.outputName,
    required this.outputSettings,
    this.videoDescriptionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioDescriptionNames': ?audioDescriptionNames,
      'captionDescriptionNames': ?captionDescriptionNames,
      'outputName': ?outputName,
      'outputSettings': outputSettings.toMap(),
      'videoDescriptionName': ?videoDescriptionName,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutput.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutput(
      audioDescriptionNames: map['audioDescriptionNames'] == null ? null : (map['audioDescriptionNames'] as List).cast<String>(),
      captionDescriptionNames: map['captionDescriptionNames'] == null ? null : (map['captionDescriptionNames'] as List).cast<String>(),
      outputName: map['outputName'] == null ? null : map['outputName'] as String,
      outputSettings: ChannelEncoderSettingsOutputGroupOutputOutputSettings.fromMap((map['outputSettings'] as Map).cast<String, dynamic>()),
      videoDescriptionName: map['videoDescriptionName'] == null ? null : map['videoDescriptionName'] as String,
    );
  }
}

