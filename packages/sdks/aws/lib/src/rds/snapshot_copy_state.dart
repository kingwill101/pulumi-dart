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
    pulumi.Output<int>? allocatedStorage,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<bool>? copyTags,
    pulumi.Output<String>? dbSnapshotArn,
    pulumi.Output<String>? destinationRegion,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<int>? iops,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? licenseModel,
    pulumi.Output<String>? optionGroupName,
    pulumi.Output<int>? port,
    pulumi.Output<String>? presignedUrl,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? sharedAccounts,
    pulumi.Output<String>? snapshotType,
    pulumi.Output<String>? sourceDbSnapshotIdentifier,
    pulumi.Output<String>? sourceRegion,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? targetCustomAvailabilityZone,
    pulumi.Output<String>? targetDbSnapshotIdentifier,
    pulumi.Output<String>? vpcId,
  }) :
      allocatedStorage = pulumi.Input.asOptionalInput<int>(allocatedStorage),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      copyTags = pulumi.Input.asOptionalInput<bool>(copyTags),
      dbSnapshotArn = pulumi.Input.asOptionalInput<String>(dbSnapshotArn),
      destinationRegion = pulumi.Input.asOptionalInput<String>(destinationRegion),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      iops = pulumi.Input.asOptionalInput<int>(iops),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      licenseModel = pulumi.Input.asOptionalInput<String>(licenseModel),
      optionGroupName = pulumi.Input.asOptionalInput<String>(optionGroupName),
      port = pulumi.Input.asOptionalInput<int>(port),
      presignedUrl = pulumi.Input.asOptionalInput<String>(presignedUrl),
      region = pulumi.Input.asOptionalInput<String>(region),
      sharedAccounts = pulumi.Input.asOptionalInput<List<String>>(sharedAccounts),
      snapshotType = pulumi.Input.asOptionalInput<String>(snapshotType),
      sourceDbSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(sourceDbSnapshotIdentifier),
      sourceRegion = pulumi.Input.asOptionalInput<String>(sourceRegion),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetCustomAvailabilityZone = pulumi.Input.asOptionalInput<String>(targetCustomAvailabilityZone),
      targetDbSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(targetDbSnapshotIdentifier),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      allocatedStorage: map['allocatedStorage'] == null ? null : pulumi.Output.create<int>(map['allocatedStorage'] as int),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      copyTags: map['copyTags'] == null ? null : pulumi.Output.create<bool>(map['copyTags'] as bool),
      dbSnapshotArn: map['dbSnapshotArn'] == null ? null : pulumi.Output.create<String>(map['dbSnapshotArn'] as String),
      destinationRegion: map['destinationRegion'] == null ? null : pulumi.Output.create<String>(map['destinationRegion'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      iops: map['iops'] == null ? null : pulumi.Output.create<int>(map['iops'] as int),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      licenseModel: map['licenseModel'] == null ? null : pulumi.Output.create<String>(map['licenseModel'] as String),
      optionGroupName: map['optionGroupName'] == null ? null : pulumi.Output.create<String>(map['optionGroupName'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      presignedUrl: map['presignedUrl'] == null ? null : pulumi.Output.create<String>(map['presignedUrl'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sharedAccounts: map['sharedAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['sharedAccounts'] as List).cast<String>()),
      snapshotType: map['snapshotType'] == null ? null : pulumi.Output.create<String>(map['snapshotType'] as String),
      sourceDbSnapshotIdentifier: map['sourceDbSnapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['sourceDbSnapshotIdentifier'] as String),
      sourceRegion: map['sourceRegion'] == null ? null : pulumi.Output.create<String>(map['sourceRegion'] as String),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetCustomAvailabilityZone: map['targetCustomAvailabilityZone'] == null ? null : pulumi.Output.create<String>(map['targetCustomAvailabilityZone'] as String),
      targetDbSnapshotIdentifier: map['targetDbSnapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['targetDbSnapshotIdentifier'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

