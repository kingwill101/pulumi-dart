// ignore_for_file: unused_element, unnecessary_cast

import 'h264_codec_settings.dart';
import 'h265_codec_settings.dart';
import 'vp9_codec_settings.dart';

/// Video stream resource.
class VideoStream {
  /// H264 codec settings.
  final H264CodecSettings? h264;

  /// H265 codec settings.
  final H265CodecSettings? h265;

  /// VP9 codec settings.
  final Vp9CodecSettings? vp9;

  /// Creates a new [VideoStream].
  /// [h264] H264 codec settings.
  /// [h265] H265 codec settings.
  /// [vp9] VP9 codec settings.
  VideoStream({this.h264, this.h265, this.vp9});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'h264': ?h264 == null ? null : h264!.toMap(),
      'h265': ?h265 == null ? null : h265!.toMap(),
      'vp9': ?vp9 == null ? null : vp9!.toMap(),
    };
  }

  factory VideoStream.fromMap(Map<String, dynamic> map) {
    return VideoStream(
      h264: map['h264'] == null
          ? null
          : H264CodecSettings.fromMap(
              (map['h264'] as Map).cast<String, dynamic>(),
            ),
      h265: map['h265'] == null
          ? null
          : H265CodecSettings.fromMap(
              (map['h265'] as Map).cast<String, dynamic>(),
            ),
      vp9: map['vp9'] == null
          ? null
          : Vp9CodecSettings.fromMap(
              (map['vp9'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
