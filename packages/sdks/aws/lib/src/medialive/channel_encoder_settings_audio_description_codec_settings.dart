// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_audio_description_codec_settings_aac_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_ac3_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_eac3_atmos_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_eac3_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_mp2_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_wav_settings.dart';

class ChannelEncoderSettingsAudioDescriptionCodecSettings {
  /// Aac Settings. See AAC Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings>? aacSettings;
  /// Ac3 Settings. See AC3 Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings>? ac3Settings;
  /// Eac3 Atmos Settings. See EAC3 Atmos Settings
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings>? eac3AtmosSettings;
  /// Eac3 Settings. See EAC3 Settings
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings>? eac3Settings;
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings>? mp2Settings;
  final pulumi.Input<Map<String, dynamic>>? passThroughSettings;
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings>? wavSettings;

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
      'aacSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings, Map<String, dynamic>>(aacSettings, (value) => value.toMap()),
      'ac3Settings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings, Map<String, dynamic>>(ac3Settings, (value) => value.toMap()),
      'eac3AtmosSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings, Map<String, dynamic>>(eac3AtmosSettings, (value) => value.toMap()),
      'eac3Settings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings, Map<String, dynamic>>(eac3Settings, (value) => value.toMap()),
      'mp2Settings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings, Map<String, dynamic>>(mp2Settings, (value) => value.toMap()),
      'passThroughSettings': ?passThroughSettings,
      'wavSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings, Map<String, dynamic>>(wavSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettings(
      aacSettings: map['aacSettings'] == null ? null : (ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings.fromMap((map['aacSettings'] as Map).cast<String, dynamic>())).input(),
      ac3Settings: map['ac3Settings'] == null ? null : (ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings.fromMap((map['ac3Settings'] as Map).cast<String, dynamic>())).input(),
      eac3AtmosSettings: map['eac3AtmosSettings'] == null ? null : (ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings.fromMap((map['eac3AtmosSettings'] as Map).cast<String, dynamic>())).input(),
      eac3Settings: map['eac3Settings'] == null ? null : (ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings.fromMap((map['eac3Settings'] as Map).cast<String, dynamic>())).input(),
      mp2Settings: map['mp2Settings'] == null ? null : (ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings.fromMap((map['mp2Settings'] as Map).cast<String, dynamic>())).input(),
      passThroughSettings: map['passThroughSettings'] == null ? null : ((map['passThroughSettings'] as Map).cast<String, dynamic>()).input(),
      wavSettings: map['wavSettings'] == null ? null : (ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings.fromMap((map['wavSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

