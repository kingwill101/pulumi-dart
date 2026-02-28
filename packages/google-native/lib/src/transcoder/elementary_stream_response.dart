// ignore_for_file: unused_element, unnecessary_cast

import 'audio_stream_response.dart';
import 'text_stream_response.dart';
import 'video_stream_response.dart';

/// Encoding of an input file such as an audio, video, or text track. Elementary streams must be packaged before mapping and sharing between different output formats.
class ElementaryStreamResponse {
  /// Encoding of an audio stream.
  final AudioStreamResponse audioStream;

  /// A unique key for this elementary stream.
  final String key;

  /// Encoding of a text stream. For example, closed captions or subtitles.
  final TextStreamResponse textStream;

  /// Encoding of a video stream.
  final VideoStreamResponse videoStream;

  /// Creates a new [ElementaryStreamResponse].
  /// [audioStream] Encoding of an audio stream.
  /// [key] A unique key for this elementary stream.
  /// [textStream] Encoding of a text stream. For example, closed captions or subtitles.
  /// [videoStream] Encoding of a video stream.
  ElementaryStreamResponse({
    required this.audioStream,
    required this.key,
    required this.textStream,
    required this.videoStream,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audioStream'] = audioStream.toMap();
    map['key'] = key;
    map['textStream'] = textStream.toMap();
    map['videoStream'] = videoStream.toMap();
    return map;
  }

  factory ElementaryStreamResponse.fromMap(Map<String, dynamic> map) {
    return ElementaryStreamResponse(
      audioStream: AudioStreamResponse.fromMap(
          (map['audioStream'] as Map).cast<String, dynamic>()),
      key: map['key'] as String,
      textStream: TextStreamResponse.fromMap(
          (map['textStream'] as Map).cast<String, dynamic>()),
      videoStream: VideoStreamResponse.fromMap(
          (map['videoStream'] as Map).cast<String, dynamic>()),
    );
  }
}
