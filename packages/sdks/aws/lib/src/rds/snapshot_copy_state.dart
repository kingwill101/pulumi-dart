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
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetCustomAvailabilityZone] The external custom Availability Zone.
  /// [targetDbSnapshotIdentifier] The Identifier for the snapshot.
  /// [vpcId] Provides the VPC ID associated with the DB snapshot.
  const SnapshotCopyState({
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
      allocatedStorage: (() { final guardedValue = map['allocatedStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyTags: (() { final guardedValue = map['copyTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dbSnapshotArn: (() { final guardedValue = map['dbSnapshotArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationRegion: (() { final guardedValue = map['destinationRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionGroupName: (() { final guardedValue = map['optionGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      presignedUrl: (() { final guardedValue = map['presignedUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedAccounts: (() { final guardedValue = map['sharedAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDbSnapshotIdentifier: (() { final guardedValue = map['sourceDbSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRegion: (() { final guardedValue = map['sourceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetCustomAvailabilityZone: (() { final guardedValue = map['targetCustomAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDbSnapshotIdentifier: (() { final guardedValue = map['targetDbSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
