// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output.dart';
import 'channel_encoder_settings_output_group_output_group_settings.dart';

class ChannelEncoderSettingsOutputGroup {
  /// Custom output group name defined by the user.
  final pulumi.Input<String>? name;
  /// Settings associated with the output group. See Output Group Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettings> outputGroupSettings;
  /// List of outputs. See Outputs for more details.
  final pulumi.Input<List<ChannelEncoderSettingsOutputGroupOutput>> outputs;

  /// Creates a new [ChannelEncoderSettingsOutputGroup].
  /// [name] Custom output group name defined by the user.
  /// [outputGroupSettings] Settings associated with the output group. See Output Group Settings for more details.
  /// [outputs] List of outputs. See Outputs for more details.
  ChannelEncoderSettingsOutputGroup({
    this.name,
    required this.outputGroupSettings,
    required this.outputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'outputGroupSettings': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettings, Map<String, dynamic>>(outputGroupSettings, (value) => value.toMap()),
      'outputs': pulumi.Input.mapInputValue<List<ChannelEncoderSettingsOutputGroupOutput>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<ChannelEncoderSettingsOutputGroupOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChannelEncoderSettingsOutputGroup.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroup(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      outputGroupSettings: (ChannelEncoderSettingsOutputGroupOutputGroupSettings.fromMap((map['outputGroupSettings']! as Map).cast<String, dynamic>())).input(),
      outputs: (pulumi.Input.decodeList<ChannelEncoderSettingsOutputGroupOutput>(map['outputs']!, (value) => ChannelEncoderSettingsOutputGroupOutput.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

