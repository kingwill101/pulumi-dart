// ignore_for_file: unused_element, unnecessary_cast

import 'audio_stream.dart';
import 'text_stream.dart';
import 'video_stream.dart';

/// Encoding of an input file such as an audio, video, or text track. Elementary streams must be packaged before mapping and sharing between different output formats.
class ElementaryStream {
  /// Encoding of an audio stream.
  final AudioStream? audioStream;

  /// A unique key for this elementary stream.
  final String? key;

  /// Encoding of a text stream. For example, closed captions or subtitles.
  final TextStream? textStream;

  /// Encoding of a video stream.
  final VideoStream? videoStream;

  /// Creates a new [ElementaryStream].
  /// [audioStream] Encoding of an audio stream.
  /// [key] A unique key for this elementary stream.
  /// [textStream] Encoding of a text stream. For example, closed captions or subtitles.
  /// [videoStream] Encoding of a video stream.
  ElementaryStream({
    this.audioStream,
    this.key,
    this.textStream,
    this.videoStream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioStream': ?audioStream == null ? null : audioStream!.toMap(),
      'key': ?key,
      'textStream': ?textStream == null ? null : textStream!.toMap(),
      'videoStream': ?videoStream == null ? null : videoStream!.toMap(),
    };
  }

  factory ElementaryStream.fromMap(Map<String, dynamic> map) {
    return ElementaryStream(
      audioStream: map['audioStream'] == null
          ? null
          : AudioStream.fromMap(
              (map['audioStream'] as Map).cast<String, dynamic>(),
            ),
      key: map['key'] == null ? null : map['key'] as String,
      textStream: map['textStream'] == null
          ? null
          : TextStream.fromMap(
              (map['textStream'] as Map).cast<String, dynamic>(),
            ),
      videoStream: map['videoStream'] == null
          ? null
          : VideoStream.fromMap(
              (map['videoStream'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
