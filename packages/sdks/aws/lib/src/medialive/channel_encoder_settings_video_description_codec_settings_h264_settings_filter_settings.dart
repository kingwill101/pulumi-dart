// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_video_description_codec_settings_h264_settings_filter_settings_temporal_filter_settings.dart';

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings {
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings?>? temporalFilterSettings;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings].
  /// [temporalFilterSettings] Optional.
  const ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings({
    this.temporalFilterSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'temporalFilterSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings, Map<String, dynamic>>(temporalFilterSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings(
      temporalFilterSettings: (() { final guardedValue = map['temporalFilterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
