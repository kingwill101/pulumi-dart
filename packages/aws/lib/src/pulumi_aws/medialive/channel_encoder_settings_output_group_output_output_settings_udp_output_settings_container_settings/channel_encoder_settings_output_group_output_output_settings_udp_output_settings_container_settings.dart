// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings/channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettings {
  /// M2TS Settings. See [M2TS Settings](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html) for more details.
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings?
      m2tsSettings;

  ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettings({
    this.m2tsSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final m2tsSettingsValue = m2tsSettings;
    if (m2tsSettingsValue != null) {
      map['m2tsSettings'] = m2tsSettingsValue.toMap();
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettings(
      m2tsSettings: map['m2tsSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings
              .fromMap((map['m2tsSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
