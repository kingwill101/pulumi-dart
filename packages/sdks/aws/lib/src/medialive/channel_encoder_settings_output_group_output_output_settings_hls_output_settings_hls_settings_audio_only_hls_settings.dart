// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings_audio_only_hls_settings_audio_only_image.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings {
  final pulumi.Input<String>? audioGroupId;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage>? audioOnlyImage;
  final pulumi.Input<String>? audioTrackType;
  final pulumi.Input<String>? segmentType;

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
    return <String, dynamic>{
      'audioGroupId': ?audioGroupId,
      'audioOnlyImage': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage, Map<String, dynamic>>(audioOnlyImage, (value) => value.toMap()),
      'audioTrackType': ?audioTrackType,
      'segmentType': ?segmentType,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings(
      audioGroupId: map['audioGroupId'] == null ? null : (map['audioGroupId'] as String).input(),
      audioOnlyImage: map['audioOnlyImage'] == null ? null : (ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage.fromMap((map['audioOnlyImage'] as Map).cast<String, dynamic>())).input(),
      audioTrackType: map['audioTrackType'] == null ? null : (map['audioTrackType'] as String).input(),
      segmentType: map['segmentType'] == null ? null : (map['segmentType'] as String).input(),
    );
  }
}

