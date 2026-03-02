// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SnapshotCopy resources.
class SnapshotCopyState {
  /// Specifies the allocated storage size in gigabytes (GB).
  final pulumi.Input<int>? allocatedStorage;
  /// Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  final pulumi.Input<String>? availabilityZone;
  /// Whether to copy existing tags. Defaults to `false`.
  final pulumi.Input<bool>? copyTags;
  /// The Amazon Resource Name (ARN) for the DB snapshot.
  final pulumi.Input<String>? dbSnapshotArn;
  /// The Destination region to place snapshot copy.
  final pulumi.Input<String>? destinationRegion;
  /// Specifies whether the DB snapshot is encrypted.
  final pulumi.Input<bool>? encrypted;
  /// Specifies the name of the database engine.
  final pulumi.Input<String>? engine;
  /// Specifies the version of the database engine.
  final pulumi.Input<String>? engineVersion;
  /// Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  final pulumi.Input<int>? iops;
  /// KMS key ID.
  final pulumi.Input<String>? kmsKeyId;
  /// License model information for the restored DB instance.
  final pulumi.Input<String>? licenseModel;
  /// The name of an option group to associate with the copy of the snapshot.
  final pulumi.Input<String>? optionGroupName;
  final pulumi.Input<int>? port;
  /// he URL that contains a Signature Version 4 signed request.
  final pulumi.Input<String>? presignedUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  final pulumi.Input<List<String>>? sharedAccounts;
  final pulumi.Input<String>? snapshotType;
  /// Snapshot identifier of the source snapshot.
  final pulumi.Input<String>? sourceDbSnapshotIdentifier;
  /// The region that the DB snapshot was created in or copied from.
  final pulumi.Input<String>? sourceRegion;
  /// Specifies the storage type associated with DB snapshot.
  final pulumi.Input<String>? storageType;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The external custom Availability Zone.
  final pulumi.Input<String>? targetCustomAvailabilityZone;
  /// The Identifier for the snapshot.
  final pulumi.Input<String>? targetDbSnapshotIdentifier;
  /// Provides the VPC ID associated with the DB snapshot.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [SnapshotCopyState].
  /// [allocatedStorage] Specifies the allocated storage size in gigabytes (GB).
  /// [availabilityZone] Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  /// [copyTags] Whether to copy existing tags. Defaults to `false`.
  /// [dbSnapshotArn] The Amazon Resource Name (ARN) for the DB snapshot.
  /// [destinationRegion] The Destination region to place snapshot copy.
  /// [encrypted] Specifies whether the DB snapshot is encrypted.
  /// [engine] Specifies the name of the database engine.
  /// [engineVersion] Specifies the version of the database engine.
  /// [iops] Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  /// [kmsKeyId] KMS key ID.
  /// [licenseModel] License model information for the restored DB instance.
  /// [optionGroupName] The name of an option group to associate with the copy of the snapshot.
  /// [port] Optional.
  /// [presignedUrl] he URL that contains a Signature Version 4 signed request.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedAccounts] List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  /// [snapshotType] Optional.
  /// [sourceDbSnapshotIdentifier] Snapshot identifier of the source snapshot.
  /// [sourceRegion] The region that the DB snapshot was created in or copied from.
  /// [storageType] Specifies the storage type associated with DB snapshot.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetCustomAvailabilityZone] The external custom Availability Zone.
  /// [targetDbSnapshotIdentifier] The Identifier for the snapshot.
  /// [vpcId] Provides the VPC ID associated with the DB snapshot.
  SnapshotCopyState({
    this.allocatedStorage,
    this.availabilityZone,
    this.copyTags,
    this.dbSnapshotArn,
    this.destinationRegion,
    this.encrypted,
    this.engine,
    this.engineVersion,
    this.iops,
    this.kmsKeyId,
    this.licenseModel,
    this.optionGroupName,
    this.port,
    this.presignedUrl,
    this.region,
    this.sharedAccounts,
    this.snapshotType,
    this.sourceDbSnapshotIdentifier,
    this.sourceRegion,
    this.storageType,
    this.tags,
    this.tagsAll,
    this.targetCustomAvailabilityZone,
    this.targetDbSnapshotIdentifier,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'availabilityZone': ?availabilityZone,
      'copyTags': ?copyTags,
      'dbSnapshotArn': ?dbSnapshotArn,
      'destinationRegion': ?destinationRegion,
      'encrypted': ?encrypted,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'licenseModel': ?licenseModel,
      'optionGroupName': ?optionGroupName,
      'port': ?port,
      'presignedUrl': ?presignedUrl,
      'region': ?region,
      'sharedAccounts': ?sharedAccounts,
      'snapshotType': ?snapshotType,
      'sourceDbSnapshotIdentifier': ?sourceDbSnapshotIdentifier,
      'sourceRegion': ?sourceRegion,
      'storageType': ?storageType,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetCustomAvailabilityZone': ?targetCustomAvailabilityZone,
      'targetDbSnapshotIdentifier': ?targetDbSnapshotIdentifier,
      'vpcId': ?vpcId,
    };
  }

  factory SnapshotCopyState.fromMap(Map<String, dynamic> map) {
    return SnapshotCopyState(
      allocatedStorage: map['allocatedStorage'] == null ? null : ((map['allocatedStorage'] as int).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      copyTags: map['copyTags'] == null ? null : ((map['copyTags'] as bool).input()).input(),
      dbSnapshotArn: map['dbSnapshotArn'] == null ? null : ((map['dbSnapshotArn'] as String).input()).input(),
      destinationRegion: map['destinationRegion'] == null ? null : ((map['destinationRegion'] as String).input()).input(),
      encrypted: map['encrypted'] == null ? null : ((map['encrypted'] as bool).input()).input(),
      engine: map['engine'] == null ? null : ((map['engine'] as String).input()).input(),
      engineVersion: map['engineVersion'] == null ? null : ((map['engineVersion'] as String).input()).input(),
      iops: map['iops'] == null ? null : ((map['iops'] as int).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      licenseModel: map['licenseModel'] == null ? null : ((map['licenseModel'] as String).input()).input(),
      optionGroupName: map['optionGroupName'] == null ? null : ((map['optionGroupName'] as String).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      presignedUrl: map['presignedUrl'] == null ? null : ((map['presignedUrl'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sharedAccounts: map['sharedAccounts'] == null ? null : (((map['sharedAccounts'] as List).cast<String>()).input()).input(),
      snapshotType: map['snapshotType'] == null ? null : ((map['snapshotType'] as String).input()).input(),
      sourceDbSnapshotIdentifier: map['sourceDbSnapshotIdentifier'] == null ? null : ((map['sourceDbSnapshotIdentifier'] as String).input()).input(),
      sourceRegion: map['sourceRegion'] == null ? null : ((map['sourceRegion'] as String).input()).input(),
      storageType: map['storageType'] == null ? null : ((map['storageType'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      targetCustomAvailabilityZone: map['targetCustomAvailabilityZone'] == null ? null : ((map['targetCustomAvailabilityZone'] as String).input()).input(),
      targetDbSnapshotIdentifier: map['targetDbSnapshotIdentifier'] == null ? null : ((map['targetDbSnapshotIdentifier'] as String).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

