// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_audio_description_codec_settings_aac_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_ac3_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_eac3_atmos_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_eac3_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_mp2_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings_wav_settings.dart';

class ChannelEncoderSettingsAudioDescriptionCodecSettings {
  /// AAC settings. See `aacSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings?>? aacSettings;
  /// AC3 settings. See `ac3Settings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings?>? ac3Settings;
  /// EAC3 Atmos settings. See `eac3AtmosSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings?>? eac3AtmosSettings;
  /// EAC3 settings. See `eac3Settings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings?>? eac3Settings;
  /// MP2 settings. See `mp2Settings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings?>? mp2Settings;
  /// Pass-through settings. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? passThroughSettings;
  /// WAV settings. See `wavSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings?>? wavSettings;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionCodecSettings].
  /// [aacSettings] AAC settings. See `aacSettings` Block for details.
  /// [ac3Settings] AC3 settings. See `ac3Settings` Block for details.
  /// [eac3AtmosSettings] EAC3 Atmos settings. See `eac3AtmosSettings` Block for details.
  /// [eac3Settings] EAC3 settings. See `eac3Settings` Block for details.
  /// [mp2Settings] MP2 settings. See `mp2Settings` Block for details.
  /// [passThroughSettings] Pass-through settings. Can be set as an empty block.
  /// [wavSettings] WAV settings. See `wavSettings` Block for details.
  const ChannelEncoderSettingsAudioDescriptionCodecSettings({
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
      aacSettings: (() { final guardedValue = map['aacSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ac3Settings: (() { final guardedValue = map['ac3Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsAudioDescriptionCodecSettingsAc3Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eac3AtmosSettings: (() { final guardedValue = map['eac3AtmosSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eac3Settings: (() { final guardedValue = map['eac3Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mp2Settings: (() { final guardedValue = map['mp2Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      passThroughSettings: (() { final guardedValue = map['passThroughSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      wavSettings: (() { final guardedValue = map['wavSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
