// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_archive_output_settings_container_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings {
  /// Settings specific to the container type of the file. See Container Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettings>? containerSettings;
  /// Output file extension.
  final pulumi.Input<String>? extension;
  /// String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  final pulumi.Input<String>? nameModifier;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings].
  /// [containerSettings] Settings specific to the container type of the file. See Container Settings for more details.
  /// [extension] Output file extension.
  /// [nameModifier] String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings({
    this.containerSettings,
    this.extension,
    this.nameModifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettings, Map<String, dynamic>>(containerSettings, (value) => value.toMap()),
      'extension': ?extension,
      'nameModifier': ?nameModifier,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettings(
      containerSettings: map['containerSettings'] == null ? null : ((ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettings.fromMap((map['containerSettings']! as Map).cast<String, dynamic>())).input()).input(),
      extension: map['extension'] == null ? null : ((map['extension'] as String).input()).input(),
      nameModifier: map['nameModifier'] == null ? null : ((map['nameModifier'] as String).input()).input(),
    );
  }
}

