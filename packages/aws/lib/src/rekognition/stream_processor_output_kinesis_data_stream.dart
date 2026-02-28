// ignore_for_file: unused_element, unnecessary_cast

class StreamProcessorOutputKinesisDataStream {
  /// ARN of the output Amazon Kinesis Data Streams stream.
  final String? arn;

  /// Creates a new [StreamProcessorOutputKinesisDataStream].
  /// [arn] ARN of the output Amazon Kinesis Data Streams stream.
  StreamProcessorOutputKinesisDataStream({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    return map;
  }

  factory StreamProcessorOutputKinesisDataStream.fromMap(
      Map<String, dynamic> map) {
    return StreamProcessorOutputKinesisDataStream(
      arn: map['arn'] == null ? null : map['arn'] as String,
    );
  }
}
