// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../channel_encoder_settings_output_group_output/channel_encoder_settings_output_group_output.dart';
import '../channel_encoder_settings_output_group_output_group_settings/channel_encoder_settings_output_group_output_group_settings.dart';

class ChannelEncoderSettingsOutputGroup {
  /// Custom output group name defined by the user.
  final String? name;

  /// Settings associated with the output group. See Output Group Settings for more details.
  final ChannelEncoderSettingsOutputGroupOutputGroupSettings
      outputGroupSettings;

  /// List of outputs. See Outputs for more details.
  final List<ChannelEncoderSettingsOutputGroupOutput> outputs;

  ChannelEncoderSettingsOutputGroup({
    this.name,
    required this.outputGroupSettings,
    required this.outputs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['outputGroupSettings'] = outputGroupSettings.toMap();
    map['outputs'] = pulumi.Input.encodeList<
        ChannelEncoderSettingsOutputGroupOutput,
        Map<String, dynamic>>(outputs, (value) => value.toMap());
    return map;
  }

  factory ChannelEncoderSettingsOutputGroup.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroup(
      name: map['name'] == null ? null : map['name'] as String,
      outputGroupSettings:
          ChannelEncoderSettingsOutputGroupOutputGroupSettings.fromMap(
              (map['outputGroupSettings'] as Map).cast<String, dynamic>()),
      outputs: pulumi.Input.decodeList<ChannelEncoderSettingsOutputGroupOutput>(
          map['outputs'],
          (value) => ChannelEncoderSettingsOutputGroupOutput.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
