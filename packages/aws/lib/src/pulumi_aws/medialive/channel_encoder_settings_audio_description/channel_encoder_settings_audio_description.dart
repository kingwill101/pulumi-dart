// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_audio_description_audio_normalization_settings/channel_encoder_settings_audio_description_audio_normalization_settings.dart';
import '../channel_encoder_settings_audio_description_audio_watermark_settings/channel_encoder_settings_audio_description_audio_watermark_settings.dart';
import '../channel_encoder_settings_audio_description_codec_settings/channel_encoder_settings_audio_description_codec_settings.dart';
import '../channel_encoder_settings_audio_description_remix_settings/channel_encoder_settings_audio_description_remix_settings.dart';

class ChannelEncoderSettingsAudioDescription {
  /// Advanced audio normalization settings. See Audio Normalization Settings for more details.
  final ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings?
      audioNormalizationSettings;

  /// The name of the audio selector used as the source for this AudioDescription.
  final String audioSelectorName;

  /// Applies only if audioTypeControl is useConfigured. The values for audioType are defined in ISO-IEC 13818-1.
  final String? audioType;

  /// Determined how audio type is determined.
  final String? audioTypeControl;

  /// Settings to configure one or more solutions that insert audio watermarks in the audio encode. See Audio Watermark Settings for more details.
  final ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings?
      audioWatermarkSettings;

  /// Audio codec settings. See Audio Codec Settings for more details.
  final ChannelEncoderSettingsAudioDescriptionCodecSettings? codecSettings;
  final String? languageCode;
  final String? languageCodeControl;

  /// The name of this audio description.
  final String name;
  final ChannelEncoderSettingsAudioDescriptionRemixSettings? remixSettings;

  /// Stream name RTMP destinations (URLs of type rtmp://)
  final String? streamName;

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
    final map = <String, dynamic>{};
    final audioNormalizationSettingsValue = audioNormalizationSettings;
    if (audioNormalizationSettingsValue != null) {
      map['audioNormalizationSettings'] =
          audioNormalizationSettingsValue.toMap();
    }
    map['audioSelectorName'] = audioSelectorName;
    final audioTypeValue = audioType;
    if (audioTypeValue != null) {
      map['audioType'] = audioTypeValue;
    }
    final audioTypeControlValue = audioTypeControl;
    if (audioTypeControlValue != null) {
      map['audioTypeControl'] = audioTypeControlValue;
    }
    final audioWatermarkSettingsValue = audioWatermarkSettings;
    if (audioWatermarkSettingsValue != null) {
      map['audioWatermarkSettings'] = audioWatermarkSettingsValue.toMap();
    }
    final codecSettingsValue = codecSettings;
    if (codecSettingsValue != null) {
      map['codecSettings'] = codecSettingsValue.toMap();
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final languageCodeControlValue = languageCodeControl;
    if (languageCodeControlValue != null) {
      map['languageCodeControl'] = languageCodeControlValue;
    }
    map['name'] = name;
    final remixSettingsValue = remixSettings;
    if (remixSettingsValue != null) {
      map['remixSettings'] = remixSettingsValue.toMap();
    }
    final streamNameValue = streamName;
    if (streamNameValue != null) {
      map['streamName'] = streamNameValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsAudioDescription.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescription(
      audioNormalizationSettings: map['audioNormalizationSettings'] == null
          ? null
          : ChannelEncoderSettingsAudioDescriptionAudioNormalizationSettings
              .fromMap((map['audioNormalizationSettings'] as Map)
                  .cast<String, dynamic>()),
      audioSelectorName: map['audioSelectorName'] as String,
      audioType: map['audioType'] == null ? null : map['audioType'] as String,
      audioTypeControl: map['audioTypeControl'] == null
          ? null
          : map['audioTypeControl'] as String,
      audioWatermarkSettings: map['audioWatermarkSettings'] == null
          ? null
          : ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettings
              .fromMap((map['audioWatermarkSettings'] as Map)
                  .cast<String, dynamic>()),
      codecSettings: map['codecSettings'] == null
          ? null
          : ChannelEncoderSettingsAudioDescriptionCodecSettings.fromMap(
              (map['codecSettings'] as Map).cast<String, dynamic>()),
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      languageCodeControl: map['languageCodeControl'] == null
          ? null
          : map['languageCodeControl'] as String,
      name: map['name'] as String,
      remixSettings: map['remixSettings'] == null
          ? null
          : ChannelEncoderSettingsAudioDescriptionRemixSettings.fromMap(
              (map['remixSettings'] as Map).cast<String, dynamic>()),
      streamName:
          map['streamName'] == null ? null : map['streamName'] as String,
    );
  }
}
