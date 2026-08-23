// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_channel_snapshot_delivery_properties.dart';

/// {@template pulumi_cfg_delivery_channel_delivery_channel_args_doc}
/// The set of arguments for DeliveryChannel.
/// {@endtemplate}
/// {@macro pulumi_cfg_delivery_channel_delivery_channel_args_doc}
class DeliveryChannelArgs {
  /// The name of the delivery channel. Defaults to `default`. Changing it recreates the resource.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the S3 bucket used to store the configuration history.
  final pulumi.Input<String> s3BucketName;
  /// The prefix for the specified S3 bucket.
  final pulumi.Input<String>? s3KeyPrefix;
  /// The ARN of the AWS KMS key used to encrypt objects delivered by AWS Config. Must belong to the same Region as the destination S3 bucket.
  final pulumi.Input<String>? s3KmsKeyArn;
  /// Options for how AWS Config delivers configuration snapshots. See below
  final pulumi.Input<DeliveryChannelSnapshotDeliveryProperties>? snapshotDeliveryProperties;
  /// The ARN of the SNS topic that AWS Config delivers notifications to.
  final pulumi.Input<String>? snsTopicArn;

  /// Creates a new [DeliveryChannelArgs].
  /// [name] The name of the delivery channel. Defaults to `default`. Changing it recreates the resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3BucketName] The name of the S3 bucket used to store the configuration history.
  /// [s3KeyPrefix] The prefix for the specified S3 bucket.
  /// [s3KmsKeyArn] The ARN of the AWS KMS key used to encrypt objects delivered by AWS Config. Must belong to the same Region as the destination S3 bucket.
  /// [snapshotDeliveryProperties] Options for how AWS Config delivers configuration snapshots. See below
  /// [snsTopicArn] The ARN of the SNS topic that AWS Config delivers notifications to.
  const DeliveryChannelArgs({
    this.name,
    this.region,
    required this.s3BucketName,
    this.s3KeyPrefix,
    this.s3KmsKeyArn,
    this.snapshotDeliveryProperties,
    this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      's3BucketName': s3BucketName,
      's3KeyPrefix': ?s3KeyPrefix,
      's3KmsKeyArn': ?s3KmsKeyArn,
      'snapshotDeliveryProperties': ?pulumi.Input.mapOptionalInputValue<DeliveryChannelSnapshotDeliveryProperties, Map<String, dynamic>>(snapshotDeliveryProperties, (value) => value.toMap()),
      'snsTopicArn': ?snsTopicArn,
    };
  }

  factory DeliveryChannelArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryChannelArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3BucketName: pulumi.Input.fromValue(map['s3BucketName'] as String),
      s3KeyPrefix: (() { final guardedValue = map['s3KeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3KmsKeyArn: (() { final guardedValue = map['s3KmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotDeliveryProperties: (() { final guardedValue = map['snapshotDeliveryProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryChannelSnapshotDeliveryProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snsTopicArn: (() { final guardedValue = map['snsTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
