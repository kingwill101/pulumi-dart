// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_video_description_codec_settings_h265_settings_filter_settings_temporal_filter_settings.dart';

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings {
  final pulumi.Input<
    ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings
  >?
  temporalFilterSettings;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings].
  /// [temporalFilterSettings] Optional.
  ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings({
    this.temporalFilterSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'temporalFilterSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings,
            Map<String, dynamic>
          >(temporalFilterSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings(
      temporalFilterSettings: (() {
        final guardedValue = map['temporalFilterSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
