// ignore_for_file: unused_element, unnecessary_cast

import 'access_control_translation.dart';
import 'encryption_configuration.dart';
import 'metrics.dart';
import 'replication_time.dart';

/// Definition of ReplicationDestination
class ReplicationDestination {
  /// Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS-account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS-account that owns the source object. Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS-account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS-account that owns the source object.
  final AccessControlTranslation? accessControlTranslation;
  /// Destination bucket owner account ID. In a cross-account scenario, if you direct Amazon S3 to change replica ownership to the AWS-account that owns the destination bucket by specifying the ``AccessControlTranslation`` property, this is the account ID of the destination bucket owner. For more information, see [Cross-Region Replication Additional Configuration: Change Replica Owner](https://docs.aws.amazon.com/AmazonS3/latest/dev/crr-change-owner.html) in the *Amazon S3 User Guide*. If you specify the ``AccessControlTranslation`` property, the ``Account`` property is required.
  final String? account;
  /// The AWS For One Zone file systems, the replication configuration must specify the Availability Zone in which the destination file system is located.  Use the format ``us-east-1a`` to specify the Availability Zone. For more information about One Zone file systems, see [EFS file system types](https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html) in the *Amazon EFS User Guide*.  One Zone file system type is not available in all Availability Zones in AWS-Regions where Amazon EFS is available.
  final String? availabilityZoneName;
  /// The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to store the results.
  final String? bucket;
  /// Specifies encryption-related information. Specifies encryption-related information for an Amazon S3 bucket that is a destination for replicated objects.
  final EncryptionConfiguration? encryptionConfiguration;
  /// The ID of the destination Amazon EFS file system.
  final String? fileSystemId;
  /// The ID of an kms-key-long used to protect the encrypted file system.
  final String? kmsKeyId;
  /// A container specifying replication metrics-related settings enabling replication metrics and events. A container specifying replication metrics-related settings enabling replication metrics and events.
  final Metrics? metrics;
  /// The AWS-Region in which the destination file system is located.  For One Zone file systems, the replication configuration must specify the AWS-Region in which the destination file system is located.
  final String? region;
  /// A container specifying S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a ``Metrics`` block. A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a ``Metrics`` block.
  final ReplicationTime? replicationTime;
  /// The storage class to use when replicating objects, such as S3 Standard or reduced redundancy. By default, Amazon S3 uses the storage class of the source object to create the object replica.  For valid values, see the ``StorageClass`` element of the [PUT Bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) action in the *Amazon S3 API Reference*.
  final String? storageClass;

  /// Creates a new [ReplicationDestination].
  /// [accessControlTranslation] Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS-account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS-account that owns the source object. Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS-account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS-account that owns the source object.
  /// [account] Destination bucket owner account ID. In a cross-account scenario, if you direct Amazon S3 to change replica ownership to the AWS-account that owns the destination bucket by specifying the ``AccessControlTranslation`` property, this is the account ID of the destination bucket owner. For more information, see [Cross-Region Replication Additional Configuration: Change Replica Owner](https://docs.aws.amazon.com/AmazonS3/latest/dev/crr-change-owner.html) in the *Amazon S3 User Guide*. If you specify the ``AccessControlTranslation`` property, the ``Account`` property is required.
  /// [availabilityZoneName] The AWS For One Zone file systems, the replication configuration must specify the Availability Zone in which the destination file system is located.  Use the format ``us-east-1a`` to specify the Availability Zone. For more information about One Zone file systems, see [EFS file system types](https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html) in the *Amazon EFS User Guide*.  One Zone file system type is not available in all Availability Zones in AWS-Regions where Amazon EFS is available.
  /// [bucket] The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to store the results.
  /// [encryptionConfiguration] Specifies encryption-related information. Specifies encryption-related information for an Amazon S3 bucket that is a destination for replicated objects.
  /// [fileSystemId] The ID of the destination Amazon EFS file system.
  /// [kmsKeyId] The ID of an kms-key-long used to protect the encrypted file system.
  /// [metrics] A container specifying replication metrics-related settings enabling replication metrics and events. A container specifying replication metrics-related settings enabling replication metrics and events.
  /// [region] The AWS-Region in which the destination file system is located.  For One Zone file systems, the replication configuration must specify the AWS-Region in which the destination file system is located.
  /// [replicationTime] A container specifying S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a ``Metrics`` block. A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a ``Metrics`` block.
  /// [storageClass] The storage class to use when replicating objects, such as S3 Standard or reduced redundancy. By default, Amazon S3 uses the storage class of the source object to create the object replica.  For valid values, see the ``StorageClass`` element of the [PUT Bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) action in the *Amazon S3 API Reference*.
  ReplicationDestination({
    this.accessControlTranslation,
    this.account,
    this.availabilityZoneName,
    this.bucket,
    this.encryptionConfiguration,
    this.fileSystemId,
    this.kmsKeyId,
    this.metrics,
    this.region,
    this.replicationTime,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlTranslation': ?accessControlTranslation == null ? null : accessControlTranslation!.toMap(),
      'account': ?account,
      'availabilityZoneName': ?availabilityZoneName,
      'bucket': ?bucket,
      'encryptionConfiguration': ?encryptionConfiguration == null ? null : encryptionConfiguration!.toMap(),
      'fileSystemId': ?fileSystemId,
      'kmsKeyId': ?kmsKeyId,
      'metrics': ?metrics == null ? null : metrics!.toMap(),
      'region': ?region,
      'replicationTime': ?replicationTime == null ? null : replicationTime!.toMap(),
      'storageClass': ?storageClass,
    };
  }

  factory ReplicationDestination.fromMap(Map<String, dynamic> map) {
    return ReplicationDestination(
      accessControlTranslation: map['accessControlTranslation'] == null ? null : AccessControlTranslation.fromMap((map['accessControlTranslation'] as Map).cast<String, dynamic>()),
      account: map['account'] == null ? null : map['account'] as String,
      availabilityZoneName: map['availabilityZoneName'] == null ? null : map['availabilityZoneName'] as String,
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : EncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>()),
      fileSystemId: map['fileSystemId'] == null ? null : map['fileSystemId'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      metrics: map['metrics'] == null ? null : Metrics.fromMap((map['metrics'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      replicationTime: map['replicationTime'] == null ? null : ReplicationTime.fromMap((map['replicationTime'] as Map).cast<String, dynamic>()),
      storageClass: map['storageClass'] == null ? null : map['storageClass'] as String,
    );
  }
}

