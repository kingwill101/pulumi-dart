// ignore_for_file: unused_element, unnecessary_cast

import '../stream_processor_input_kinesis_video_stream/stream_processor_input_kinesis_video_stream.dart';

class StreamProcessorInput {
  /// Kinesis input stream. See <span pulumi-lang-nodejs="`kinesisVideoStream`" pulumi-lang-dotnet="`KinesisVideoStream`" pulumi-lang-go="`kinesisVideoStream`" pulumi-lang-python="`kinesis_video_stream`" pulumi-lang-yaml="`kinesisVideoStream`" pulumi-lang-java="`kinesisVideoStream`">`kinesis_video_stream`</span>.
  final StreamProcessorInputKinesisVideoStream kinesisVideoStream;

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
