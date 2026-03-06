// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_snapshot_delivery_properties.dart';

/// Definition of awsConfigServiceDeliveryChannel
class AwsConfigServiceDeliveryChannelProperties {
  /// &lt;p&gt;The options for how often Config delivers configuration snapshots to the Amazon S3 bucket.&lt;/p&gt;
  final pulumi.Input<ConfigSnapshotDeliveryProperties>? configSnapshotDeliveryProperties;
  /// &lt;p&gt;The name of the delivery channel. By default, Config assigns the name 'default' when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.&lt;/p&gt;
  final pulumi.Input<String>? name;
  /// &lt;p&gt;The name of the Amazon S3 bucket to which Config delivers configuration snapshots and configuration history files.&lt;/p&gt; &lt;p&gt;If you specify a bucket that belongs to another Amazon Web Services account, that bucket must have policies that grant access permissions to Config. For more information, see &lt;a href='https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html'&gt;Permissions for the Amazon S3 Bucket&lt;/a&gt; in the &lt;i&gt;Config Developer Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<String>? s3BucketName;
  /// &lt;p&gt;The prefix for the specified Amazon S3 bucket.&lt;/p&gt;
  final pulumi.Input<String>? s3KeyPrefix;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the Key Management Service (KMS ) KMS key (KMS key) used to encrypt objects delivered by Config. Must belong to the same Region as the destination S3 bucket.&lt;/p&gt;
  final pulumi.Input<String>? s3KmsKeyArn;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic to which Config sends notifications about configuration changes.&lt;/p&gt; &lt;p&gt;If you choose a topic from another account, the topic must have policies that grant access permissions to Config. For more information, see &lt;a href='https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html'&gt;Permissions for the Amazon SNS Topic&lt;/a&gt; in the &lt;i&gt;Config Developer Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<String>? snsTopicARN;

  /// Creates a new [AwsConfigServiceDeliveryChannelProperties].
  /// [configSnapshotDeliveryProperties] &lt;p&gt;The options for how often Config delivers configuration snapshots to the Amazon S3 bucket.&lt;/p&gt;
  /// [name] &lt;p&gt;The name of the delivery channel. By default, Config assigns the name 'default' when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.&lt;/p&gt;
  /// [s3BucketName] &lt;p&gt;The name of the Amazon S3 bucket to which Config delivers configuration snapshots and configuration history files.&lt;/p&gt; &lt;p&gt;If you specify a bucket that belongs to another Amazon Web Services account, that bucket must have policies that grant access permissions to Config. For more information, see &lt;a href='https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html'&gt;Permissions for the Amazon S3 Bucket&lt;/a&gt; in the &lt;i&gt;Config Developer Guide&lt;/i&gt;.&lt;/p&gt;
  /// [s3KeyPrefix] &lt;p&gt;The prefix for the specified Amazon S3 bucket.&lt;/p&gt;
  /// [s3KmsKeyArn] &lt;p&gt;The Amazon Resource Name (ARN) of the Key Management Service (KMS ) KMS key (KMS key) used to encrypt objects delivered by Config. Must belong to the same Region as the destination S3 bucket.&lt;/p&gt;
  /// [snsTopicARN] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic to which Config sends notifications about configuration changes.&lt;/p&gt; &lt;p&gt;If you choose a topic from another account, the topic must have policies that grant access permissions to Config. For more information, see &lt;a href='https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html'&gt;Permissions for the Amazon SNS Topic&lt;/a&gt; in the &lt;i&gt;Config Developer Guide&lt;/i&gt;.&lt;/p&gt;
  const AwsConfigServiceDeliveryChannelProperties({
    this.configSnapshotDeliveryProperties,
    this.name,
    this.s3BucketName,
    this.s3KeyPrefix,
    this.s3KmsKeyArn,
    this.snsTopicARN,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSnapshotDeliveryProperties': ?pulumi.Input.mapOptionalInputValue<ConfigSnapshotDeliveryProperties, Map<String, dynamic>>(configSnapshotDeliveryProperties, (value) => value.toMap()),
      'name': ?name,
      's3BucketName': ?s3BucketName,
      's3KeyPrefix': ?s3KeyPrefix,
      's3KmsKeyArn': ?s3KmsKeyArn,
      'snsTopicARN': ?snsTopicARN,
    };
  }

  factory AwsConfigServiceDeliveryChannelProperties.fromMap(Map<String, dynamic> map) {
    return AwsConfigServiceDeliveryChannelProperties(
      configSnapshotDeliveryProperties: (() { final guardedValue = map['configSnapshotDeliveryProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigSnapshotDeliveryProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3BucketName: (() { final guardedValue = map['s3BucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3KeyPrefix: (() { final guardedValue = map['s3KeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3KmsKeyArn: (() { final guardedValue = map['s3KmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snsTopicARN: (() { final guardedValue = map['snsTopicARN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

