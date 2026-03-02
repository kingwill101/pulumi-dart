// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings_standard_hls_settings_m3u8_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings {
  final pulumi.Input<String>? audioRenditionSets;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings> m3u8Settings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings].
  /// [audioRenditionSets] Optional.
  /// [m3u8Settings] Required.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings({
    this.audioRenditionSets,
    required this.m3u8Settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioRenditionSets': ?audioRenditionSets,
      'm3u8Settings': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings, Map<String, dynamic>>(m3u8Settings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings(
      audioRenditionSets: map['audioRenditionSets'] == null ? null : ((map['audioRenditionSets'] as String).input()).input(),
      m3u8Settings: (ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings.fromMap((map['m3u8Settings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

