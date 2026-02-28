// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings_audio_only_hls_settings_audio_only_image.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings {
  final String? audioGroupId;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage?
      audioOnlyImage;
  final String? audioTrackType;
  final String? segmentType;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings].
  /// [audioGroupId] Optional.
  /// [audioOnlyImage] Optional.
  /// [audioTrackType] Optional.
  /// [segmentType] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings({
    this.audioGroupId,
    this.audioOnlyImage,
    this.audioTrackType,
    this.segmentType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioGroupIdValue = audioGroupId;
    if (audioGroupIdValue != null) {
      map['audioGroupId'] = audioGroupIdValue;
    }
    final audioOnlyImageValue = audioOnlyImage;
    if (audioOnlyImageValue != null) {
      map['audioOnlyImage'] = audioOnlyImageValue.toMap();
    }
    final audioTrackTypeValue = audioTrackType;
    if (audioTrackTypeValue != null) {
      map['audioTrackType'] = audioTrackTypeValue;
    }
    final segmentTypeValue = segmentType;
    if (segmentTypeValue != null) {
      map['segmentType'] = segmentTypeValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings(
      audioGroupId:
          map['audioGroupId'] == null ? null : map['audioGroupId'] as String,
      audioOnlyImage: map['audioOnlyImage'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage
              .fromMap((map['audioOnlyImage'] as Map).cast<String, dynamic>()),
      audioTrackType: map['audioTrackType'] == null
          ? null
          : map['audioTrackType'] as String,
      segmentType:
          map['segmentType'] == null ? null : map['segmentType'] as String,
    );
  }
}
