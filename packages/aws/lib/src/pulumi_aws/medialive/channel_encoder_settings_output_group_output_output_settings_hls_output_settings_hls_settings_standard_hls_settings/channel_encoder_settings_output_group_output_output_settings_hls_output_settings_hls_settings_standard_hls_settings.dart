// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings_standard_hls_settings_m3u8_settings/channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings_standard_hls_settings_m3u8_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings {
  final String? audioRenditionSets;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings
      m3u8Settings;

  ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings({
    this.audioRenditionSets,
    required this.m3u8Settings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioRenditionSetsValue = audioRenditionSets;
    if (audioRenditionSetsValue != null) {
      map['audioRenditionSets'] = audioRenditionSetsValue;
    }
    map['m3u8Settings'] = m3u8Settings.toMap();
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings(
      audioRenditionSets: map['audioRenditionSets'] == null
          ? null
          : map['audioRenditionSets'] as String,
      m3u8Settings:
          ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings
              .fromMap((map['m3u8Settings'] as Map).cast<String, dynamic>()),
    );
  }
}
