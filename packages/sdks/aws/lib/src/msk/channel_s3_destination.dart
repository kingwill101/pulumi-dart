// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_s3_destination_dead_letter_queue_s3.dart';
import 'channel_s3_destination_storage.dart';

class ChannelS3Destination {
  /// Maximum time, in seconds, that records buffer in MSK before being flushed to the destination. Valid values are between `300` and `900`. Defaults to `600`. Can be updated in place without recreating the channel.
  final pulumi.Input<int?>? dataFreshnessInSeconds;
  /// Amazon S3 bucket and prefix where MSK writes records that fail to deliver. See `deadLetterQueueS3` Block below.
  final pulumi.Input<ChannelS3DestinationDeadLetterQueueS3> deadLetterQueueS3;
  /// ARN of the IAM role that MSK assumes to write to the destination Amazon S3 bucket and the dead-letter bucket.
  final pulumi.Input<String> serviceExecutionRoleArn;
  /// Amazon S3 bucket, prefix, and storage class for delivered records. See `storage` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ChannelS3DestinationStorage> storage;

  /// Creates a new [ChannelS3Destination].
  /// [dataFreshnessInSeconds] Maximum time, in seconds, that records buffer in MSK before being flushed to the destination. Valid values are between `300` and `900`. Defaults to `600`. Can be updated in place without recreating the channel.
  /// [deadLetterQueueS3] Amazon S3 bucket and prefix where MSK writes records that fail to deliver. See `deadLetterQueueS3` Block below.
  /// [serviceExecutionRoleArn] ARN of the IAM role that MSK assumes to write to the destination Amazon S3 bucket and the dead-letter bucket.
  /// [storage] Amazon S3 bucket, prefix, and storage class for delivered records. See `storage` Block below.
  const ChannelS3Destination({
    this.dataFreshnessInSeconds,
    required this.deadLetterQueueS3,
    required this.serviceExecutionRoleArn,
    required this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFreshnessInSeconds': ?dataFreshnessInSeconds,
      'deadLetterQueueS3': pulumi.Input.mapInputValue<ChannelS3DestinationDeadLetterQueueS3, Map<String, dynamic>>(deadLetterQueueS3, (value) => value.toMap()),
      'serviceExecutionRoleArn': serviceExecutionRoleArn,
      'storage': pulumi.Input.mapInputValue<ChannelS3DestinationStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
    };
  }

  factory ChannelS3Destination.fromMap(Map<String, dynamic> map) {
    return ChannelS3Destination(
      dataFreshnessInSeconds: (() { final guardedValue = map['dataFreshnessInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      deadLetterQueueS3: pulumi.Input.fromValue(ChannelS3DestinationDeadLetterQueueS3.fromMap((map['deadLetterQueueS3']! as Map).cast<String, dynamic>())),
      serviceExecutionRoleArn: pulumi.Input.fromValue(map['serviceExecutionRoleArn'] as String),
      storage: pulumi.Input.fromValue(ChannelS3DestinationStorage.fromMap((map['storage']! as Map).cast<String, dynamic>())),
    );
  }
}
