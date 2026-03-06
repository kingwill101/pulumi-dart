// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_processor_input_kinesis_video_stream.dart';

class StreamProcessorInput {
  /// Kinesis input stream. See `kinesis_video_stream`.
  final pulumi.Input<StreamProcessorInputKinesisVideoStream> kinesisVideoStream;

  /// Creates a new [StreamProcessorInput].
  /// [kinesisVideoStream] Kinesis input stream. See `kinesis_video_stream`.
  const StreamProcessorInput({
    required this.kinesisVideoStream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kinesisVideoStream': pulumi.Input.mapInputValue<StreamProcessorInputKinesisVideoStream, Map<String, dynamic>>(kinesisVideoStream, (value) => value.toMap()),
    };
  }

  factory StreamProcessorInput.fromMap(Map<String, dynamic> map) {
    return StreamProcessorInput(
      kinesisVideoStream: pulumi.Input.fromValue(StreamProcessorInputKinesisVideoStream.fromMap((map['kinesisVideoStream']! as Map).cast<String, dynamic>())),
    );
  }
}

