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
  final pulumi.Input<DeliveryChannelSnapshotDeliveryProperties>?
      snapshotDeliveryProperties;

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
  DeliveryChannelArgs({
    String? name,
    String? region,
    required String s3BucketName,
    String? s3KeyPrefix,
    String? s3KmsKeyArn,
    DeliveryChannelSnapshotDeliveryProperties? snapshotDeliveryProperties,
    String? snsTopicArn,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        s3BucketName = pulumi.Input.asInput<String>(s3BucketName),
        s3KeyPrefix = pulumi.Input.asOptionalInput<String>(s3KeyPrefix),
        s3KmsKeyArn = pulumi.Input.asOptionalInput<String>(s3KmsKeyArn),
        snapshotDeliveryProperties = pulumi.Input.asOptionalInput<
                DeliveryChannelSnapshotDeliveryProperties>(
            snapshotDeliveryProperties),
        snsTopicArn = pulumi.Input.asOptionalInput<String>(snsTopicArn);

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
      map['snapshotDeliveryProperties'] = pulumi.Input.mapOptionalInputValue<
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
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      s3BucketName: map['s3BucketName'] as String,
      s3KeyPrefix:
          map['s3KeyPrefix'] == null ? null : map['s3KeyPrefix'] as String,
      s3KmsKeyArn:
          map['s3KmsKeyArn'] == null ? null : map['s3KmsKeyArn'] as String,
      snapshotDeliveryProperties: map['snapshotDeliveryProperties'] == null
          ? null
          : DeliveryChannelSnapshotDeliveryProperties.fromMap(
              (map['snapshotDeliveryProperties'] as Map)
                  .cast<String, dynamic>()),
      snsTopicArn:
          map['snsTopicArn'] == null ? null : map['snsTopicArn'] as String,
    );
  }
}
