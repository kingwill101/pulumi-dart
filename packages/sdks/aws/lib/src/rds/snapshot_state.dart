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
    pulumi.Output<int>? allocatedStorage,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? dbInstanceIdentifier,
    pulumi.Output<String>? dbSnapshotArn,
    pulumi.Output<String>? dbSnapshotIdentifier,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<int>? iops,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? licenseModel,
    pulumi.Output<String>? optionGroupName,
    pulumi.Output<int>? port,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? sharedAccounts,
    pulumi.Output<String>? snapshotType,
    pulumi.Output<String>? sourceDbSnapshotIdentifier,
    pulumi.Output<String>? sourceRegion,
    pulumi.Output<String>? status,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      allocatedStorage = pulumi.Input.asOptionalInput<int>(allocatedStorage),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      dbInstanceIdentifier = pulumi.Input.asOptionalInput<String>(dbInstanceIdentifier),
      dbSnapshotArn = pulumi.Input.asOptionalInput<String>(dbSnapshotArn),
      dbSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(dbSnapshotIdentifier),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      iops = pulumi.Input.asOptionalInput<int>(iops),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      licenseModel = pulumi.Input.asOptionalInput<String>(licenseModel),
      optionGroupName = pulumi.Input.asOptionalInput<String>(optionGroupName),
      port = pulumi.Input.asOptionalInput<int>(port),
      region = pulumi.Input.asOptionalInput<String>(region),
      sharedAccounts = pulumi.Input.asOptionalInput<List<String>>(sharedAccounts),
      snapshotType = pulumi.Input.asOptionalInput<String>(snapshotType),
      sourceDbSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(sourceDbSnapshotIdentifier),
      sourceRegion = pulumi.Input.asOptionalInput<String>(sourceRegion),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      allocatedStorage: map['allocatedStorage'] == null ? null : pulumi.Output.create<int>(map['allocatedStorage'] as int),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      dbInstanceIdentifier: map['dbInstanceIdentifier'] == null ? null : pulumi.Output.create<String>(map['dbInstanceIdentifier'] as String),
      dbSnapshotArn: map['dbSnapshotArn'] == null ? null : pulumi.Output.create<String>(map['dbSnapshotArn'] as String),
      dbSnapshotIdentifier: map['dbSnapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['dbSnapshotIdentifier'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      iops: map['iops'] == null ? null : pulumi.Output.create<int>(map['iops'] as int),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      licenseModel: map['licenseModel'] == null ? null : pulumi.Output.create<String>(map['licenseModel'] as String),
      optionGroupName: map['optionGroupName'] == null ? null : pulumi.Output.create<String>(map['optionGroupName'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sharedAccounts: map['sharedAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['sharedAccounts'] as List).cast<String>()),
      snapshotType: map['snapshotType'] == null ? null : pulumi.Output.create<String>(map['snapshotType'] as String),
      sourceDbSnapshotIdentifier: map['sourceDbSnapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['sourceDbSnapshotIdentifier'] as String),
      sourceRegion: map['sourceRegion'] == null ? null : pulumi.Output.create<String>(map['sourceRegion'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

