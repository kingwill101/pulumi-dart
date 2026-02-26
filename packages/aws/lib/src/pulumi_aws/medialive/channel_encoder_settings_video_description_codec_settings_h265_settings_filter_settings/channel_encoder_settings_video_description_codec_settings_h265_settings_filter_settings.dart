// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_video_description_codec_settings_h265_settings_filter_settings_temporal_filter_settings/channel_encoder_settings_video_description_codec_settings_h265_settings_filter_settings_temporal_filter_settings.dart';

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings {
  final ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings?
      temporalFilterSettings;

  ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings({
    this.temporalFilterSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final temporalFilterSettingsValue = temporalFilterSettings;
    if (temporalFilterSettingsValue != null) {
      map['temporalFilterSettings'] = temporalFilterSettingsValue.toMap();
    }
    return map;
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings(
      temporalFilterSettings: map['temporalFilterSettings'] == null
          ? null
          : ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings
              .fromMap((map['temporalFilterSettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
