// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_audio_description_codec_settings_aac_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_ac3_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_eac3_atmos_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_eac3_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_mp2_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_wav_settings.dart';

class ChannelEncoderSettingsAudioDescriptionCodecSettings {
  /// Aac Settings. See AAC Settings for more details.
  final ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings?
  aacSettings;

  /// Ac3 Settings. See AC3 Settings for more details.
  final ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings?
  ac3Settings;

  /// Eac3 Atmos Settings. See EAC3 Atmos Settings
  final ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings?
  eac3AtmosSettings;

  /// Eac3 Settings. See EAC3 Settings
  final ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings?
  eac3Settings;
  final ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings?
  mp2Settings;
  final Map<String, dynamic>? passThroughSettings;
  final ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings?
  wavSettings;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionCodecSettings].
  /// [aacSettings] Aac Settings. See AAC Settings for more details.
  /// [ac3Settings] Ac3 Settings. See AC3 Settings for more details.
  /// [eac3AtmosSettings] Eac3 Atmos Settings. See EAC3 Atmos Settings
  /// [eac3Settings] Eac3 Settings. See EAC3 Settings
  /// [mp2Settings] Optional.
  /// [passThroughSettings] Optional.
  /// [wavSettings] Optional.
  ChannelEncoderSettingsAudioDescriptionCodecSettings({
    this.aacSettings,
    this.ac3Settings,
    this.eac3AtmosSettings,
    this.eac3Settings,
    this.mp2Settings,
    this.passThroughSettings,
    this.wavSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aacSettings': ?aacSettings == null ? null : aacSettings!.toMap(),
      'ac3Settings': ?ac3Settings == null ? null : ac3Settings!.toMap(),
      'eac3AtmosSettings': ?eac3AtmosSettings == null
          ? null
          : eac3AtmosSettings!.toMap(),
      'eac3Settings': ?eac3Settings == null ? null : eac3Settings!.toMap(),
      'mp2Settings': ?mp2Settings == null ? null : mp2Settings!.toMap(),
      'passThroughSettings': ?passThroughSettings,
      'wavSettings': ?wavSettings == null ? null : wavSettings!.toMap(),
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettings(
      aacSettings: map['aacSettings'] == null
          ? null
          : ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings.fromMap(
              (map['aacSettings'] as Map).cast<String, dynamic>(),
            ),
      ac3Settings: map['ac3Settings'] == null
          ? null
          : ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings.fromMap(
              (map['ac3Settings'] as Map).cast<String, dynamic>(),
            ),
      eac3AtmosSettings: map['eac3AtmosSettings'] == null
          ? null
          : ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings.fromMap(
              (map['eac3AtmosSettings'] as Map).cast<String, dynamic>(),
            ),
      eac3Settings: map['eac3Settings'] == null
          ? null
          : ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings.fromMap(
              (map['eac3Settings'] as Map).cast<String, dynamic>(),
            ),
      mp2Settings: map['mp2Settings'] == null
          ? null
          : ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings.fromMap(
              (map['mp2Settings'] as Map).cast<String, dynamic>(),
            ),
      passThroughSettings: map['passThroughSettings'] == null
          ? null
          : (map['passThroughSettings'] as Map).cast<String, dynamic>(),
      wavSettings: map['wavSettings'] == null
          ? null
          : ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings.fromMap(
              (map['wavSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
