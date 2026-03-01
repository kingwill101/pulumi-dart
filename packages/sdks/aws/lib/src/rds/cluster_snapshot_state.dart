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
    pulumi.Output<int>? allocatedStorage,
    pulumi.Output<List<String>>? availabilityZones,
    pulumi.Output<String>? dbClusterIdentifier,
    pulumi.Output<String>? dbClusterSnapshotArn,
    pulumi.Output<String>? dbClusterSnapshotIdentifier,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? licenseModel,
    pulumi.Output<int>? port,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? sharedAccounts,
    pulumi.Output<String>? snapshotType,
    pulumi.Output<String>? sourceDbClusterSnapshotArn,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? storageEncrypted,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      allocatedStorage = pulumi.Input.asOptionalInput<int>(allocatedStorage),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      dbClusterIdentifier = pulumi.Input.asOptionalInput<String>(dbClusterIdentifier),
      dbClusterSnapshotArn = pulumi.Input.asOptionalInput<String>(dbClusterSnapshotArn),
      dbClusterSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(dbClusterSnapshotIdentifier),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      licenseModel = pulumi.Input.asOptionalInput<String>(licenseModel),
      port = pulumi.Input.asOptionalInput<int>(port),
      region = pulumi.Input.asOptionalInput<String>(region),
      sharedAccounts = pulumi.Input.asOptionalInput<List<String>>(sharedAccounts),
      snapshotType = pulumi.Input.asOptionalInput<String>(snapshotType),
      sourceDbClusterSnapshotArn = pulumi.Input.asOptionalInput<String>(sourceDbClusterSnapshotArn),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      allocatedStorage: map['allocatedStorage'] == null ? null : pulumi.Output.create<int>(map['allocatedStorage'] as int),
      availabilityZones: map['availabilityZones'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZones'] as List).cast<String>()),
      dbClusterIdentifier: map['dbClusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['dbClusterIdentifier'] as String),
      dbClusterSnapshotArn: map['dbClusterSnapshotArn'] == null ? null : pulumi.Output.create<String>(map['dbClusterSnapshotArn'] as String),
      dbClusterSnapshotIdentifier: map['dbClusterSnapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['dbClusterSnapshotIdentifier'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      licenseModel: map['licenseModel'] == null ? null : pulumi.Output.create<String>(map['licenseModel'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sharedAccounts: map['sharedAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['sharedAccounts'] as List).cast<String>()),
      snapshotType: map['snapshotType'] == null ? null : pulumi.Output.create<String>(map['snapshotType'] as String),
      sourceDbClusterSnapshotArn: map['sourceDbClusterSnapshotArn'] == null ? null : pulumi.Output.create<String>(map['sourceDbClusterSnapshotArn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageEncrypted: map['storageEncrypted'] == null ? null : pulumi.Output.create<bool>(map['storageEncrypted'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

