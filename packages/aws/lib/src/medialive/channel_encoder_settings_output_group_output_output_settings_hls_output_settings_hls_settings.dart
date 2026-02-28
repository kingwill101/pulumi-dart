// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings_audio_only_hls_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings_fmp4_hls_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings_standard_hls_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings {
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings?
      audioOnlyHlsSettings;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings?
      fmp4HlsSettings;
  final Map<String, dynamic>? frameCaptureHlsSettings;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings?
      standardHlsSettings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings].
  /// [audioOnlyHlsSettings] Optional.
  /// [fmp4HlsSettings] Optional.
  /// [frameCaptureHlsSettings] Optional.
  /// [standardHlsSettings] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings({
    this.audioOnlyHlsSettings,
    this.fmp4HlsSettings,
    this.frameCaptureHlsSettings,
    this.standardHlsSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioOnlyHlsSettingsValue = audioOnlyHlsSettings;
    if (audioOnlyHlsSettingsValue != null) {
      map['audioOnlyHlsSettings'] = audioOnlyHlsSettingsValue.toMap();
    }
    final fmp4HlsSettingsValue = fmp4HlsSettings;
    if (fmp4HlsSettingsValue != null) {
      map['fmp4HlsSettings'] = fmp4HlsSettingsValue.toMap();
    }
    final frameCaptureHlsSettingsValue = frameCaptureHlsSettings;
    if (frameCaptureHlsSettingsValue != null) {
      map['frameCaptureHlsSettings'] = frameCaptureHlsSettingsValue;
    }
    final standardHlsSettingsValue = standardHlsSettings;
    if (standardHlsSettingsValue != null) {
      map['standardHlsSettings'] = standardHlsSettingsValue.toMap();
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings(
      audioOnlyHlsSettings: map['audioOnlyHlsSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings
              .fromMap(
                  (map['audioOnlyHlsSettings'] as Map).cast<String, dynamic>()),
      fmp4HlsSettings: map['fmp4HlsSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings
              .fromMap((map['fmp4HlsSettings'] as Map).cast<String, dynamic>()),
      frameCaptureHlsSettings: map['frameCaptureHlsSettings'] == null
          ? null
          : (map['frameCaptureHlsSettings'] as Map).cast<String, dynamic>(),
      standardHlsSettings: map['standardHlsSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings
              .fromMap(
                  (map['standardHlsSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
