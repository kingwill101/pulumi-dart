// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_output_group_output_output_settings_archive_output_settings_container_settings_m2ts_settings/channel_encoder_settings_output_group_output_output_settings_archive_output_settings_container_settings_m2ts_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettings {
  /// M2TS Settings. See [M2TS Settings](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-m2tssettings.html) for more details.
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettings?
      m2tsSettings;

  /// Raw Settings. This can be set as an empty block.
  final Map<String, dynamic>? rawSettings;

  ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettings({
    this.m2tsSettings,
    this.rawSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final m2tsSettingsValue = m2tsSettings;
    if (m2tsSettingsValue != null) {
      map['m2tsSettings'] = m2tsSettingsValue.toMap();
    }
    final rawSettingsValue = rawSettings;
    if (rawSettingsValue != null) {
      map['rawSettings'] = rawSettingsValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettings(
      m2tsSettings: map['m2tsSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettings
              .fromMap((map['m2tsSettings'] as Map).cast<String, dynamic>()),
      rawSettings: map['rawSettings'] == null
          ? null
          : (map['rawSettings'] as Map).cast<String, dynamic>(),
    );
  }
}
