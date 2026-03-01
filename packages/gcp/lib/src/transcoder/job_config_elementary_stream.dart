// ignore_for_file: unused_element, unnecessary_cast

import 'job_config_elementary_stream_audio_stream.dart';
import 'job_config_elementary_stream_video_stream.dart';

class JobConfigElementaryStream {
  /// Encoding of an audio stream.
  /// Structure is documented below.
  final JobConfigElementaryStreamAudioStream? audioStream;

  /// A unique key for this atom.
  final String? key;

  /// Encoding of a video stream.
  /// Structure is documented below.
  final JobConfigElementaryStreamVideoStream? videoStream;

  /// Creates a new [JobConfigElementaryStream].
  /// [audioStream] Encoding of an audio stream.
  /// [key] A unique key for this atom.
  /// [videoStream] Encoding of a video stream.
  JobConfigElementaryStream({this.audioStream, this.key, this.videoStream});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioStream': ?audioStream == null ? null : audioStream!.toMap(),
      'key': ?key,
      'videoStream': ?videoStream == null ? null : videoStream!.toMap(),
    };
  }

  factory JobConfigElementaryStream.fromMap(Map<String, dynamic> map) {
    return JobConfigElementaryStream(
      audioStream: map['audioStream'] == null
          ? null
          : JobConfigElementaryStreamAudioStream.fromMap(
              (map['audioStream'] as Map).cast<String, dynamic>(),
            ),
      key: map['key'] == null ? null : map['key'] as String,
      videoStream: map['videoStream'] == null
          ? null
          : JobConfigElementaryStreamVideoStream.fromMap(
              (map['videoStream'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
