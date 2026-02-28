// ignore_for_file: unused_element, unnecessary_cast

import 'job_template_config_elementary_stream_audio_stream.dart';
import 'job_template_config_elementary_stream_video_stream.dart';

class JobTemplateConfigElementaryStream {
  /// Encoding of an audio stream.
  /// Structure is documented below.
  final JobTemplateConfigElementaryStreamAudioStream? audioStream;
  /// A unique key for this atom.
  final String? key;
  /// Encoding of a video stream.
  /// Structure is documented below.
  final JobTemplateConfigElementaryStreamVideoStream? videoStream;

  /// Creates a new [JobTemplateConfigElementaryStream].
  /// [audioStream] Encoding of an audio stream.
  /// [key] A unique key for this atom.
  /// [videoStream] Encoding of a video stream.
  JobTemplateConfigElementaryStream({
    this.audioStream,
    this.key,
    this.videoStream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioStream': ?audioStream == null ? null : audioStream!.toMap(),
      'key': ?key,
      'videoStream': ?videoStream == null ? null : videoStream!.toMap(),
    };
  }

  factory JobTemplateConfigElementaryStream.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigElementaryStream(
      audioStream: map['audioStream'] == null ? null : JobTemplateConfigElementaryStreamAudioStream.fromMap((map['audioStream'] as Map).cast<String, dynamic>()),
      key: map['key'] == null ? null : map['key'] as String,
      videoStream: map['videoStream'] == null ? null : JobTemplateConfigElementaryStreamVideoStream.fromMap((map['videoStream'] as Map).cast<String, dynamic>()),
    );
  }
}

