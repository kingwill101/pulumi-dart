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
  const ClusterSnapshotCopyState({
    this.allocatedStorage,
    this.copyTags,
    this.dbClusterSnapshotArn,
    this.destinationRegion,
    this.engine,
    this.engineVersion,
    this.kmsKeyId,
    this.licenseModel,
    this.presignedUrl,
    this.region,
    this.sharedAccounts,
    this.snapshotType,
    this.sourceDbClusterSnapshotIdentifier,
    this.storageEncrypted,
    this.storageType,
    this.tags,
    this.tagsAll,
    this.targetDbClusterSnapshotIdentifier,
    this.timeouts,
    this.vpcId,
  });

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
      allocatedStorage: (() { final guardedValue = map['allocatedStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      copyTags: (() { final guardedValue = map['copyTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dbClusterSnapshotArn: (() { final guardedValue = map['dbClusterSnapshotArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationRegion: (() { final guardedValue = map['destinationRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      presignedUrl: (() { final guardedValue = map['presignedUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedAccounts: (() { final guardedValue = map['sharedAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDbClusterSnapshotIdentifier: (() { final guardedValue = map['sourceDbClusterSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageEncrypted: (() { final guardedValue = map['storageEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetDbClusterSnapshotIdentifier: (() { final guardedValue = map['targetDbClusterSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSnapshotCopyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

