// ignore_for_file: unused_element, unnecessary_cast

import 'stream_processor_input_kinesis_video_stream.dart';

class StreamProcessorInput {
  /// Kinesis input stream. See `kinesis_video_stream`.
  final StreamProcessorInputKinesisVideoStream kinesisVideoStream;

  /// Creates a new [StreamProcessorInput].
  /// [kinesisVideoStream] Kinesis input stream. See `kinesis_video_stream`.
  StreamProcessorInput({
    required this.kinesisVideoStream,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kinesisVideoStream'] = kinesisVideoStream.toMap();
    return map;
  }

  factory StreamProcessorInput.fromMap(Map<String, dynamic> map) {
    return StreamProcessorInput(
      kinesisVideoStream: StreamProcessorInputKinesisVideoStream.fromMap(
          (map['kinesisVideoStream'] as Map).cast<String, dynamic>()),
    );
  }
}
