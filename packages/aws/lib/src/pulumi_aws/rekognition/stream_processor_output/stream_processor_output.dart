// ignore_for_file: unused_element, unnecessary_cast

import '../stream_processor_output_kinesis_data_stream/stream_processor_output_kinesis_data_stream.dart';
import '../stream_processor_output_s3_destination/stream_processor_output_s3_destination.dart';

class StreamProcessorOutput {
  /// The Amazon Kinesis Data Streams stream to which the Amazon Rekognition stream processor streams the analysis results. See <span pulumi-lang-nodejs="`kinesisDataStream`" pulumi-lang-dotnet="`KinesisDataStream`" pulumi-lang-go="`kinesisDataStream`" pulumi-lang-python="`kinesis_data_stream`" pulumi-lang-yaml="`kinesisDataStream`" pulumi-lang-java="`kinesisDataStream`">`kinesis_data_stream`</span>.
  final StreamProcessorOutputKinesisDataStream? kinesisDataStream;

  /// The Amazon S3 bucket location to which Amazon Rekognition publishes the detailed inference results of a video analysis operation. See <span pulumi-lang-nodejs="`s3Destination`" pulumi-lang-dotnet="`S3Destination`" pulumi-lang-go="`s3Destination`" pulumi-lang-python="`s3_destination`" pulumi-lang-yaml="`s3Destination`" pulumi-lang-java="`s3Destination`">`s3_destination`</span>.
  final StreamProcessorOutputS3Destination? s3Destination;

  StreamProcessorOutput({
    this.kinesisDataStream,
    this.s3Destination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kinesisDataStreamValue = kinesisDataStream;
    if (kinesisDataStreamValue != null) {
      map['kinesisDataStream'] = kinesisDataStreamValue.toMap();
    }
    final s3DestinationValue = s3Destination;
    if (s3DestinationValue != null) {
      map['s3Destination'] = s3DestinationValue.toMap();
    }
    return map;
  }

  factory StreamProcessorOutput.fromMap(Map<String, dynamic> map) {
    return StreamProcessorOutput(
      kinesisDataStream: map['kinesisDataStream'] == null
          ? null
          : StreamProcessorOutputKinesisDataStream.fromMap(
              (map['kinesisDataStream'] as Map).cast<String, dynamic>()),
      s3Destination: map['s3Destination'] == null
          ? null
          : StreamProcessorOutputS3Destination.fromMap(
              (map['s3Destination'] as Map).cast<String, dynamic>()),
    );
  }
}
