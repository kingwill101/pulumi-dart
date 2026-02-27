// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../delivery_channel_snapshot_delivery_properties/delivery_channel_snapshot_delivery_properties.dart';

/// The set of arguments for DeliveryChannel.
class DeliveryChannelArgs {
  /// The name of the delivery channel. Defaults to `default`. Changing it recreates the resource.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the S3 bucket used to store the configuration history.
  final Input<String> s3BucketName;

  /// The prefix for the specified S3 bucket.
  final Input<String>? s3KeyPrefix;

  /// The ARN of the AWS KMS key used to encrypt objects delivered by AWS Config. Must belong to the same Region as the destination S3 bucket.
  final Input<String>? s3KmsKeyArn;

  /// Options for how AWS Config delivers configuration snapshots. See below
  final Input<DeliveryChannelSnapshotDeliveryProperties>?
      snapshotDeliveryProperties;

  /// The ARN of the SNS topic that AWS Config delivers notifications to.
  final Input<String>? snsTopicArn;

  DeliveryChannelArgs({
    this.name,
    this.region,
    required this.s3BucketName,
    this.s3KeyPrefix,
    this.s3KmsKeyArn,
    this.snapshotDeliveryProperties,
    this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['s3BucketName'] = s3BucketName;
    final s3KeyPrefixValue = s3KeyPrefix;
    if (s3KeyPrefixValue != null) {
      map['s3KeyPrefix'] = s3KeyPrefixValue;
    }
    final s3KmsKeyArnValue = s3KmsKeyArn;
    if (s3KmsKeyArnValue != null) {
      map['s3KmsKeyArn'] = s3KmsKeyArnValue;
    }
    final snapshotDeliveryPropertiesValue = snapshotDeliveryProperties;
    if (snapshotDeliveryPropertiesValue != null) {
      map['snapshotDeliveryProperties'] = Input.mapOptionalInputValue<
              DeliveryChannelSnapshotDeliveryProperties, Map<String, dynamic>>(
          snapshotDeliveryPropertiesValue, (value) => value.toMap());
    }
    final snsTopicArnValue = snsTopicArn;
    if (snsTopicArnValue != null) {
      map['snsTopicArn'] = snsTopicArnValue;
    }
    return map;
  }

  factory DeliveryChannelArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryChannelArgs(
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      s3BucketName: Input.asInput<String>(map['s3BucketName']),
      s3KeyPrefix: Input.asOptionalInput<String>(map['s3KeyPrefix']),
      s3KmsKeyArn: Input.asOptionalInput<String>(map['s3KmsKeyArn']),
      snapshotDeliveryProperties:
          Input.asOptionalInput<DeliveryChannelSnapshotDeliveryProperties>(
              map['snapshotDeliveryProperties']),
      snsTopicArn: Input.asOptionalInput<String>(map['snsTopicArn']),
    );
  }
}
