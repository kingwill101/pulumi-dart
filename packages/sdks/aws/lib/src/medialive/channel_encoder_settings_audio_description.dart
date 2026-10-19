// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_audio_description_audio_normalization_settings.dart';
import 'channel_encoder_settings_audio_description_audio_watermark_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings.dart';
import 'channel_encoder_settings_audio_description_remix_settings.dart';

class ChannelEncoderSettingsAudioDescription {
  /// Advanced audio normalization settings. See `audioNormalizationSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings?>? audioNormalizationSettings;
  /// Name of the audio selector used as the source for this audio description.
  final pulumi.Input<String> audioSelectorName;
  /// Applies only if `audioTypeControl` is `useConfigured`. Values for `audioType` are defined in ISO-IEC 13818-1.
  final pulumi.Input<String?>? audioType;
  /// How audio type is determined.
  final pulumi.Input<String?>? audioTypeControl;
  /// Settings to configure one or more solutions that insert audio watermarks in the audio encode. See `audioWatermarkSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings?>? audioWatermarkSettings;
  /// Audio codec settings. See `audio_descriptions.codec_settings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionCodecSettings?>? codecSettings;
  /// ISO 639-2 three-digit code for the language of this audio description.
  final pulumi.Input<String?>? languageCode;
  /// How to handle the audio language code.
  final pulumi.Input<String?>? languageCodeControl;
  /// Name of this audio description.
  final pulumi.Input<String> name;
  /// Settings to remix the audio. See `remixSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsAudioDescriptionRemixSettings?>? remixSettings;
  /// Stream name used to identify the audio description.
  final pulumi.Input<String?>? streamName;

  /// Creates a new [ChannelEncoderSettingsAudioDescription].
  /// [audioNormalizationSettings] Advanced audio normalization settings. See `audioNormalizationSettings` Block for details.
  /// [audioSelectorName] Name of the audio selector used as the source for this audio description.
  /// [audioType] Applies only if `audioTypeControl` is `useConfigured`. Values for `audioType` are defined in ISO-IEC 13818-1.
  /// [audioTypeControl] How audio type is determined.
  /// [audioWatermarkSettings] Settings to configure one or more solutions that insert audio watermarks in the audio encode. See `audioWatermarkSettings` Block for details.
  /// [codecSettings] Audio codec settings. See `audio_descriptions.codec_settings` Block for details.
  /// [languageCode] ISO 639-2 three-digit code for the language of this audio description.
  /// [languageCodeControl] How to handle the audio language code.
  /// [name] Name of this audio description.
  /// [remixSettings] Settings to remix the audio. See `remixSettings` Block for details.
  /// [streamName] Stream name used to identify the audio description.
  const ChannelEncoderSettingsAudioDescription({
    this.audioNormalizationSettings,
    required this.audioSelectorName,
    this.audioType,
    this.audioTypeControl,
    this.audioWatermarkSettings,
    this.codecSettings,
    this.languageCode,
    this.languageCodeControl,
    required this.name,
    this.remixSettings,
    this.streamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioNormalizationSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings, Map<String, dynamic>>(audioNormalizationSettings, (value) => value.toMap()),
      'audioSelectorName': audioSelectorName,
      'audioType': ?audioType,
      'audioTypeControl': ?audioTypeControl,
      'audioWatermarkSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings, Map<String, dynamic>>(audioWatermarkSettings, (value) => value.toMap()),
      'codecSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAudioDescriptionCodecSettings, Map<String, dynamic>>(codecSettings, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'languageCodeControl': ?languageCodeControl,
      'name': name,
      'remixSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAudioDescriptionRemixSettings, Map<String, dynamic>>(remixSettings, (value) => value.toMap()),
      'streamName': ?streamName,
    };
  }

  factory ChannelEncoderSettingsAudioDescription.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescription(
      audioNormalizationSettings: (() { final guardedValue = map['audioNormalizationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      audioSelectorName: pulumi.Input.fromValue(map['audioSelectorName'] as String),
      audioType: (() { final guardedValue = map['audioType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audioTypeControl: (() { final guardedValue = map['audioTypeControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audioWatermarkSettings: (() { final guardedValue = map['audioWatermarkSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      codecSettings: (() { final guardedValue = map['codecSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsAudioDescriptionCodecSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageCodeControl: (() { final guardedValue = map['languageCodeControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      remixSettings: (() { final guardedValue = map['remixSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsAudioDescriptionRemixSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      streamName: (() { final guardedValue = map['streamName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
