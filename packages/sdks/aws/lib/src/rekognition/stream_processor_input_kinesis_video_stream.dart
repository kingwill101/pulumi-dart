// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamProcessorInputKinesisVideoStream {
  /// ARN of the Kinesis video stream stream that streams the source video.
  final pulumi.Input<String> arn;

  /// Creates a new [StreamProcessorInputKinesisVideoStream].
  /// [arn] ARN of the Kinesis video stream stream that streams the source video.
  StreamProcessorInputKinesisVideoStream({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
    };
  }

  factory StreamProcessorInputKinesisVideoStream.fromMap(Map<String, dynamic> map) {
    return StreamProcessorInputKinesisVideoStream(
      arn: pulumi.Input.fromValue(map['arn'] as String),
    );
  }
}

