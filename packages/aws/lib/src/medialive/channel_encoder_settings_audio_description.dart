// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_audio_description_audio_normalization_settings.dart';
import 'channel_encoder_settings_audio_description_audio_watermark_settings.dart';
import 'channel_encoder_settings_audio_description_codec_settings.dart';
import 'channel_encoder_settings_audio_description_remix_settings.dart';

class ChannelEncoderSettingsAudioDescription {
  /// Advanced audio normalization settings. See Audio Normalization Settings for more details.
  final ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings? audioNormalizationSettings;
  /// The name of the audio selector used as the source for this AudioDescription.
  final String audioSelectorName;
  /// Applies only if audioTypeControl is useConfigured. The values for audioType are defined in ISO-IEC 13818-1.
  final String? audioType;
  /// Determined how audio type is determined.
  final String? audioTypeControl;
  /// Settings to configure one or more solutions that insert audio watermarks in the audio encode. See Audio Watermark Settings for more details.
  final ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings? audioWatermarkSettings;
  /// Audio codec settings. See Audio Codec Settings for more details.
  final ChannelEncoderSettingsAudioDescriptionCodecSettings? codecSettings;
  final String? languageCode;
  final String? languageCodeControl;
  /// The name of this audio description.
  final String name;
  final ChannelEncoderSettingsAudioDescriptionRemixSettings? remixSettings;
  /// Stream name RTMP destinations (URLs of type rtmp://)
  final String? streamName;

  /// Creates a new [ChannelEncoderSettingsAudioDescription].
  /// [audioNormalizationSettings] Advanced audio normalization settings. See Audio Normalization Settings for more details.
  /// [audioSelectorName] The name of the audio selector used as the source for this AudioDescription.
  /// [audioType] Applies only if audioTypeControl is useConfigured. The values for audioType are defined in ISO-IEC 13818-1.
  /// [audioTypeControl] Determined how audio type is determined.
  /// [audioWatermarkSettings] Settings to configure one or more solutions that insert audio watermarks in the audio encode. See Audio Watermark Settings for more details.
  /// [codecSettings] Audio codec settings. See Audio Codec Settings for more details.
  /// [languageCode] Optional.
  /// [languageCodeControl] Optional.
  /// [name] The name of this audio description.
  /// [remixSettings] Optional.
  /// [streamName] Stream name RTMP destinations (URLs of type rtmp://)
  ChannelEncoderSettingsAudioDescription({
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
      'audioNormalizationSettings': ?audioNormalizationSettings == null ? null : audioNormalizationSettings!.toMap(),
      'audioSelectorName': audioSelectorName,
      'audioType': ?audioType,
      'audioTypeControl': ?audioTypeControl,
      'audioWatermarkSettings': ?audioWatermarkSettings == null ? null : audioWatermarkSettings!.toMap(),
      'codecSettings': ?codecSettings == null ? null : codecSettings!.toMap(),
      'languageCode': ?languageCode,
      'languageCodeControl': ?languageCodeControl,
      'name': name,
      'remixSettings': ?remixSettings == null ? null : remixSettings!.toMap(),
      'streamName': ?streamName,
    };
  }

  factory ChannelEncoderSettingsAudioDescription.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescription(
      audioNormalizationSettings: map['audioNormalizationSettings'] == null ? null : ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings.fromMap((map['audioNormalizationSettings'] as Map).cast<String, dynamic>()),
      audioSelectorName: map['audioSelectorName'] as String,
      audioType: map['audioType'] == null ? null : map['audioType'] as String,
      audioTypeControl: map['audioTypeControl'] == null ? null : map['audioTypeControl'] as String,
      audioWatermarkSettings: map['audioWatermarkSettings'] == null ? null : ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings.fromMap((map['audioWatermarkSettings'] as Map).cast<String, dynamic>()),
      codecSettings: map['codecSettings'] == null ? null : ChannelEncoderSettingsAudioDescriptionCodecSettings.fromMap((map['codecSettings'] as Map).cast<String, dynamic>()),
      languageCode: map['languageCode'] == null ? null : map['languageCode'] as String,
      languageCodeControl: map['languageCodeControl'] == null ? null : map['languageCodeControl'] as String,
      name: map['name'] as String,
      remixSettings: map['remixSettings'] == null ? null : ChannelEncoderSettingsAudioDescriptionRemixSettings.fromMap((map['remixSettings'] as Map).cast<String, dynamic>()),
      streamName: map['streamName'] == null ? null : map['streamName'] as String,
    );
  }
}

