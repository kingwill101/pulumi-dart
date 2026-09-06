// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy.dart';
import 'elastic_file_system_tag.dart';
import 'file_system_protection.dart';
import 'lifecycle_policy.dart';
import 'replication_configuration.dart';

/// Definition of awsEfsFileSystem
class AwsEfsFileSystemProperties {
  /// Property arn
  final pulumi.Input<String?>? arn;
  /// For One Zone file systems, specify the AWS Availability Zone in which to create the file system. Use the format ``us-east-1a`` to specify the Availability Zone. For more information about One Zone file systems, see [EFS file system types](https://docs.aws.amazon.com/efs/latest/ug/availability-durability.html#file-system-type) in the *Amazon EFS User Guide*.  One Zone file systems are not available in all Availability Zones in AWS-Regions where Amazon EFS is available.
  final pulumi.Input<String?>? availabilityZoneName;
  /// Use the ``BackupPolicy`` to turn automatic backups on or off for the file system. The backup policy turns automatic backups for the file system on or off.
  final pulumi.Input<BackupPolicy?>? backupPolicy;
  /// (Optional) A boolean that specifies whether or not to bypass the ``FileSystemPolicy`` lockout safety check. The lockout safety check determines whether the policy in the request will lock out, or prevent, the IAM principal that is making the request from making future ``PutFileSystemPolicy`` requests on this file system. Set ``BypassPolicyLockoutSafetyCheck`` to ``True`` only when you intend to prevent the IAM principal that is making the request from making subsequent ``PutFileSystemPolicy`` requests on this file system. The default value is ``False``.
  final pulumi.Input<bool?>? bypassPolicyLockoutSafetyCheck;
  /// A Boolean value that, if true, creates an encrypted file system. When creating an encrypted file system, you have the option of specifying a KmsKeyId for an existing kms-key-long. If you don't specify a kms-key, then the default kms-key for EFS, ``/aws/elasticfilesystem``, is used to protect the encrypted file system.
  final pulumi.Input<bool?>? encrypted;
  /// Property fileSystemId
  final pulumi.Input<String?>? fileSystemId;
  /// The ``FileSystemPolicy`` for the EFS file system. A file system policy is an IAM resource policy used to control NFS access to an EFS file system. For more information, see [Using to control NFS access to Amazon EFS](https://docs.aws.amazon.com/efs/latest/ug/iam-access-control-nfs-efs.html) in the *Amazon EFS User Guide*.
  final pulumi.Input<dynamic>? fileSystemPolicy;
  /// Describes the protection on the file system. Describes the protection on the file system.
  final pulumi.Input<FileSystemProtection?>? fileSystemProtection;
  /// Use to create one or more tags associated with the file system. Each tag is a user-defined key-value pair. Name your file system on creation by including a ``'Key':'Name','Value':'{value}'`` key-value pair. Each key must be unique. For more information, see [Tagging resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the *General Reference Guide*.
  final pulumi.Input<List<ElasticFileSystemTag>?>? fileSystemTags;
  /// The ID of the kms-key-long to be used to protect the encrypted file system. This parameter is only required if you want to use a nondefault kms-key. If this parameter is not specified, the default kms-key for EFS is used. This ID can be in one of the following formats:  +  Key ID - A unique identifier of the key, for example ``1234abcd-12ab-34cd-56ef-1234567890ab``.  +  ARN - An Amazon Resource Name (ARN) for the key, for example ``arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab``.  +  Key alias - A previously created display name for a key, for example ``alias/projectKey1``.  +  Key alias ARN - An ARN for a key alias, for example ``arn:aws:kms:us-west-2:444455556666:alias/projectKey1``.   If ``KmsKeyId`` is specified, the ``Encrypted`` parameter must be set to true.
  final pulumi.Input<String?>? kmsKeyId;
  /// An array of ``LifecyclePolicy`` objects that define the file system's ``LifecycleConfiguration`` object. A ``LifecycleConfiguration`` object informs Lifecycle management of the following:  +  When to move files in the file system from primary storage to IA storage.  + When to move files in the file system from primary storage or IA storage to Archive storage. +  When to move files that are in IA or Archive storage to primary storage.    EFS requires that each ``LifecyclePolicy`` object have only a single transition. This means that in a request body, ``LifecyclePolicies`` needs to be structured as an array of ``LifecyclePolicy`` objects, one object for each transition, ``TransitionToIA``, ``TransitionToArchive`` ``TransitionToPrimaryStorageClass``. See the example requests in the following section for more information.
  final pulumi.Input<List<LifecyclePolicy>?>? lifecyclePolicies;
  /// The Performance mode of the file system. We recommend ``generalPurpose`` performance mode for all file systems. File systems using the ``maxIO`` performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. The performance mode can't be changed after the file system has been created. The ``maxIO`` mode is not supported on One Zone file systems.  Due to the higher per-operation latencies with Max I/O, we recommend using General Purpose performance mode for all file systems.  Default is ``generalPurpose``.
  final pulumi.Input<String?>? performanceMode;
  /// The throughput, measured in mebibytes per second (MiBps), that you want to provision for a file system that you're creating. Required if ``ThroughputMode`` is set to ``provisioned``. Valid values are 1-3414 MiBps, with the upper limit depending on Region. To increase this limit, contact SUP. For more information, see [Amazon EFS quotas that you can increase](https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits) in the *Amazon EFS User Guide*.
  final pulumi.Input<int?>? provisionedThroughputInMibps;
  /// Describes the replication configuration for a specific file system. Describes the replication configuration for a specific file system.
  final pulumi.Input<ReplicationConfiguration?>? replicationConfiguration;
  /// Specifies the throughput mode for the file system. The mode can be ``bursting``, ``provisioned``, or ``elastic``. If you set ``ThroughputMode`` to ``provisioned``, you must also set a value for ``ProvisionedThroughputInMibps``. After you create the file system, you can decrease your file system's Provisioned throughput or change between the throughput modes, with certain time restrictions. For more information, see [Specifying throughput with provisioned mode](https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput) in the *Amazon EFS User Guide*.  Default is ``bursting``.
  final pulumi.Input<String?>? throughputMode;

  /// Creates a new [AwsEfsFileSystemProperties].
  /// [arn] Property arn
  /// [availabilityZoneName] For One Zone file systems, specify the AWS Availability Zone in which to create the file system. Use the format ``us-east-1a`` to specify the Availability Zone. For more information about One Zone file systems, see [EFS file system types](https://docs.aws.amazon.com/efs/latest/ug/availability-durability.html#file-system-type) in the *Amazon EFS User Guide*.  One Zone file systems are not available in all Availability Zones in AWS-Regions where Amazon EFS is available.
  /// [backupPolicy] Use the ``BackupPolicy`` to turn automatic backups on or off for the file system. The backup policy turns automatic backups for the file system on or off.
  /// [bypassPolicyLockoutSafetyCheck] (Optional) A boolean that specifies whether or not to bypass the ``FileSystemPolicy`` lockout safety check. The lockout safety check determines whether the policy in the request will lock out, or prevent, the IAM principal that is making the request from making future ``PutFileSystemPolicy`` requests on this file system. Set ``BypassPolicyLockoutSafetyCheck`` to ``True`` only when you intend to prevent the IAM principal that is making the request from making subsequent ``PutFileSystemPolicy`` requests on this file system. The default value is ``False``.
  /// [encrypted] A Boolean value that, if true, creates an encrypted file system. When creating an encrypted file system, you have the option of specifying a KmsKeyId for an existing kms-key-long. If you don't specify a kms-key, then the default kms-key for EFS, ``/aws/elasticfilesystem``, is used to protect the encrypted file system.
  /// [fileSystemId] Property fileSystemId
  /// [fileSystemPolicy] The ``FileSystemPolicy`` for the EFS file system. A file system policy is an IAM resource policy used to control NFS access to an EFS file system. For more information, see [Using to control NFS access to Amazon EFS](https://docs.aws.amazon.com/efs/latest/ug/iam-access-control-nfs-efs.html) in the *Amazon EFS User Guide*.
  /// [fileSystemProtection] Describes the protection on the file system. Describes the protection on the file system.
  /// [fileSystemTags] Use to create one or more tags associated with the file system. Each tag is a user-defined key-value pair. Name your file system on creation by including a ``'Key':'Name','Value':'{value}'`` key-value pair. Each key must be unique. For more information, see [Tagging resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the *General Reference Guide*.
  /// [kmsKeyId] The ID of the kms-key-long to be used to protect the encrypted file system. This parameter is only required if you want to use a nondefault kms-key. If this parameter is not specified, the default kms-key for EFS is used. This ID can be in one of the following formats:  +  Key ID - A unique identifier of the key, for example ``1234abcd-12ab-34cd-56ef-1234567890ab``.  +  ARN - An Amazon Resource Name (ARN) for the key, for example ``arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab``.  +  Key alias - A previously created display name for a key, for example ``alias/projectKey1``.  +  Key alias ARN - An ARN for a key alias, for example ``arn:aws:kms:us-west-2:444455556666:alias/projectKey1``.   If ``KmsKeyId`` is specified, the ``Encrypted`` parameter must be set to true.
  /// [lifecyclePolicies] An array of ``LifecyclePolicy`` objects that define the file system's ``LifecycleConfiguration`` object. A ``LifecycleConfiguration`` object informs Lifecycle management of the following:  +  When to move files in the file system from primary storage to IA storage.  + When to move files in the file system from primary storage or IA storage to Archive storage. +  When to move files that are in IA or Archive storage to primary storage.    EFS requires that each ``LifecyclePolicy`` object have only a single transition. This means that in a request body, ``LifecyclePolicies`` needs to be structured as an array of ``LifecyclePolicy`` objects, one object for each transition, ``TransitionToIA``, ``TransitionToArchive`` ``TransitionToPrimaryStorageClass``. See the example requests in the following section for more information.
  /// [performanceMode] The Performance mode of the file system. We recommend ``generalPurpose`` performance mode for all file systems. File systems using the ``maxIO`` performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. The performance mode can't be changed after the file system has been created. The ``maxIO`` mode is not supported on One Zone file systems.  Due to the higher per-operation latencies with Max I/O, we recommend using General Purpose performance mode for all file systems.  Default is ``generalPurpose``.
  /// [provisionedThroughputInMibps] The throughput, measured in mebibytes per second (MiBps), that you want to provision for a file system that you're creating. Required if ``ThroughputMode`` is set to ``provisioned``. Valid values are 1-3414 MiBps, with the upper limit depending on Region. To increase this limit, contact SUP. For more information, see [Amazon EFS quotas that you can increase](https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits) in the *Amazon EFS User Guide*.
  /// [replicationConfiguration] Describes the replication configuration for a specific file system. Describes the replication configuration for a specific file system.
  /// [throughputMode] Specifies the throughput mode for the file system. The mode can be ``bursting``, ``provisioned``, or ``elastic``. If you set ``ThroughputMode`` to ``provisioned``, you must also set a value for ``ProvisionedThroughputInMibps``. After you create the file system, you can decrease your file system's Provisioned throughput or change between the throughput modes, with certain time restrictions. For more information, see [Specifying throughput with provisioned mode](https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput) in the *Amazon EFS User Guide*.  Default is ``bursting``.
  const AwsEfsFileSystemProperties({
    this.arn,
    this.availabilityZoneName,
    this.backupPolicy,
    this.bypassPolicyLockoutSafetyCheck,
    this.encrypted,
    this.fileSystemId,
    this.fileSystemPolicy,
    this.fileSystemProtection,
    this.fileSystemTags,
    this.kmsKeyId,
    this.lifecyclePolicies,
    this.performanceMode,
    this.provisionedThroughputInMibps,
    this.replicationConfiguration,
    this.throughputMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZoneName': ?availabilityZoneName,
      'backupPolicy': ?pulumi.Input.mapOptionalInputValue<BackupPolicy, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'bypassPolicyLockoutSafetyCheck': ?bypassPolicyLockoutSafetyCheck,
      'encrypted': ?encrypted,
      'fileSystemId': ?fileSystemId,
      'fileSystemPolicy': ?fileSystemPolicy,
      'fileSystemProtection': ?pulumi.Input.mapOptionalInputValue<FileSystemProtection, Map<String, dynamic>>(fileSystemProtection, (value) => value.toMap()),
      'fileSystemTags': ?pulumi.Input.mapOptionalInputValue<List<ElasticFileSystemTag>, List<Map<String, dynamic>>>(fileSystemTags, (value) => pulumi.Input.encodeList<ElasticFileSystemTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kmsKeyId': ?kmsKeyId,
      'lifecyclePolicies': ?pulumi.Input.mapOptionalInputValue<List<LifecyclePolicy>, List<Map<String, dynamic>>>(lifecyclePolicies, (value) => pulumi.Input.encodeList<LifecyclePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'performanceMode': ?performanceMode,
      'provisionedThroughputInMibps': ?provisionedThroughputInMibps,
      'replicationConfiguration': ?pulumi.Input.mapOptionalInputValue<ReplicationConfiguration, Map<String, dynamic>>(replicationConfiguration, (value) => value.toMap()),
      'throughputMode': ?throughputMode,
    };
  }

  factory AwsEfsFileSystemProperties.fromMap(Map<String, dynamic> map) {
    return AwsEfsFileSystemProperties(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneName: (() { final guardedValue = map['availabilityZoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupPolicy: (() { final guardedValue = map['backupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bypassPolicyLockoutSafetyCheck: (() { final guardedValue = map['bypassPolicyLockoutSafetyCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemPolicy: (() { final guardedValue = map['fileSystemPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      fileSystemProtection: (() { final guardedValue = map['fileSystemProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileSystemProtection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystemTags: (() { final guardedValue = map['fileSystemTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ElasticFileSystemTag>(guardedValue, (value) => ElasticFileSystemTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecyclePolicies: (() { final guardedValue = map['lifecyclePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LifecyclePolicy>(guardedValue, (value) => LifecyclePolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      performanceMode: (() { final guardedValue = map['performanceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedThroughputInMibps: (() { final guardedValue = map['provisionedThroughputInMibps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      replicationConfiguration: (() { final guardedValue = map['replicationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      throughputMode: (() { final guardedValue = map['throughputMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
