// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterSnapshot resources.
class ClusterSnapshotState {
  /// Specifies the allocated storage size in gigabytes (GB).
  final pulumi.Input<int>? allocatedStorage;
  /// List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  final pulumi.Input<List<String>>? availabilityZones;
  /// The DB Cluster Identifier from which to take the snapshot.
  final pulumi.Input<String>? dbClusterIdentifier;
  /// The Amazon Resource Name (ARN) for the DB Cluster Snapshot.
  final pulumi.Input<String>? dbClusterSnapshotArn;
  /// The Identifier for the snapshot.
  final pulumi.Input<String>? dbClusterSnapshotIdentifier;
  /// Specifies the name of the database engine.
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
  final pulumi.Input<String>? snapshotType;
  final pulumi.Input<String>? sourceDbClusterSnapshotArn;
  /// The status of this DB Cluster Snapshot.
  final pulumi.Input<String>? status;
  /// Specifies whether the DB cluster snapshot is encrypted.
  final pulumi.Input<bool>? storageEncrypted;
  /// The VPC ID associated with the DB cluster snapshot.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ClusterSnapshotState].
  /// [allocatedStorage] Specifies the allocated storage size in gigabytes (GB).
  /// [availabilityZones] List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  /// [dbClusterIdentifier] The DB Cluster Identifier from which to take the snapshot.
  /// [dbClusterSnapshotArn] The Amazon Resource Name (ARN) for the DB Cluster Snapshot.
  /// [dbClusterSnapshotIdentifier] The Identifier for the snapshot.
  /// [engine] Specifies the name of the database engine.
  /// [engineVersion] Version of the database engine for this DB cluster snapshot.
  /// [kmsKeyId] If storage_encrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.
  /// [licenseModel] License model information for the restored DB cluster.
  /// [port] Port that the DB cluster was listening on at the time of the snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotType] Optional.
  /// [sourceDbClusterSnapshotArn] Optional.
  /// [status] The status of this DB Cluster Snapshot.
  /// [storageEncrypted] Specifies whether the DB cluster snapshot is encrypted.
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
    this.snapshotType,
    this.sourceDbClusterSnapshotArn,
    this.status,
    this.storageEncrypted,
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
      'snapshotType': ?snapshotType,
      'sourceDbClusterSnapshotArn': ?sourceDbClusterSnapshotArn,
      'status': ?status,
      'storageEncrypted': ?storageEncrypted,
      'vpcId': ?vpcId,
    };
  }

  factory ClusterSnapshotState.fromMap(Map<String, dynamic> map) {
    return ClusterSnapshotState(
      allocatedStorage: map['allocatedStorage'] == null ? null : ((map['allocatedStorage'] as int).input()).input(),
      availabilityZones: map['availabilityZones'] == null ? null : (((map['availabilityZones'] as List).cast<String>()).input()).input(),
      dbClusterIdentifier: map['dbClusterIdentifier'] == null ? null : ((map['dbClusterIdentifier'] as String).input()).input(),
      dbClusterSnapshotArn: map['dbClusterSnapshotArn'] == null ? null : ((map['dbClusterSnapshotArn'] as String).input()).input(),
      dbClusterSnapshotIdentifier: map['dbClusterSnapshotIdentifier'] == null ? null : ((map['dbClusterSnapshotIdentifier'] as String).input()).input(),
      engine: map['engine'] == null ? null : ((map['engine'] as String).input()).input(),
      engineVersion: map['engineVersion'] == null ? null : ((map['engineVersion'] as String).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      licenseModel: map['licenseModel'] == null ? null : ((map['licenseModel'] as String).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      snapshotType: map['snapshotType'] == null ? null : ((map['snapshotType'] as String).input()).input(),
      sourceDbClusterSnapshotArn: map['sourceDbClusterSnapshotArn'] == null ? null : ((map['sourceDbClusterSnapshotArn'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      storageEncrypted: map['storageEncrypted'] == null ? null : ((map['storageEncrypted'] as bool).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

