// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_processor_output_kinesis_data_stream.dart';
import 'stream_processor_output_s3_destination.dart';

class StreamProcessorOutput {
  /// Amazon Kinesis Data Streams stream to which the Amazon Rekognition stream processor streams the analysis results. See `kinesisDataStream`.
  final pulumi.Input<StreamProcessorOutputKinesisDataStream?>? kinesisDataStream;
  /// Amazon S3 bucket location to which Amazon Rekognition publishes the detailed inference results of a video analysis operation. See `s3Destination`.
  final pulumi.Input<StreamProcessorOutputS3Destination?>? s3Destination;

  /// Creates a new [StreamProcessorOutput].
  /// [kinesisDataStream] Amazon Kinesis Data Streams stream to which the Amazon Rekognition stream processor streams the analysis results. See `kinesisDataStream`.
  /// [s3Destination] Amazon S3 bucket location to which Amazon Rekognition publishes the detailed inference results of a video analysis operation. See `s3Destination`.
  const StreamProcessorOutput({
    this.kinesisDataStream,
    this.s3Destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kinesisDataStream': ?pulumi.Input.mapOptionalInputValue<StreamProcessorOutputKinesisDataStream, Map<String, dynamic>>(kinesisDataStream, (value) => value.toMap()),
      's3Destination': ?pulumi.Input.mapOptionalInputValue<StreamProcessorOutputS3Destination, Map<String, dynamic>>(s3Destination, (value) => value.toMap()),
    };
  }

  factory StreamProcessorOutput.fromMap(Map<String, dynamic> map) {
    return StreamProcessorOutput(
      kinesisDataStream: (() { final guardedValue = map['kinesisDataStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamProcessorOutputKinesisDataStream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Destination: (() { final guardedValue = map['s3Destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamProcessorOutputS3Destination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
