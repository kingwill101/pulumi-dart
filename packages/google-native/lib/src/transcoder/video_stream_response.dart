// ignore_for_file: unused_element, unnecessary_cast

import 'h264_codec_settings_response.dart';
import 'h265_codec_settings_response.dart';
import 'vp9_codec_settings_response.dart';

/// Video stream resource.
class VideoStreamResponse {
  /// H264 codec settings.
  final H264CodecSettingsResponse h264;

  /// H265 codec settings.
  final H265CodecSettingsResponse h265;

  /// VP9 codec settings.
  final Vp9CodecSettingsResponse vp9;

  /// Creates a new [VideoStreamResponse].
  /// [h264] H264 codec settings.
  /// [h265] H265 codec settings.
  /// [vp9] VP9 codec settings.
  VideoStreamResponse({
    required this.h264,
    required this.h265,
    required this.vp9,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'h264': h264.toMap(),
      'h265': h265.toMap(),
      'vp9': vp9.toMap(),
    };
  }

  factory VideoStreamResponse.fromMap(Map<String, dynamic> map) {
    return VideoStreamResponse(
      h264: H264CodecSettingsResponse.fromMap(
        (map['h264'] as Map).cast<String, dynamic>(),
      ),
      h265: H265CodecSettingsResponse.fromMap(
        (map['h265'] as Map).cast<String, dynamic>(),
      ),
      vp9: Vp9CodecSettingsResponse.fromMap(
        (map['vp9'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
