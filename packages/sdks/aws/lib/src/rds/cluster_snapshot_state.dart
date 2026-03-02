// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterSnapshot resources.
class ClusterSnapshotState {
  /// Allocated storage size in gigabytes (GB).
  final pulumi.Input<int>? allocatedStorage;
  /// List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  final pulumi.Input<List<String>>? availabilityZones;
  /// The DB Cluster Identifier from which to take the snapshot.
  final pulumi.Input<String>? dbClusterIdentifier;
  /// The Amazon Resource Name (ARN) for the DB Cluster Snapshot.
  final pulumi.Input<String>? dbClusterSnapshotArn;
  /// The Identifier for the snapshot.
  final pulumi.Input<String>? dbClusterSnapshotIdentifier;
  /// Name of the database engine.
  final pulumi.Input<String>? engine;
  /// Version of the database engine for this DB cluster snapshot.
  final pulumi.Input<String>? engineVersion;
  /// If storage_encrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.
  final pulumi.Input<String>? kmsKeyId;
  /// License model information for the restored DB cluster.
  final pulumi.Input<String>? licenseModel;
  /// Port that the DB cluster was listening on at the time of the snapshot.
  final pulumi.Input<int>? port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  final pulumi.Input<List<String>>? sharedAccounts;
  final pulumi.Input<String>? snapshotType;
  final pulumi.Input<String>? sourceDbClusterSnapshotArn;
  /// The status of this DB Cluster Snapshot.
  final pulumi.Input<String>? status;
  /// Whether the DB cluster snapshot is encrypted.
  final pulumi.Input<bool>? storageEncrypted;
  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The VPC ID associated with the DB cluster snapshot.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ClusterSnapshotState].
  /// [allocatedStorage] Allocated storage size in gigabytes (GB).
  /// [availabilityZones] List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  /// [dbClusterIdentifier] The DB Cluster Identifier from which to take the snapshot.
  /// [dbClusterSnapshotArn] The Amazon Resource Name (ARN) for the DB Cluster Snapshot.
  /// [dbClusterSnapshotIdentifier] The Identifier for the snapshot.
  /// [engine] Name of the database engine.
  /// [engineVersion] Version of the database engine for this DB cluster snapshot.
  /// [kmsKeyId] If storage_encrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.
  /// [licenseModel] License model information for the restored DB cluster.
  /// [port] Port that the DB cluster was listening on at the time of the snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedAccounts] List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  /// [snapshotType] Optional.
  /// [sourceDbClusterSnapshotArn] Optional.
  /// [status] The status of this DB Cluster Snapshot.
  /// [storageEncrypted] Whether the DB cluster snapshot is encrypted.
  /// [tags] A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] The VPC ID associated with the DB cluster snapshot.
  ClusterSnapshotState({
    this.allocatedStorage,
    this.availabilityZones,
    this.dbClusterIdentifier,
    this.dbClusterSnapshotArn,
    this.dbClusterSnapshotIdentifier,
    this.engine,
    this.engineVersion,
    this.kmsKeyId,
    this.licenseModel,
    this.port,
    this.region,
    this.sharedAccounts,
    this.snapshotType,
    this.sourceDbClusterSnapshotArn,
    this.status,
    this.storageEncrypted,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'availabilityZones': ?availabilityZones,
      'dbClusterIdentifier': ?dbClusterIdentifier,
      'dbClusterSnapshotArn': ?dbClusterSnapshotArn,
      'dbClusterSnapshotIdentifier': ?dbClusterSnapshotIdentifier,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'kmsKeyId': ?kmsKeyId,
      'licenseModel': ?licenseModel,
      'port': ?port,
      'region': ?region,
      'sharedAccounts': ?sharedAccounts,
      'snapshotType': ?snapshotType,
      'sourceDbClusterSnapshotArn': ?sourceDbClusterSnapshotArn,
      'status': ?status,
      'storageEncrypted': ?storageEncrypted,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory ClusterSnapshotState.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotState(
      allocatedStorage: map['allocatedStorage'] == null ? null : (map['allocatedStorage'] as int).input(),
      availabilityZones: map['availabilityZones'] == null ? null : ((map['availabilityZones'] as List).cast<String>()).input(),
      dbClusterIdentifier: map['dbClusterIdentifier'] == null ? null : (map['dbClusterIdentifier'] as String).input(),
      dbClusterSnapshotArn: map['dbClusterSnapshotArn'] == null ? null : (map['dbClusterSnapshotArn'] as String).input(),
      dbClusterSnapshotIdentifier: map['dbClusterSnapshotIdentifier'] == null ? null : (map['dbClusterSnapshotIdentifier'] as String).input(),
      engine: map['engine'] == null ? null : (map['engine'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      licenseModel: map['licenseModel'] == null ? null : (map['licenseModel'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sharedAccounts: map['sharedAccounts'] == null ? null : ((map['sharedAccounts'] as List).cast<String>()).input(),
      snapshotType: map['snapshotType'] == null ? null : (map['snapshotType'] as String).input(),
      sourceDbClusterSnapshotArn: map['sourceDbClusterSnapshotArn'] == null ? null : (map['sourceDbClusterSnapshotArn'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      storageEncrypted: map['storageEncrypted'] == null ? null : (map['storageEncrypted'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

