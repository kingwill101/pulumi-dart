// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamProcessorOutputKinesisDataStream {
  /// ARN of the output Amazon Kinesis Data Streams stream.
  final pulumi.Input<String>? arn;

  /// Creates a new [StreamProcessorOutputKinesisDataStream].
  /// [arn] ARN of the output Amazon Kinesis Data Streams stream.
  StreamProcessorOutputKinesisDataStream({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
    };
  }

  factory StreamProcessorOutputKinesisDataStream.fromMap(Map<String, dynamic> map) {
    return StreamProcessorOutputKinesisDataStream(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
    );
  }
}

