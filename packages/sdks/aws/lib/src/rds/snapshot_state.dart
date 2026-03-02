// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Snapshot resources.
class SnapshotState {
  /// Specifies the allocated storage size in gigabytes (GB).
  final pulumi.Input<int>? allocatedStorage;
  /// Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  final pulumi.Input<String>? availabilityZone;
  /// The DB Instance Identifier from which to take the snapshot.
  final pulumi.Input<String>? dbInstanceIdentifier;
  /// The Amazon Resource Name (ARN) for the DB snapshot.
  final pulumi.Input<String>? dbSnapshotArn;
  /// The Identifier for the snapshot.
  final pulumi.Input<String>? dbSnapshotIdentifier;
  /// Specifies whether the DB snapshot is encrypted.
  final pulumi.Input<bool>? encrypted;
  /// Specifies the name of the database engine.
  final pulumi.Input<String>? engine;
  /// Specifies the version of the database engine.
  final pulumi.Input<String>? engineVersion;
  /// Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  final pulumi.Input<int>? iops;
  /// The ARN for the KMS encryption key.
  final pulumi.Input<String>? kmsKeyId;
  /// License model information for the restored DB instance.
  final pulumi.Input<String>? licenseModel;
  /// Provides the option group name for the DB snapshot.
  final pulumi.Input<String>? optionGroupName;
  final pulumi.Input<int>? port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  final pulumi.Input<List<String>>? sharedAccounts;
  final pulumi.Input<String>? snapshotType;
  /// The DB snapshot Arn that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy.
  final pulumi.Input<String>? sourceDbSnapshotIdentifier;
  /// The region that the DB snapshot was created in or copied from.
  final pulumi.Input<String>? sourceRegion;
  /// Specifies the status of this DB snapshot.
  final pulumi.Input<String>? status;
  /// Specifies the storage type associated with DB snapshot.
  final pulumi.Input<String>? storageType;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Provides the VPC ID associated with the DB snapshot.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [SnapshotState].
  /// [allocatedStorage] Specifies the allocated storage size in gigabytes (GB).
  /// [availabilityZone] Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  /// [dbInstanceIdentifier] The DB Instance Identifier from which to take the snapshot.
  /// [dbSnapshotArn] The Amazon Resource Name (ARN) for the DB snapshot.
  /// [dbSnapshotIdentifier] The Identifier for the snapshot.
  /// [encrypted] Specifies whether the DB snapshot is encrypted.
  /// [engine] Specifies the name of the database engine.
  /// [engineVersion] Specifies the version of the database engine.
  /// [iops] Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  /// [kmsKeyId] The ARN for the KMS encryption key.
  /// [licenseModel] License model information for the restored DB instance.
  /// [optionGroupName] Provides the option group name for the DB snapshot.
  /// [port] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedAccounts] List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  /// [snapshotType] Optional.
  /// [sourceDbSnapshotIdentifier] The DB snapshot Arn that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy.
  /// [sourceRegion] The region that the DB snapshot was created in or copied from.
  /// [status] Specifies the status of this DB snapshot.
  /// [storageType] Specifies the storage type associated with DB snapshot.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] Provides the VPC ID associated with the DB snapshot.
  SnapshotState({
    this.allocatedStorage,
    this.availabilityZone,
    this.dbInstanceIdentifier,
    this.dbSnapshotArn,
    this.dbSnapshotIdentifier,
    this.encrypted,
    this.engine,
    this.engineVersion,
    this.iops,
    this.kmsKeyId,
    this.licenseModel,
    this.optionGroupName,
    this.port,
    this.region,
    this.sharedAccounts,
    this.snapshotType,
    this.sourceDbSnapshotIdentifier,
    this.sourceRegion,
    this.status,
    this.storageType,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'availabilityZone': ?availabilityZone,
      'dbInstanceIdentifier': ?dbInstanceIdentifier,
      'dbSnapshotArn': ?dbSnapshotArn,
      'dbSnapshotIdentifier': ?dbSnapshotIdentifier,
      'encrypted': ?encrypted,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'licenseModel': ?licenseModel,
      'optionGroupName': ?optionGroupName,
      'port': ?port,
      'region': ?region,
      'sharedAccounts': ?sharedAccounts,
      'snapshotType': ?snapshotType,
      'sourceDbSnapshotIdentifier': ?sourceDbSnapshotIdentifier,
      'sourceRegion': ?sourceRegion,
      'status': ?status,
      'storageType': ?storageType,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      allocatedStorage: map['allocatedStorage'] == null ? null : (map['allocatedStorage'] as int).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      dbInstanceIdentifier: map['dbInstanceIdentifier'] == null ? null : (map['dbInstanceIdentifier'] as String).input(),
      dbSnapshotArn: map['dbSnapshotArn'] == null ? null : (map['dbSnapshotArn'] as String).input(),
      dbSnapshotIdentifier: map['dbSnapshotIdentifier'] == null ? null : (map['dbSnapshotIdentifier'] as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      engine: map['engine'] == null ? null : (map['engine'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      iops: map['iops'] == null ? null : (map['iops'] as int).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      licenseModel: map['licenseModel'] == null ? null : (map['licenseModel'] as String).input(),
      optionGroupName: map['optionGroupName'] == null ? null : (map['optionGroupName'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sharedAccounts: map['sharedAccounts'] == null ? null : ((map['sharedAccounts'] as List).cast<String>()).input(),
      snapshotType: map['snapshotType'] == null ? null : (map['snapshotType'] as String).input(),
      sourceDbSnapshotIdentifier: map['sourceDbSnapshotIdentifier'] == null ? null : (map['sourceDbSnapshotIdentifier'] as String).input(),
      sourceRegion: map['sourceRegion'] == null ? null : (map['sourceRegion'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      storageType: map['storageType'] == null ? null : (map['storageType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

