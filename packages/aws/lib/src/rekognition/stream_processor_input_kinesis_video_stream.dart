// ignore_for_file: unused_element, unnecessary_cast

class StreamProcessorInputKinesisVideoStream {
  /// ARN of the Kinesis video stream stream that streams the source video.
  final String arn;

  /// Creates a new [StreamProcessorInputKinesisVideoStream].
  /// [arn] ARN of the Kinesis video stream stream that streams the source video.
  StreamProcessorInputKinesisVideoStream({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    return map;
  }

  factory StreamProcessorInputKinesisVideoStream.fromMap(
      Map<String, dynamic> map) {
    return StreamProcessorInputKinesisVideoStream(
      arn: map['arn'] as String,
    );
  }
}
