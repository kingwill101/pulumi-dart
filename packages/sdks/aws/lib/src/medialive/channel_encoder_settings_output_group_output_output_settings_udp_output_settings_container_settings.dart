// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettings {
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings?>? m2tsSettings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettings].
  /// [m2tsSettings] Optional.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettings({
    this.m2tsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'm2tsSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings, Map<String, dynamic>>(m2tsSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettings(
      m2tsSettings: (() { final guardedValue = map['m2tsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
