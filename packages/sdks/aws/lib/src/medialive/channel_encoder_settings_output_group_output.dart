// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings.dart';

class ChannelEncoderSettingsOutputGroupOutput {
  /// The names of the audio descriptions used as audio sources for the output.
  final pulumi.Input<List<String>>? audioDescriptionNames;
  /// The names of the caption descriptions used as caption sources for the output.
  final pulumi.Input<List<String>>? captionDescriptionNames;
  /// The name used to identify an output.
  final pulumi.Input<String>? outputName;
  /// Settings for output. See Output Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettings> outputSettings;
  /// The name of the video description used as video source for the output.
  final pulumi.Input<String>? videoDescriptionName;

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
      'outputSettings': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettings, Map<String, dynamic>>(outputSettings, (value) => value.toMap()),
      'videoDescriptionName': ?videoDescriptionName,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutput.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutput(
      audioDescriptionNames: map['audioDescriptionNames'] == null ? null : (((map['audioDescriptionNames'] as List).cast<String>()).input()).input(),
      captionDescriptionNames: map['captionDescriptionNames'] == null ? null : (((map['captionDescriptionNames'] as List).cast<String>()).input()).input(),
      outputName: map['outputName'] == null ? null : ((map['outputName'] as String).input()).input(),
      outputSettings: (ChannelEncoderSettingsOutputGroupOutputOutputSettings.fromMap((map['outputSettings']! as Map).cast<String, dynamic>())).input(),
      videoDescriptionName: map['videoDescriptionName'] == null ? null : ((map['videoDescriptionName'] as String).input()).input(),
    );
  }
}

