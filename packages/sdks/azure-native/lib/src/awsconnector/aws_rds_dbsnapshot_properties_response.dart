// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'processor_feature_response.dart';
import 'tag_response.dart';

/// Definition of awsRdsDBSnapshot
class AwsRdsDBSnapshotPropertiesResponse {
  /// &lt;p&gt;Specifies the allocated storage size in gibibytes (GiB).&lt;/p&gt;
  final pulumi.Input<int>? allocatedStorage;

  /// &lt;p&gt;Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.&lt;/p&gt;
  final pulumi.Input<String>? availabilityZone;

  /// &lt;p&gt;Specifies the DB instance identifier of the DB instance this DB snapshot was created from.&lt;/p&gt;
  final pulumi.Input<String>? dbInstanceIdentifier;

  /// &lt;p&gt;The Amazon Resource Name (ARN) for the DB snapshot.&lt;/p&gt;
  final pulumi.Input<String>? dbSnapshotArn;

  /// &lt;p&gt;Specifies the identifier for the DB snapshot.&lt;/p&gt;
  final pulumi.Input<String>? dbSnapshotIdentifier;

  /// &lt;p&gt;The Oracle system identifier (SID), which is the name of the Oracle database instance that manages your database files. The Oracle SID is also the name of your CDB.&lt;/p&gt;
  final pulumi.Input<String>? dbSystemId;

  /// &lt;p&gt;The identifier for the source DB instance, which can't be changed and which is unique to an Amazon Web Services Region.&lt;/p&gt;
  final pulumi.Input<String>? dbiResourceId;

  /// &lt;p&gt;Indicates whether the DB instance has a dedicated log volume (DLV) enabled.&lt;/p&gt;
  final pulumi.Input<bool>? dedicatedLogVolume;

  /// &lt;p&gt;Indicates whether the DB snapshot is encrypted.&lt;/p&gt;
  final pulumi.Input<bool>? encrypted;

  /// &lt;p&gt;Specifies the name of the database engine.&lt;/p&gt;
  final pulumi.Input<String>? engine;

  /// &lt;p&gt;Specifies the version of the database engine.&lt;/p&gt;
  final pulumi.Input<String>? engineVersion;

  /// &lt;p&gt;Indicates whether mapping of Amazon Web Services Identity and Access Management (IAM) accounts to database accounts is enabled.&lt;/p&gt;
  final pulumi.Input<bool>? iamDatabaseAuthenticationEnabled;

  /// &lt;p&gt;Specifies the time in Coordinated Universal Time (UTC) when the DB instance, from which the snapshot was taken, was created.&lt;/p&gt;
  final pulumi.Input<String>? instanceCreateTime;

  /// &lt;p&gt;Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.&lt;/p&gt;
  final pulumi.Input<int>? iops;

  /// &lt;p&gt;If &lt;code&gt;Encrypted&lt;/code&gt; is true, the Amazon Web Services KMS key identifier for the encrypted DB snapshot.&lt;/p&gt; &lt;p&gt;The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.&lt;/p&gt;
  final pulumi.Input<String>? kmsKeyId;

  /// &lt;p&gt;License model information for the restored DB instance.&lt;/p&gt;
  final pulumi.Input<String>? licenseModel;

  /// &lt;p&gt;Provides the master username for the DB snapshot.&lt;/p&gt;
  final pulumi.Input<String>? masterUsername;

  /// &lt;p&gt;Indicates whether the snapshot is of a DB instance using the multi-tenant configuration (TRUE) or the single-tenant configuration (FALSE).&lt;/p&gt;
  final pulumi.Input<bool>? multiTenant;

  /// &lt;p&gt;Provides the option group name for the DB snapshot.&lt;/p&gt;
  final pulumi.Input<String>? optionGroupName;

  /// &lt;p&gt;Specifies the time of the CreateDBSnapshot operation in Coordinated Universal Time (UTC). Doesn't change when the snapshot is copied.&lt;/p&gt;
  final pulumi.Input<String>? originalSnapshotCreateTime;

  /// &lt;p&gt;The percentage of the estimated data that has been transferred.&lt;/p&gt;
  final pulumi.Input<int>? percentProgress;

  /// &lt;p&gt;Specifies the port that the database engine was listening on at the time of the snapshot.&lt;/p&gt;
  final pulumi.Input<int>? port;

  /// &lt;p&gt;The number of CPU cores and the number of threads per core for the DB instance class of the DB instance when the DB snapshot was created.&lt;/p&gt;
  final pulumi.Input<List<ProcessorFeatureResponse>>? processorFeatures;

  /// &lt;p&gt;Specifies when the snapshot was taken in Coordinated Universal Time (UTC). Changes for the copy when the snapshot is copied.&lt;/p&gt;
  final pulumi.Input<String>? snapshotCreateTime;

  /// &lt;p&gt;The timestamp of the most recent transaction applied to the database that you're backing up. Thus, if you restore a snapshot, SnapshotDatabaseTime is the most recent transaction in the restored DB instance. In contrast, originalSnapshotCreateTime specifies the system time that the snapshot completed.&lt;/p&gt; &lt;p&gt;If you back up a read replica, you can determine the replica lag by comparing SnapshotDatabaseTime with originalSnapshotCreateTime. For example, if originalSnapshotCreateTime is two hours later than SnapshotDatabaseTime, then the replica lag is two hours.&lt;/p&gt;
  final pulumi.Input<String>? snapshotDatabaseTime;

  /// &lt;p&gt;Specifies where manual snapshots are stored: Amazon Web Services Outposts or the Amazon Web Services Region.&lt;/p&gt;
  final pulumi.Input<String>? snapshotTarget;

  /// &lt;p&gt;Provides the type of the DB snapshot.&lt;/p&gt;
  final pulumi.Input<String>? snapshotType;

  /// &lt;p&gt;The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was copied from. It only has a value in the case of a cross-account or cross-Region copy.&lt;/p&gt;
  final pulumi.Input<String>? sourceDBSnapshotIdentifier;

  /// &lt;p&gt;The Amazon Web Services Region that the DB snapshot was created in or copied from.&lt;/p&gt;
  final pulumi.Input<String>? sourceRegion;

  /// &lt;p&gt;Specifies the status of this DB snapshot.&lt;/p&gt;
  final pulumi.Input<String>? status;

  /// &lt;p&gt;Specifies the storage throughput for the DB snapshot.&lt;/p&gt;
  final pulumi.Input<int>? storageThroughput;

  /// &lt;p&gt;Specifies the storage type associated with DB snapshot.&lt;/p&gt;
  final pulumi.Input<String>? storageType;

  /// Property tagList
  final pulumi.Input<List<TagResponse>>? tagList;

  /// &lt;p&gt;The ARN from the key store with which to associate the instance for TDE encryption.&lt;/p&gt;
  final pulumi.Input<String>? tdeCredentialArn;

  /// &lt;p&gt;The time zone of the DB snapshot. In most cases, the &lt;code&gt;Timezone&lt;/code&gt; element is empty. &lt;code&gt;Timezone&lt;/code&gt; content appears only for snapshots taken from Microsoft SQL Server DB instances that were created with a time zone specified.&lt;/p&gt;
  final pulumi.Input<String>? timezone;

  /// &lt;p&gt;Provides the VPC ID associated with the DB snapshot.&lt;/p&gt;
  final pulumi.Input<String>? vpcId;

  /// Creates a new [AwsRdsDBSnapshotPropertiesResponse].
  /// [allocatedStorage] &lt;p&gt;Specifies the allocated storage size in gibibytes (GiB).&lt;/p&gt;
  /// [availabilityZone] &lt;p&gt;Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.&lt;/p&gt;
  /// [dbInstanceIdentifier] &lt;p&gt;Specifies the DB instance identifier of the DB instance this DB snapshot was created from.&lt;/p&gt;
  /// [dbSnapshotArn] &lt;p&gt;The Amazon Resource Name (ARN) for the DB snapshot.&lt;/p&gt;
  /// [dbSnapshotIdentifier] &lt;p&gt;Specifies the identifier for the DB snapshot.&lt;/p&gt;
  /// [dbSystemId] &lt;p&gt;The Oracle system identifier (SID), which is the name of the Oracle database instance that manages your database files. The Oracle SID is also the name of your CDB.&lt;/p&gt;
  /// [dbiResourceId] &lt;p&gt;The identifier for the source DB instance, which can't be changed and which is unique to an Amazon Web Services Region.&lt;/p&gt;
  /// [dedicatedLogVolume] &lt;p&gt;Indicates whether the DB instance has a dedicated log volume (DLV) enabled.&lt;/p&gt;
  /// [encrypted] &lt;p&gt;Indicates whether the DB snapshot is encrypted.&lt;/p&gt;
  /// [engine] &lt;p&gt;Specifies the name of the database engine.&lt;/p&gt;
  /// [engineVersion] &lt;p&gt;Specifies the version of the database engine.&lt;/p&gt;
  /// [iamDatabaseAuthenticationEnabled] &lt;p&gt;Indicates whether mapping of Amazon Web Services Identity and Access Management (IAM) accounts to database accounts is enabled.&lt;/p&gt;
  /// [instanceCreateTime] &lt;p&gt;Specifies the time in Coordinated Universal Time (UTC) when the DB instance, from which the snapshot was taken, was created.&lt;/p&gt;
  /// [iops] &lt;p&gt;Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.&lt;/p&gt;
  /// [kmsKeyId] &lt;p&gt;If &lt;code&gt;Encrypted&lt;/code&gt; is true, the Amazon Web Services KMS key identifier for the encrypted DB snapshot.&lt;/p&gt; &lt;p&gt;The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.&lt;/p&gt;
  /// [licenseModel] &lt;p&gt;License model information for the restored DB instance.&lt;/p&gt;
  /// [masterUsername] &lt;p&gt;Provides the master username for the DB snapshot.&lt;/p&gt;
  /// [multiTenant] &lt;p&gt;Indicates whether the snapshot is of a DB instance using the multi-tenant configuration (TRUE) or the single-tenant configuration (FALSE).&lt;/p&gt;
  /// [optionGroupName] &lt;p&gt;Provides the option group name for the DB snapshot.&lt;/p&gt;
  /// [originalSnapshotCreateTime] &lt;p&gt;Specifies the time of the CreateDBSnapshot operation in Coordinated Universal Time (UTC). Doesn't change when the snapshot is copied.&lt;/p&gt;
  /// [percentProgress] &lt;p&gt;The percentage of the estimated data that has been transferred.&lt;/p&gt;
  /// [port] &lt;p&gt;Specifies the port that the database engine was listening on at the time of the snapshot.&lt;/p&gt;
  /// [processorFeatures] &lt;p&gt;The number of CPU cores and the number of threads per core for the DB instance class of the DB instance when the DB snapshot was created.&lt;/p&gt;
  /// [snapshotCreateTime] &lt;p&gt;Specifies when the snapshot was taken in Coordinated Universal Time (UTC). Changes for the copy when the snapshot is copied.&lt;/p&gt;
  /// [snapshotDatabaseTime] &lt;p&gt;The timestamp of the most recent transaction applied to the database that you're backing up. Thus, if you restore a snapshot, SnapshotDatabaseTime is the most recent transaction in the restored DB instance. In contrast, originalSnapshotCreateTime specifies the system time that the snapshot completed.&lt;/p&gt; &lt;p&gt;If you back up a read replica, you can determine the replica lag by comparing SnapshotDatabaseTime with originalSnapshotCreateTime. For example, if originalSnapshotCreateTime is two hours later than SnapshotDatabaseTime, then the replica lag is two hours.&lt;/p&gt;
  /// [snapshotTarget] &lt;p&gt;Specifies where manual snapshots are stored: Amazon Web Services Outposts or the Amazon Web Services Region.&lt;/p&gt;
  /// [snapshotType] &lt;p&gt;Provides the type of the DB snapshot.&lt;/p&gt;
  /// [sourceDBSnapshotIdentifier] &lt;p&gt;The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was copied from. It only has a value in the case of a cross-account or cross-Region copy.&lt;/p&gt;
  /// [sourceRegion] &lt;p&gt;The Amazon Web Services Region that the DB snapshot was created in or copied from.&lt;/p&gt;
  /// [status] &lt;p&gt;Specifies the status of this DB snapshot.&lt;/p&gt;
  /// [storageThroughput] &lt;p&gt;Specifies the storage throughput for the DB snapshot.&lt;/p&gt;
  /// [storageType] &lt;p&gt;Specifies the storage type associated with DB snapshot.&lt;/p&gt;
  /// [tagList] Property tagList
  /// [tdeCredentialArn] &lt;p&gt;The ARN from the key store with which to associate the instance for TDE encryption.&lt;/p&gt;
  /// [timezone] &lt;p&gt;The time zone of the DB snapshot. In most cases, the &lt;code&gt;Timezone&lt;/code&gt; element is empty. &lt;code&gt;Timezone&lt;/code&gt; content appears only for snapshots taken from Microsoft SQL Server DB instances that were created with a time zone specified.&lt;/p&gt;
  /// [vpcId] &lt;p&gt;Provides the VPC ID associated with the DB snapshot.&lt;/p&gt;
  AwsRdsDBSnapshotPropertiesResponse({
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
      'processorFeatures':
          ?pulumi.Input.mapOptionalInputValue<
            List<ProcessorFeatureResponse>,
            List<Map<String, dynamic>>
          >(
            processorFeatures,
            (value) =>
                pulumi.Input.encodeList<
                  ProcessorFeatureResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'snapshotCreateTime': ?snapshotCreateTime,
      'snapshotDatabaseTime': ?snapshotDatabaseTime,
      'snapshotTarget': ?snapshotTarget,
      'snapshotType': ?snapshotType,
      'sourceDBSnapshotIdentifier': ?sourceDBSnapshotIdentifier,
      'sourceRegion': ?sourceRegion,
      'status': ?status,
      'storageThroughput': ?storageThroughput,
      'storageType': ?storageType,
      'tagList':
          ?pulumi.Input.mapOptionalInputValue<
            List<TagResponse>,
            List<Map<String, dynamic>>
          >(
            tagList,
            (value) =>
                pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tdeCredentialArn': ?tdeCredentialArn,
      'timezone': ?timezone,
      'vpcId': ?vpcId,
    };
  }

  factory AwsRdsDBSnapshotPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsRdsDBSnapshotPropertiesResponse(
      allocatedStorage: (() {
        final guardedValue = map['allocatedStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceIdentifier: (() {
        final guardedValue = map['dbInstanceIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbSnapshotArn: (() {
        final guardedValue = map['dbSnapshotArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbSnapshotIdentifier: (() {
        final guardedValue = map['dbSnapshotIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbSystemId: (() {
        final guardedValue = map['dbSystemId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbiResourceId: (() {
        final guardedValue = map['dbiResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dedicatedLogVolume: (() {
        final guardedValue = map['dedicatedLogVolume'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encrypted: (() {
        final guardedValue = map['encrypted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      engine: (() {
        final guardedValue = map['engine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engineVersion: (() {
        final guardedValue = map['engineVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iamDatabaseAuthenticationEnabled: (() {
        final guardedValue = map['iamDatabaseAuthenticationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instanceCreateTime: (() {
        final guardedValue = map['instanceCreateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iops: (() {
        final guardedValue = map['iops'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      licenseModel: (() {
        final guardedValue = map['licenseModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterUsername: (() {
        final guardedValue = map['masterUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multiTenant: (() {
        final guardedValue = map['multiTenant'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      optionGroupName: (() {
        final guardedValue = map['optionGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      originalSnapshotCreateTime: (() {
        final guardedValue = map['originalSnapshotCreateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      percentProgress: (() {
        final guardedValue = map['percentProgress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      processorFeatures: (() {
        final guardedValue = map['processorFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ProcessorFeatureResponse>(
            guardedValue,
            (value) => ProcessorFeatureResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      snapshotCreateTime: (() {
        final guardedValue = map['snapshotCreateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotDatabaseTime: (() {
        final guardedValue = map['snapshotDatabaseTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotTarget: (() {
        final guardedValue = map['snapshotTarget'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotType: (() {
        final guardedValue = map['snapshotType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceDBSnapshotIdentifier: (() {
        final guardedValue = map['sourceDBSnapshotIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceRegion: (() {
        final guardedValue = map['sourceRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageThroughput: (() {
        final guardedValue = map['storageThroughput'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      storageType: (() {
        final guardedValue = map['storageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagList: (() {
        final guardedValue = map['tagList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TagResponse>(
            guardedValue,
            (value) =>
                TagResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      tdeCredentialArn: (() {
        final guardedValue = map['tdeCredentialArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timezone: (() {
        final guardedValue = map['timezone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
