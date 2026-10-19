// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_archive_output_settings_container_settings_m2ts_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettings {
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettings?>? m2tsSettings;
  /// Raw settings. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? rawSettings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettings].
  /// [m2tsSettings] Optional.
  /// [rawSettings] Raw settings. Can be set as an empty block.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettings({
    this.m2tsSettings,
    this.rawSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'm2tsSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettings, Map<String, dynamic>>(m2tsSettings, (value) => value.toMap()),
      'rawSettings': ?rawSettings,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettings(
      m2tsSettings: (() { final guardedValue = map['m2tsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rawSettings: (() { final guardedValue = map['rawSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
