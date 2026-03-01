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
    pulumi.Output<List<String>>? availabilityZones,
    pulumi.Output<String>? dbClusterIdentifier,
    pulumi.Output<String>? dbClusterSnapshotArn,
    pulumi.Output<String>? dbClusterSnapshotIdentifier,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<int>? port,
    pulumi.Output<String>? region,
    pulumi.Output<String>? snapshotType,
    pulumi.Output<String>? sourceDbClusterSnapshotArn,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? storageEncrypted,
    pulumi.Output<String>? vpcId,
  }) :
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      dbClusterIdentifier = pulumi.Input.asOptionalInput<String>(dbClusterIdentifier),
      dbClusterSnapshotArn = pulumi.Input.asOptionalInput<String>(dbClusterSnapshotArn),
      dbClusterSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(dbClusterSnapshotIdentifier),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      port = pulumi.Input.asOptionalInput<int>(port),
      region = pulumi.Input.asOptionalInput<String>(region),
      snapshotType = pulumi.Input.asOptionalInput<String>(snapshotType),
      sourceDbClusterSnapshotArn = pulumi.Input.asOptionalInput<String>(sourceDbClusterSnapshotArn),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      availabilityZones: map['availabilityZones'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZones'] as List).cast<String>()),
      dbClusterIdentifier: map['dbClusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['dbClusterIdentifier'] as String),
      dbClusterSnapshotArn: map['dbClusterSnapshotArn'] == null ? null : pulumi.Output.create<String>(map['dbClusterSnapshotArn'] as String),
      dbClusterSnapshotIdentifier: map['dbClusterSnapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['dbClusterSnapshotIdentifier'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snapshotType: map['snapshotType'] == null ? null : pulumi.Output.create<String>(map['snapshotType'] as String),
      sourceDbClusterSnapshotArn: map['sourceDbClusterSnapshotArn'] == null ? null : pulumi.Output.create<String>(map['sourceDbClusterSnapshotArn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageEncrypted: map['storageEncrypted'] == null ? null : pulumi.Output.create<bool>(map['storageEncrypted'] as bool),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

