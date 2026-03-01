// ignore_for_file: unused_element, unnecessary_cast

import 'config_snapshot_delivery_properties_response.dart';

/// Definition of awsConfigServiceDeliveryChannel
class AwsConfigServiceDeliveryChannelPropertiesResponse {
  /// <p>The options for how often Config delivers configuration snapshots to the Amazon S3 bucket.</p>
  final ConfigSnapshotDeliveryPropertiesResponse? configSnapshotDeliveryProperties;
  /// <p>The name of the delivery channel. By default, Config assigns the name 'default' when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.</p>
  final String? name;
  /// <p>The name of the Amazon S3 bucket to which Config delivers configuration snapshots and configuration history files.</p> <p>If you specify a bucket that belongs to another Amazon Web Services account, that bucket must have policies that grant access permissions to Config. For more information, see <a href='https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html'>Permissions for the Amazon S3 Bucket</a> in the <i>Config Developer Guide</i>.</p>
  final String? s3BucketName;
  /// <p>The prefix for the specified Amazon S3 bucket.</p>
  final String? s3KeyPrefix;
  /// <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS ) KMS key (KMS key) used to encrypt objects delivered by Config. Must belong to the same Region as the destination S3 bucket.</p>
  final String? s3KmsKeyArn;
  /// <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which Config sends notifications about configuration changes.</p> <p>If you choose a topic from another account, the topic must have policies that grant access permissions to Config. For more information, see <a href='https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html'>Permissions for the Amazon SNS Topic</a> in the <i>Config Developer Guide</i>.</p>
  final String? snsTopicARN;

  /// Creates a new [AwsConfigServiceDeliveryChannelPropertiesResponse].
  /// [configSnapshotDeliveryProperties] <p>The options for how often Config delivers configuration snapshots to the Amazon S3 bucket.</p>
  /// [name] <p>The name of the delivery channel. By default, Config assigns the name 'default' when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.</p>
  /// [s3BucketName] <p>The name of the Amazon S3 bucket to which Config delivers configuration snapshots and configuration history files.</p> <p>If you specify a bucket that belongs to another Amazon Web Services account, that bucket must have policies that grant access permissions to Config. For more information, see <a href='https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html'>Permissions for the Amazon S3 Bucket</a> in the <i>Config Developer Guide</i>.</p>
  /// [s3KeyPrefix] <p>The prefix for the specified Amazon S3 bucket.</p>
  /// [s3KmsKeyArn] <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS ) KMS key (KMS key) used to encrypt objects delivered by Config. Must belong to the same Region as the destination S3 bucket.</p>
  /// [snsTopicARN] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which Config sends notifications about configuration changes.</p> <p>If you choose a topic from another account, the topic must have policies that grant access permissions to Config. For more information, see <a href='https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html'>Permissions for the Amazon SNS Topic</a> in the <i>Config Developer Guide</i>.</p>
  AwsConfigServiceDeliveryChannelPropertiesResponse({
    this.configSnapshotDeliveryProperties,
    this.name,
    this.s3BucketName,
    this.s3KeyPrefix,
    this.s3KmsKeyArn,
    this.snsTopicARN,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSnapshotDeliveryProperties': ?configSnapshotDeliveryProperties == null ? null : configSnapshotDeliveryProperties!.toMap(),
      'name': ?name,
      's3BucketName': ?s3BucketName,
      's3KeyPrefix': ?s3KeyPrefix,
      's3KmsKeyArn': ?s3KmsKeyArn,
      'snsTopicARN': ?snsTopicARN,
    };
  }

  factory AwsConfigServiceDeliveryChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsConfigServiceDeliveryChannelPropertiesResponse(
      configSnapshotDeliveryProperties: map['configSnapshotDeliveryProperties'] == null ? null : ConfigSnapshotDeliveryPropertiesResponse.fromMap((map['configSnapshotDeliveryProperties'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      s3BucketName: map['s3BucketName'] == null ? null : map['s3BucketName'] as String,
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : map['s3KeyPrefix'] as String,
      s3KmsKeyArn: map['s3KmsKeyArn'] == null ? null : map['s3KmsKeyArn'] as String,
      snsTopicARN: map['snsTopicARN'] == null ? null : map['snsTopicARN'] as String,
    );
  }
}

