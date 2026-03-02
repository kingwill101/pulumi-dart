// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_channel_snapshot_delivery_properties.dart';

/// Input properties used for looking up and filtering DeliveryChannel resources.
class DeliveryChannelState {
  /// The name of the delivery channel. Defaults to `default`. Changing it recreates the resource.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the S3 bucket used to store the configuration history.
  final pulumi.Input<String>? s3BucketName;
  /// The prefix for the specified S3 bucket.
  final pulumi.Input<String>? s3KeyPrefix;
  /// The ARN of the AWS KMS key used to encrypt objects delivered by AWS Config. Must belong to the same Region as the destination S3 bucket.
  final pulumi.Input<String>? s3KmsKeyArn;
  /// Options for how AWS Config delivers configuration snapshots. See below
  final pulumi.Input<DeliveryChannelSnapshotDeliveryProperties>? snapshotDeliveryProperties;
  /// The ARN of the SNS topic that AWS Config delivers notifications to.
  final pulumi.Input<String>? snsTopicArn;

  /// Creates a new [DeliveryChannelState].
  /// [name] The name of the delivery channel. Defaults to `default`. Changing it recreates the resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3BucketName] The name of the S3 bucket used to store the configuration history.
  /// [s3KeyPrefix] The prefix for the specified S3 bucket.
  /// [s3KmsKeyArn] The ARN of the AWS KMS key used to encrypt objects delivered by AWS Config. Must belong to the same Region as the destination S3 bucket.
  /// [snapshotDeliveryProperties] Options for how AWS Config delivers configuration snapshots. See below
  /// [snsTopicArn] The ARN of the SNS topic that AWS Config delivers notifications to.
  DeliveryChannelState({
    this.name,
    this.region,
    this.s3BucketName,
    this.s3KeyPrefix,
    this.s3KmsKeyArn,
    this.snapshotDeliveryProperties,
    this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      's3BucketName': ?s3BucketName,
      's3KeyPrefix': ?s3KeyPrefix,
      's3KmsKeyArn': ?s3KmsKeyArn,
      'snapshotDeliveryProperties': ?pulumi.Input.mapOptionalInputValue<DeliveryChannelSnapshotDeliveryProperties, Map<String, dynamic>>(snapshotDeliveryProperties, (value) => value.toMap()),
      'snsTopicArn': ?snsTopicArn,
    };
  }

  factory DeliveryChannelState.fromMap(Map<String, dynamic> map) {
    return DeliveryChannelState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      s3BucketName: map['s3BucketName'] == null ? null : (map['s3BucketName'] as String).input(),
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : (map['s3KeyPrefix'] as String).input(),
      s3KmsKeyArn: map['s3KmsKeyArn'] == null ? null : (map['s3KmsKeyArn'] as String).input(),
      snapshotDeliveryProperties: map['snapshotDeliveryProperties'] == null ? null : (DeliveryChannelSnapshotDeliveryProperties.fromMap((map['snapshotDeliveryProperties'] as Map).cast<String, dynamic>())).input(),
      snsTopicArn: map['snsTopicArn'] == null ? null : (map['snsTopicArn'] as String).input(),
    );
  }
}

