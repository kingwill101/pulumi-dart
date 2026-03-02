// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterSnapshot resources.
class ClusterSnapshotState {
  /// List of EC2 Availability Zones that instances in the DocumentDB cluster snapshot can be restored in.
  final pulumi.Input<List<String>>? availabilityZones;
  /// The DocumentDB Cluster Identifier from which to take the snapshot.
  final pulumi.Input<String>? dbClusterIdentifier;
  /// The Amazon Resource Name (ARN) for the DocumentDB Cluster Snapshot.
  final pulumi.Input<String>? dbClusterSnapshotArn;
  /// The Identifier for the snapshot.
  final pulumi.Input<String>? dbClusterSnapshotIdentifier;
  /// Specifies the name of the database engine.
  final pulumi.Input<String>? engine;
  /// Version of the database engine for this DocumentDB cluster snapshot.
  final pulumi.Input<String>? engineVersion;
  /// If storage_encrypted is true, the AWS KMS key identifier for the encrypted DocumentDB cluster snapshot.
  final pulumi.Input<String>? kmsKeyId;
  /// Port that the DocumentDB cluster was listening on at the time of the snapshot.
  final pulumi.Input<int>? port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? snapshotType;
  final pulumi.Input<String>? sourceDbClusterSnapshotArn;
  /// The status of this DocumentDB Cluster Snapshot.
  final pulumi.Input<String>? status;
  /// Specifies whether the DocumentDB cluster snapshot is encrypted.
  final pulumi.Input<bool>? storageEncrypted;
  /// The VPC ID associated with the DocumentDB cluster snapshot.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ClusterSnapshotState].
  /// [availabilityZones] List of EC2 Availability Zones that instances in the DocumentDB cluster snapshot can be restored in.
  /// [dbClusterIdentifier] The DocumentDB Cluster Identifier from which to take the snapshot.
  /// [dbClusterSnapshotArn] The Amazon Resource Name (ARN) for the DocumentDB Cluster Snapshot.
  /// [dbClusterSnapshotIdentifier] The Identifier for the snapshot.
  /// [engine] Specifies the name of the database engine.
  /// [engineVersion] Version of the database engine for this DocumentDB cluster snapshot.
  /// [kmsKeyId] If storage_encrypted is true, the AWS KMS key identifier for the encrypted DocumentDB cluster snapshot.
  /// [port] Port that the DocumentDB cluster was listening on at the time of the snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotType] Optional.
  /// [sourceDbClusterSnapshotArn] Optional.
  /// [status] The status of this DocumentDB Cluster Snapshot.
  /// [storageEncrypted] Specifies whether the DocumentDB cluster snapshot is encrypted.
  /// [vpcId] The VPC ID associated with the DocumentDB cluster snapshot.
  ClusterSnapshotState({
    this.availabilityZones,
    this.dbClusterIdentifier,
    this.dbClusterSnapshotArn,
    this.dbClusterSnapshotIdentifier,
    this.engine,
    this.engineVersion,
    this.kmsKeyId,
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
      'availabilityZones': ?availabilityZones,
      'dbClusterIdentifier': ?dbClusterIdentifier,
      'dbClusterSnapshotArn': ?dbClusterSnapshotArn,
      'dbClusterSnapshotIdentifier': ?dbClusterSnapshotIdentifier,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'kmsKeyId': ?kmsKeyId,
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
      availabilityZones: map['availabilityZones'] == null ? null : ((map['availabilityZones'] as List).cast<String>()).input(),
      dbClusterIdentifier: map['dbClusterIdentifier'] == null ? null : (map['dbClusterIdentifier'] as String).input(),
      dbClusterSnapshotArn: map['dbClusterSnapshotArn'] == null ? null : (map['dbClusterSnapshotArn'] as String).input(),
      dbClusterSnapshotIdentifier: map['dbClusterSnapshotIdentifier'] == null ? null : (map['dbClusterSnapshotIdentifier'] as String).input(),
      engine: map['engine'] == null ? null : (map['engine'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      snapshotType: map['snapshotType'] == null ? null : (map['snapshotType'] as String).input(),
      sourceDbClusterSnapshotArn: map['sourceDbClusterSnapshotArn'] == null ? null : (map['sourceDbClusterSnapshotArn'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      storageEncrypted: map['storageEncrypted'] == null ? null : (map['storageEncrypted'] as bool).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

