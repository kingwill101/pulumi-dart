// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings_audio_only_hls_settings_audio_only_image.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings {
  /// Group to which the audio rendition belongs.
  final pulumi.Input<String?>? audioGroupId;
  /// Image for an audio-only output. See `audioOnlyImage` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage?>? audioOnlyImage;
  /// Four types of audio-only tracks.
  final pulumi.Input<String?>? audioTrackType;
  /// Whether the stream is an audio-only stream.
  final pulumi.Input<String?>? segmentType;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings].
  /// [audioGroupId] Group to which the audio rendition belongs.
  /// [audioOnlyImage] Image for an audio-only output. See `audioOnlyImage` Block for details.
  /// [audioTrackType] Four types of audio-only tracks.
  /// [segmentType] Whether the stream is an audio-only stream.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings({
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
      audioGroupId: (() { final guardedValue = map['audioGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audioOnlyImage: (() { final guardedValue = map['audioOnlyImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      audioTrackType: (() { final guardedValue = map['audioTrackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentType: (() { final guardedValue = map['segmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
