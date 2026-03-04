// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings_audio_only_hls_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings_fmp4_hls_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings_standard_hls_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings {
  final pulumi.Input<
    ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings
  >?
  audioOnlyHlsSettings;
  final pulumi.Input<
    ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings
  >?
  fmp4HlsSettings;
  final pulumi.Input<Map<String, dynamic>>? frameCaptureHlsSettings;
  final pulumi.Input<
    ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings
  >?
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
    return <String, dynamic>{
      'audioOnlyHlsSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings,
            Map<String, dynamic>
          >(audioOnlyHlsSettings, (value) => value.toMap()),
      'fmp4HlsSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings,
            Map<String, dynamic>
          >(fmp4HlsSettings, (value) => value.toMap()),
      'frameCaptureHlsSettings': ?frameCaptureHlsSettings,
      'standardHlsSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings,
            Map<String, dynamic>
          >(standardHlsSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings(
      audioOnlyHlsSettings: (() {
        final guardedValue = map['audioOnlyHlsSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fmp4HlsSettings: (() {
        final guardedValue = map['fmp4HlsSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      frameCaptureHlsSettings: (() {
        final guardedValue = map['frameCaptureHlsSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      standardHlsSettings: (() {
        final guardedValue = map['standardHlsSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
