// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings.dart';

class ChannelEncoderSettingsOutputGroupOutput {
  /// Names of the audio descriptions used as audio sources for the output.
  final pulumi.Input<List<String>?>? audioDescriptionNames;
  /// Names of the caption descriptions used as caption sources for the output.
  final pulumi.Input<List<String>?>? captionDescriptionNames;
  /// Name used to identify an output.
  final pulumi.Input<String?>? outputName;
  /// Settings for the output. See `outputSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettings> outputSettings;
  /// Name of the video description used as the video source for the output.
  final pulumi.Input<String?>? videoDescriptionName;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutput].
  /// [audioDescriptionNames] Names of the audio descriptions used as audio sources for the output.
  /// [captionDescriptionNames] Names of the caption descriptions used as caption sources for the output.
  /// [outputName] Name used to identify an output.
  /// [outputSettings] Settings for the output. See `outputSettings` Block for details.
  /// [videoDescriptionName] Name of the video description used as the video source for the output.
  const ChannelEncoderSettingsOutputGroupOutput({
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
      audioDescriptionNames: (() { final guardedValue = map['audioDescriptionNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      captionDescriptionNames: (() { final guardedValue = map['captionDescriptionNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputName: (() { final guardedValue = map['outputName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputSettings: pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettings.fromMap((map['outputSettings']! as Map).cast<String, dynamic>())),
      videoDescriptionName: (() { final guardedValue = map['videoDescriptionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
