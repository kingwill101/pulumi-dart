// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_snapshot_copy_timeouts.dart';

/// Input properties used for looking up and filtering ClusterSnapshotCopy resources.
class ClusterSnapshotCopyState {
  /// Specifies the allocated storage size in gigabytes (GB).
  final pulumi.Input<int>? allocatedStorage;
  /// Whether to copy existing tags. Defaults to `false`.
  final pulumi.Input<bool>? copyTags;
  /// The Amazon Resource Name (ARN) for the DB cluster snapshot.
  final pulumi.Input<String>? dbClusterSnapshotArn;
  /// The Destination region to place snapshot copy.
  final pulumi.Input<String>? destinationRegion;
  /// Specifies the name of the database engine.
  final pulumi.Input<String>? engine;
  /// Specifies the version of the database engine.
  final pulumi.Input<String>? engineVersion;
  /// KMS key ID.
  final pulumi.Input<String>? kmsKeyId;
  /// License model information for the restored DB instance.
  final pulumi.Input<String>? licenseModel;
  /// URL that contains a Signature Version 4 signed request.
  final pulumi.Input<String>? presignedUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  final pulumi.Input<List<String>>? sharedAccounts;
  final pulumi.Input<String>? snapshotType;
  /// Identifier of the source snapshot.
  final pulumi.Input<String>? sourceDbClusterSnapshotIdentifier;
  /// Specifies whether the DB cluster snapshot is encrypted.
  final pulumi.Input<bool>? storageEncrypted;
  /// Specifies the storage type associated with DB cluster snapshot.
  final pulumi.Input<String>? storageType;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Identifier for the snapshot.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? targetDbClusterSnapshotIdentifier;
  final pulumi.Input<ClusterSnapshotCopyTimeouts>? timeouts;
  /// Provides the VPC ID associated with the DB cluster snapshot.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ClusterSnapshotCopyState].
  /// [allocatedStorage] Specifies the allocated storage size in gigabytes (GB).
  /// [copyTags] Whether to copy existing tags. Defaults to `false`.
  /// [dbClusterSnapshotArn] The Amazon Resource Name (ARN) for the DB cluster snapshot.
  /// [destinationRegion] The Destination region to place snapshot copy.
  /// [engine] Specifies the name of the database engine.
  /// [engineVersion] Specifies the version of the database engine.
  /// [kmsKeyId] KMS key ID.
  /// [licenseModel] License model information for the restored DB instance.
  /// [presignedUrl] URL that contains a Signature Version 4 signed request.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedAccounts] List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  /// [snapshotType] Optional.
  /// [sourceDbClusterSnapshotIdentifier] Identifier of the source snapshot.
  /// [storageEncrypted] Specifies whether the DB cluster snapshot is encrypted.
  /// [storageType] Specifies the storage type associated with DB cluster snapshot.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetDbClusterSnapshotIdentifier] Identifier for the snapshot.
  /// [timeouts] Optional.
  /// [vpcId] Provides the VPC ID associated with the DB cluster snapshot.
  ClusterSnapshotCopyState({
    pulumi.Output<int>? allocatedStorage,
    pulumi.Output<bool>? copyTags,
    pulumi.Output<String>? dbClusterSnapshotArn,
    pulumi.Output<String>? destinationRegion,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? licenseModel,
    pulumi.Output<String>? presignedUrl,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? sharedAccounts,
    pulumi.Output<String>? snapshotType,
    pulumi.Output<String>? sourceDbClusterSnapshotIdentifier,
    pulumi.Output<bool>? storageEncrypted,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? targetDbClusterSnapshotIdentifier,
    pulumi.Output<ClusterSnapshotCopyTimeouts>? timeouts,
    pulumi.Output<String>? vpcId,
  }) :
      allocatedStorage = pulumi.Input.asOptionalInput<int>(allocatedStorage),
      copyTags = pulumi.Input.asOptionalInput<bool>(copyTags),
      dbClusterSnapshotArn = pulumi.Input.asOptionalInput<String>(dbClusterSnapshotArn),
      destinationRegion = pulumi.Input.asOptionalInput<String>(destinationRegion),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      licenseModel = pulumi.Input.asOptionalInput<String>(licenseModel),
      presignedUrl = pulumi.Input.asOptionalInput<String>(presignedUrl),
      region = pulumi.Input.asOptionalInput<String>(region),
      sharedAccounts = pulumi.Input.asOptionalInput<List<String>>(sharedAccounts),
      snapshotType = pulumi.Input.asOptionalInput<String>(snapshotType),
      sourceDbClusterSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(sourceDbClusterSnapshotIdentifier),
      storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetDbClusterSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(targetDbClusterSnapshotIdentifier),
      timeouts = pulumi.Input.asOptionalInput<ClusterSnapshotCopyTimeouts>(timeouts),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'copyTags': ?copyTags,
      'dbClusterSnapshotArn': ?dbClusterSnapshotArn,
      'destinationRegion': ?destinationRegion,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'kmsKeyId': ?kmsKeyId,
      'licenseModel': ?licenseModel,
      'presignedUrl': ?presignedUrl,
      'region': ?region,
      'sharedAccounts': ?sharedAccounts,
      'snapshotType': ?snapshotType,
      'sourceDbClusterSnapshotIdentifier': ?sourceDbClusterSnapshotIdentifier,
      'storageEncrypted': ?storageEncrypted,
      'storageType': ?storageType,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetDbClusterSnapshotIdentifier': ?targetDbClusterSnapshotIdentifier,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ClusterSnapshotCopyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory ClusterSnapshotCopyState.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotCopyState(
      allocatedStorage: map['allocatedStorage'] == null ? null : pulumi.Output.create<int>(map['allocatedStorage'] as int),
      copyTags: map['copyTags'] == null ? null : pulumi.Output.create<bool>(map['copyTags'] as bool),
      dbClusterSnapshotArn: map['dbClusterSnapshotArn'] == null ? null : pulumi.Output.create<String>(map['dbClusterSnapshotArn'] as String),
      destinationRegion: map['destinationRegion'] == null ? null : pulumi.Output.create<String>(map['destinationRegion'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      licenseModel: map['licenseModel'] == null ? null : pulumi.Output.create<String>(map['licenseModel'] as String),
      presignedUrl: map['presignedUrl'] == null ? null : pulumi.Output.create<String>(map['presignedUrl'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sharedAccounts: map['sharedAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['sharedAccounts'] as List).cast<String>()),
      snapshotType: map['snapshotType'] == null ? null : pulumi.Output.create<String>(map['snapshotType'] as String),
      sourceDbClusterSnapshotIdentifier: map['sourceDbClusterSnapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['sourceDbClusterSnapshotIdentifier'] as String),
      storageEncrypted: map['storageEncrypted'] == null ? null : pulumi.Output.create<bool>(map['storageEncrypted'] as bool),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetDbClusterSnapshotIdentifier: map['targetDbClusterSnapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['targetDbClusterSnapshotIdentifier'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ClusterSnapshotCopyTimeouts>(ClusterSnapshotCopyTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

