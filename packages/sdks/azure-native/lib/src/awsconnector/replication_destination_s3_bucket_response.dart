// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_translation_response.dart';
import 'encryption_configuration_s3_bucket_response.dart';
import 'metrics_response.dart';
import 'replication_time_response.dart';

/// Definition of ReplicationDestination
class ReplicationDestinationS3BucketResponse {
  /// Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS-account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS-account that owns the source object. Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS-account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS-account that owns the source object.
  final pulumi.Input<AccessControlTranslationResponse>? accessControlTranslation;
  /// Destination bucket owner account ID. In a cross-account scenario, if you direct Amazon S3 to change replica ownership to the AWS-account that owns the destination bucket by specifying the ``AccessControlTranslation`` property, this is the account ID of the destination bucket owner. For more information, see [Cross-Region Replication Additional Configuration: Change Replica Owner](https://docs.aws.amazon.com/AmazonS3/latest/dev/crr-change-owner.html) in the *Amazon S3 User Guide*. If you specify the ``AccessControlTranslation`` property, the ``Account`` property is required.
  final pulumi.Input<String>? account;
  /// The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to store the results.
  final pulumi.Input<String>? bucket;
  /// Specifies encryption-related information. Specifies encryption-related information for an Amazon S3 bucket that is a destination for replicated objects.
  final pulumi.Input<EncryptionConfigurationS3BucketResponse>? encryptionConfiguration;
  /// A container specifying replication metrics-related settings enabling replication metrics and events. A container specifying replication metrics-related settings enabling replication metrics and events.
  final pulumi.Input<MetricsResponse>? metrics;
  /// A container specifying S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a ``Metrics`` block. A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a ``Metrics`` block.
  final pulumi.Input<ReplicationTimeResponse>? replicationTime;
  /// The storage class to use when replicating objects, such as S3 Standard or reduced redundancy. By default, Amazon S3 uses the storage class of the source object to create the object replica.  For valid values, see the ``StorageClass`` element of the [PUT Bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) action in the *Amazon S3 API Reference*.
  final pulumi.Input<String>? storageClass;

  /// Creates a new [ReplicationDestinationS3BucketResponse].
  /// [accessControlTranslation] Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS-account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS-account that owns the source object. Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS-account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS-account that owns the source object.
  /// [account] Destination bucket owner account ID. In a cross-account scenario, if you direct Amazon S3 to change replica ownership to the AWS-account that owns the destination bucket by specifying the ``AccessControlTranslation`` property, this is the account ID of the destination bucket owner. For more information, see [Cross-Region Replication Additional Configuration: Change Replica Owner](https://docs.aws.amazon.com/AmazonS3/latest/dev/crr-change-owner.html) in the *Amazon S3 User Guide*. If you specify the ``AccessControlTranslation`` property, the ``Account`` property is required.
  /// [bucket] The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to store the results.
  /// [encryptionConfiguration] Specifies encryption-related information. Specifies encryption-related information for an Amazon S3 bucket that is a destination for replicated objects.
  /// [metrics] A container specifying replication metrics-related settings enabling replication metrics and events. A container specifying replication metrics-related settings enabling replication metrics and events.
  /// [replicationTime] A container specifying S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a ``Metrics`` block. A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a ``Metrics`` block.
  /// [storageClass] The storage class to use when replicating objects, such as S3 Standard or reduced redundancy. By default, Amazon S3 uses the storage class of the source object to create the object replica.  For valid values, see the ``StorageClass`` element of the [PUT Bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) action in the *Amazon S3 API Reference*.
  const ReplicationDestinationS3BucketResponse({
    this.accessControlTranslation,
    this.account,
    this.bucket,
    this.encryptionConfiguration,
    this.metrics,
    this.replicationTime,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlTranslation': ?pulumi.Input.mapOptionalInputValue<AccessControlTranslationResponse, Map<String, dynamic>>(accessControlTranslation, (value) => value.toMap()),
      'account': ?account,
      'bucket': ?bucket,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<EncryptionConfigurationS3BucketResponse, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'metrics': ?pulumi.Input.mapOptionalInputValue<MetricsResponse, Map<String, dynamic>>(metrics, (value) => value.toMap()),
      'replicationTime': ?pulumi.Input.mapOptionalInputValue<ReplicationTimeResponse, Map<String, dynamic>>(replicationTime, (value) => value.toMap()),
      'storageClass': ?storageClass,
    };
  }

  factory ReplicationDestinationS3BucketResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationDestinationS3BucketResponse(
      accessControlTranslation: (() { final guardedValue = map['accessControlTranslation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessControlTranslationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionConfigurationS3BucketResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicationTime: (() { final guardedValue = map['replicationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationTimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
