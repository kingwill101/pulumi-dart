// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'processor_feature.dart';
import 'tag.dart';

/// Definition of awsRdsDBSnapshot
class AwsRdsDBSnapshotProperties {
  /// <p>Specifies the allocated storage size in gibibytes (GiB).</p>
  final int? allocatedStorage;
  /// <p>Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.</p>
  final String? availabilityZone;
  /// <p>Specifies the DB instance identifier of the DB instance this DB snapshot was created from.</p>
  final String? dbInstanceIdentifier;
  /// <p>The Amazon Resource Name (ARN) for the DB snapshot.</p>
  final String? dbSnapshotArn;
  /// <p>Specifies the identifier for the DB snapshot.</p>
  final String? dbSnapshotIdentifier;
  /// <p>The Oracle system identifier (SID), which is the name of the Oracle database instance that manages your database files. The Oracle SID is also the name of your CDB.</p>
  final String? dbSystemId;
  /// <p>The identifier for the source DB instance, which can't be changed and which is unique to an Amazon Web Services Region.</p>
  final String? dbiResourceId;
  /// <p>Indicates whether the DB instance has a dedicated log volume (DLV) enabled.</p>
  final bool? dedicatedLogVolume;
  /// <p>Indicates whether the DB snapshot is encrypted.</p>
  final bool? encrypted;
  /// <p>Specifies the name of the database engine.</p>
  final String? engine;
  /// <p>Specifies the version of the database engine.</p>
  final String? engineVersion;
  /// <p>Indicates whether mapping of Amazon Web Services Identity and Access Management (IAM) accounts to database accounts is enabled.</p>
  final bool? iamDatabaseAuthenticationEnabled;
  /// <p>Specifies the time in Coordinated Universal Time (UTC) when the DB instance, from which the snapshot was taken, was created.</p>
  final String? instanceCreateTime;
  /// <p>Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.</p>
  final int? iops;
  /// <p>If <code>Encrypted</code> is true, the Amazon Web Services KMS key identifier for the encrypted DB snapshot.</p> <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
  final String? kmsKeyId;
  /// <p>License model information for the restored DB instance.</p>
  final String? licenseModel;
  /// <p>Provides the master username for the DB snapshot.</p>
  final String? masterUsername;
  /// <p>Indicates whether the snapshot is of a DB instance using the multi-tenant configuration (TRUE) or the single-tenant configuration (FALSE).</p>
  final bool? multiTenant;
  /// <p>Provides the option group name for the DB snapshot.</p>
  final String? optionGroupName;
  /// <p>Specifies the time of the CreateDBSnapshot operation in Coordinated Universal Time (UTC). Doesn't change when the snapshot is copied.</p>
  final String? originalSnapshotCreateTime;
  /// <p>The percentage of the estimated data that has been transferred.</p>
  final int? percentProgress;
  /// <p>Specifies the port that the database engine was listening on at the time of the snapshot.</p>
  final int? port;
  /// <p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance when the DB snapshot was created.</p>
  final List<ProcessorFeature>? processorFeatures;
  /// <p>Specifies when the snapshot was taken in Coordinated Universal Time (UTC). Changes for the copy when the snapshot is copied.</p>
  final String? snapshotCreateTime;
  /// <p>The timestamp of the most recent transaction applied to the database that you're backing up. Thus, if you restore a snapshot, SnapshotDatabaseTime is the most recent transaction in the restored DB instance. In contrast, originalSnapshotCreateTime specifies the system time that the snapshot completed.</p> <p>If you back up a read replica, you can determine the replica lag by comparing SnapshotDatabaseTime with originalSnapshotCreateTime. For example, if originalSnapshotCreateTime is two hours later than SnapshotDatabaseTime, then the replica lag is two hours.</p>
  final String? snapshotDatabaseTime;
  /// <p>Specifies where manual snapshots are stored: Amazon Web Services Outposts or the Amazon Web Services Region.</p>
  final String? snapshotTarget;
  /// <p>Provides the type of the DB snapshot.</p>
  final String? snapshotType;
  /// <p>The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was copied from. It only has a value in the case of a cross-account or cross-Region copy.</p>
  final String? sourceDBSnapshotIdentifier;
  /// <p>The Amazon Web Services Region that the DB snapshot was created in or copied from.</p>
  final String? sourceRegion;
  /// <p>Specifies the status of this DB snapshot.</p>
  final String? status;
  /// <p>Specifies the storage throughput for the DB snapshot.</p>
  final int? storageThroughput;
  /// <p>Specifies the storage type associated with DB snapshot.</p>
  final String? storageType;
  /// Property tagList
  final List<Tag>? tagList;
  /// <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
  final String? tdeCredentialArn;
  /// <p>The time zone of the DB snapshot. In most cases, the <code>Timezone</code> element is empty. <code>Timezone</code> content appears only for snapshots taken from Microsoft SQL Server DB instances that were created with a time zone specified.</p>
  final String? timezone;
  /// <p>Provides the VPC ID associated with the DB snapshot.</p>
  final String? vpcId;

  /// Creates a new [AwsRdsDBSnapshotProperties].
  /// [allocatedStorage] <p>Specifies the allocated storage size in gibibytes (GiB).</p>
  /// [availabilityZone] <p>Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.</p>
  /// [dbInstanceIdentifier] <p>Specifies the DB instance identifier of the DB instance this DB snapshot was created from.</p>
  /// [dbSnapshotArn] <p>The Amazon Resource Name (ARN) for the DB snapshot.</p>
  /// [dbSnapshotIdentifier] <p>Specifies the identifier for the DB snapshot.</p>
  /// [dbSystemId] <p>The Oracle system identifier (SID), which is the name of the Oracle database instance that manages your database files. The Oracle SID is also the name of your CDB.</p>
  /// [dbiResourceId] <p>The identifier for the source DB instance, which can't be changed and which is unique to an Amazon Web Services Region.</p>
  /// [dedicatedLogVolume] <p>Indicates whether the DB instance has a dedicated log volume (DLV) enabled.</p>
  /// [encrypted] <p>Indicates whether the DB snapshot is encrypted.</p>
  /// [engine] <p>Specifies the name of the database engine.</p>
  /// [engineVersion] <p>Specifies the version of the database engine.</p>
  /// [iamDatabaseAuthenticationEnabled] <p>Indicates whether mapping of Amazon Web Services Identity and Access Management (IAM) accounts to database accounts is enabled.</p>
  /// [instanceCreateTime] <p>Specifies the time in Coordinated Universal Time (UTC) when the DB instance, from which the snapshot was taken, was created.</p>
  /// [iops] <p>Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.</p>
  /// [kmsKeyId] <p>If <code>Encrypted</code> is true, the Amazon Web Services KMS key identifier for the encrypted DB snapshot.</p> <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
  /// [licenseModel] <p>License model information for the restored DB instance.</p>
  /// [masterUsername] <p>Provides the master username for the DB snapshot.</p>
  /// [multiTenant] <p>Indicates whether the snapshot is of a DB instance using the multi-tenant configuration (TRUE) or the single-tenant configuration (FALSE).</p>
  /// [optionGroupName] <p>Provides the option group name for the DB snapshot.</p>
  /// [originalSnapshotCreateTime] <p>Specifies the time of the CreateDBSnapshot operation in Coordinated Universal Time (UTC). Doesn't change when the snapshot is copied.</p>
  /// [percentProgress] <p>The percentage of the estimated data that has been transferred.</p>
  /// [port] <p>Specifies the port that the database engine was listening on at the time of the snapshot.</p>
  /// [processorFeatures] <p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance when the DB snapshot was created.</p>
  /// [snapshotCreateTime] <p>Specifies when the snapshot was taken in Coordinated Universal Time (UTC). Changes for the copy when the snapshot is copied.</p>
  /// [snapshotDatabaseTime] <p>The timestamp of the most recent transaction applied to the database that you're backing up. Thus, if you restore a snapshot, SnapshotDatabaseTime is the most recent transaction in the restored DB instance. In contrast, originalSnapshotCreateTime specifies the system time that the snapshot completed.</p> <p>If you back up a read replica, you can determine the replica lag by comparing SnapshotDatabaseTime with originalSnapshotCreateTime. For example, if originalSnapshotCreateTime is two hours later than SnapshotDatabaseTime, then the replica lag is two hours.</p>
  /// [snapshotTarget] <p>Specifies where manual snapshots are stored: Amazon Web Services Outposts or the Amazon Web Services Region.</p>
  /// [snapshotType] <p>Provides the type of the DB snapshot.</p>
  /// [sourceDBSnapshotIdentifier] <p>The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was copied from. It only has a value in the case of a cross-account or cross-Region copy.</p>
  /// [sourceRegion] <p>The Amazon Web Services Region that the DB snapshot was created in or copied from.</p>
  /// [status] <p>Specifies the status of this DB snapshot.</p>
  /// [storageThroughput] <p>Specifies the storage throughput for the DB snapshot.</p>
  /// [storageType] <p>Specifies the storage type associated with DB snapshot.</p>
  /// [tagList] Property tagList
  /// [tdeCredentialArn] <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
  /// [timezone] <p>The time zone of the DB snapshot. In most cases, the <code>Timezone</code> element is empty. <code>Timezone</code> content appears only for snapshots taken from Microsoft SQL Server DB instances that were created with a time zone specified.</p>
  /// [vpcId] <p>Provides the VPC ID associated with the DB snapshot.</p>
  AwsRdsDBSnapshotProperties({
    this.allocatedStorage,
    this.availabilityZone,
    this.dbInstanceIdentifier,
    this.dbSnapshotArn,
    this.dbSnapshotIdentifier,
    this.dbSystemId,
    this.dbiResourceId,
    this.dedicatedLogVolume,
    this.encrypted,
    this.engine,
    this.engineVersion,
    this.iamDatabaseAuthenticationEnabled,
    this.instanceCreateTime,
    this.iops,
    this.kmsKeyId,
    this.licenseModel,
    this.masterUsername,
    this.multiTenant,
    this.optionGroupName,
    this.originalSnapshotCreateTime,
    this.percentProgress,
    this.port,
    this.processorFeatures,
    this.snapshotCreateTime,
    this.snapshotDatabaseTime,
    this.snapshotTarget,
    this.snapshotType,
    this.sourceDBSnapshotIdentifier,
    this.sourceRegion,
    this.status,
    this.storageThroughput,
    this.storageType,
    this.tagList,
    this.tdeCredentialArn,
    this.timezone,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'availabilityZone': ?availabilityZone,
      'dbInstanceIdentifier': ?dbInstanceIdentifier,
      'dbSnapshotArn': ?dbSnapshotArn,
      'dbSnapshotIdentifier': ?dbSnapshotIdentifier,
      'dbSystemId': ?dbSystemId,
      'dbiResourceId': ?dbiResourceId,
      'dedicatedLogVolume': ?dedicatedLogVolume,
      'encrypted': ?encrypted,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'iamDatabaseAuthenticationEnabled': ?iamDatabaseAuthenticationEnabled,
      'instanceCreateTime': ?instanceCreateTime,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'licenseModel': ?licenseModel,
      'masterUsername': ?masterUsername,
      'multiTenant': ?multiTenant,
      'optionGroupName': ?optionGroupName,
      'originalSnapshotCreateTime': ?originalSnapshotCreateTime,
      'percentProgress': ?percentProgress,
      'port': ?port,
      'processorFeatures': ?processorFeatures == null ? null : pulumi.Input.encodeList<ProcessorFeature, Map<String, dynamic>>(processorFeatures!, (value) => value.toMap()),
      'snapshotCreateTime': ?snapshotCreateTime,
      'snapshotDatabaseTime': ?snapshotDatabaseTime,
      'snapshotTarget': ?snapshotTarget,
      'snapshotType': ?snapshotType,
      'sourceDBSnapshotIdentifier': ?sourceDBSnapshotIdentifier,
      'sourceRegion': ?sourceRegion,
      'status': ?status,
      'storageThroughput': ?storageThroughput,
      'storageType': ?storageType,
      'tagList': ?tagList == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tagList!, (value) => value.toMap()),
      'tdeCredentialArn': ?tdeCredentialArn,
      'timezone': ?timezone,
      'vpcId': ?vpcId,
    };
  }

  factory AwsRdsDBSnapshotProperties.fromMap(Map<String, dynamic> map) {
    return AwsRdsDBSnapshotProperties(
      allocatedStorage: map['allocatedStorage'] == null ? null : map['allocatedStorage'] as int,
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      dbInstanceIdentifier: map['dbInstanceIdentifier'] == null ? null : map['dbInstanceIdentifier'] as String,
      dbSnapshotArn: map['dbSnapshotArn'] == null ? null : map['dbSnapshotArn'] as String,
      dbSnapshotIdentifier: map['dbSnapshotIdentifier'] == null ? null : map['dbSnapshotIdentifier'] as String,
      dbSystemId: map['dbSystemId'] == null ? null : map['dbSystemId'] as String,
      dbiResourceId: map['dbiResourceId'] == null ? null : map['dbiResourceId'] as String,
      dedicatedLogVolume: map['dedicatedLogVolume'] == null ? null : map['dedicatedLogVolume'] as bool,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion'] as String,
      iamDatabaseAuthenticationEnabled: map['iamDatabaseAuthenticationEnabled'] == null ? null : map['iamDatabaseAuthenticationEnabled'] as bool,
      instanceCreateTime: map['instanceCreateTime'] == null ? null : map['instanceCreateTime'] as String,
      iops: map['iops'] == null ? null : map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      licenseModel: map['licenseModel'] == null ? null : map['licenseModel'] as String,
      masterUsername: map['masterUsername'] == null ? null : map['masterUsername'] as String,
      multiTenant: map['multiTenant'] == null ? null : map['multiTenant'] as bool,
      optionGroupName: map['optionGroupName'] == null ? null : map['optionGroupName'] as String,
      originalSnapshotCreateTime: map['originalSnapshotCreateTime'] == null ? null : map['originalSnapshotCreateTime'] as String,
      percentProgress: map['percentProgress'] == null ? null : map['percentProgress'] as int,
      port: map['port'] == null ? null : map['port'] as int,
      processorFeatures: map['processorFeatures'] == null ? null : pulumi.Input.decodeList<ProcessorFeature>(map['processorFeatures'], (value) => ProcessorFeature.fromMap((value as Map).cast<String, dynamic>())),
      snapshotCreateTime: map['snapshotCreateTime'] == null ? null : map['snapshotCreateTime'] as String,
      snapshotDatabaseTime: map['snapshotDatabaseTime'] == null ? null : map['snapshotDatabaseTime'] as String,
      snapshotTarget: map['snapshotTarget'] == null ? null : map['snapshotTarget'] as String,
      snapshotType: map['snapshotType'] == null ? null : map['snapshotType'] as String,
      sourceDBSnapshotIdentifier: map['sourceDBSnapshotIdentifier'] == null ? null : map['sourceDBSnapshotIdentifier'] as String,
      sourceRegion: map['sourceRegion'] == null ? null : map['sourceRegion'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      storageThroughput: map['storageThroughput'] == null ? null : map['storageThroughput'] as int,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
      tagList: map['tagList'] == null ? null : pulumi.Input.decodeList<Tag>(map['tagList'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      tdeCredentialArn: map['tdeCredentialArn'] == null ? null : map['tdeCredentialArn'] as String,
      timezone: map['timezone'] == null ? null : map['timezone'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

