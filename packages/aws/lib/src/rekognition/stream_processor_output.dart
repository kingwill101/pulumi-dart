// ignore_for_file: unused_element, unnecessary_cast

import 'stream_processor_output_kinesis_data_stream.dart';
import 'stream_processor_output_s3_destination.dart';

class StreamProcessorOutput {
  /// The Amazon Kinesis Data Streams stream to which the Amazon Rekognition stream processor streams the analysis results. See `kinesis_data_stream`.
  final StreamProcessorOutputKinesisDataStream? kinesisDataStream;
  /// The Amazon S3 bucket location to which Amazon Rekognition publishes the detailed inference results of a video analysis operation. See `s3_destination`.
  final StreamProcessorOutputS3Destination? s3Destination;

  /// Creates a new [StreamProcessorOutput].
  /// [kinesisDataStream] The Amazon Kinesis Data Streams stream to which the Amazon Rekognition stream processor streams the analysis results. See `kinesis_data_stream`.
  /// [s3Destination] The Amazon S3 bucket location to which Amazon Rekognition publishes the detailed inference results of a video analysis operation. See `s3_destination`.
  StreamProcessorOutput({
    this.kinesisDataStream,
    this.s3Destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kinesisDataStream': ?kinesisDataStream == null ? null : kinesisDataStream!.toMap(),
      's3Destination': ?s3Destination == null ? null : s3Destination!.toMap(),
    };
  }

  factory StreamProcessorOutput.fromMap(Map<String, dynamic> map) {
    return StreamProcessorOutput(
      kinesisDataStream: map['kinesisDataStream'] == null ? null : StreamProcessorOutputKinesisDataStream.fromMap((map['kinesisDataStream'] as Map).cast<String, dynamic>()),
      s3Destination: map['s3Destination'] == null ? null : StreamProcessorOutputS3Destination.fromMap((map['s3Destination'] as Map).cast<String, dynamic>()),
    );
  }
}

