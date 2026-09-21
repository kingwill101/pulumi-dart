// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterSnapshot resources.
class ClusterSnapshotState {
  /// Allocated storage size in gigabytes (GB).
  final pulumi.Input<int?>? allocatedStorage;
  /// List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  final pulumi.Input<List<String>?>? availabilityZones;
  /// DB Cluster Identifier from which to take the snapshot.
  final pulumi.Input<String?>? dbClusterIdentifier;
  /// ARN for the DB Cluster Snapshot.
  final pulumi.Input<String?>? dbClusterSnapshotArn;
  /// Identifier for the snapshot.
  final pulumi.Input<String?>? dbClusterSnapshotIdentifier;
  /// Name of the database engine.
  final pulumi.Input<String?>? engine;
  /// Version of the database engine for this DB cluster snapshot.
  final pulumi.Input<String?>? engineVersion;
  /// If storageEncrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.
  final pulumi.Input<String?>? kmsKeyId;
  /// License model information for the restored DB cluster.
  final pulumi.Input<String?>? licenseModel;
  /// Port that the DB cluster was listening on at the time of the snapshot.
  final pulumi.Input<int?>? port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  final pulumi.Input<List<String>?>? sharedAccounts;
  /// Type of the DB cluster snapshot.
  final pulumi.Input<String?>? snapshotType;
  /// DB Cluster Snapshot ARN that the DB Cluster Snapshot was copied from. It only has value in case of cross customer or cross region copy.
  final pulumi.Input<String?>? sourceDbClusterSnapshotArn;
  /// Status of this DB Cluster Snapshot.
  final pulumi.Input<String?>? status;
  /// Whether the DB cluster snapshot is encrypted.
  final pulumi.Input<bool?>? storageEncrypted;
  /// Map of tags to assign to the DB cluster. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// VPC ID associated with the DB cluster snapshot.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [ClusterSnapshotState].
  /// [allocatedStorage] Allocated storage size in gigabytes (GB).
  /// [availabilityZones] List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  /// [dbClusterIdentifier] DB Cluster Identifier from which to take the snapshot.
  /// [dbClusterSnapshotArn] ARN for the DB Cluster Snapshot.
  /// [dbClusterSnapshotIdentifier] Identifier for the snapshot.
  /// [engine] Name of the database engine.
  /// [engineVersion] Version of the database engine for this DB cluster snapshot.
  /// [kmsKeyId] If storageEncrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.
  /// [licenseModel] License model information for the restored DB cluster.
  /// [port] Port that the DB cluster was listening on at the time of the snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedAccounts] List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  /// [snapshotType] Type of the DB cluster snapshot.
  /// [sourceDbClusterSnapshotArn] DB Cluster Snapshot ARN that the DB Cluster Snapshot was copied from. It only has value in case of cross customer or cross region copy.
  /// [status] Status of this DB Cluster Snapshot.
  /// [storageEncrypted] Whether the DB cluster snapshot is encrypted.
  /// [tags] Map of tags to assign to the DB cluster. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [vpcId] VPC ID associated with the DB cluster snapshot.
  const ClusterSnapshotState({
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
      allocatedStorage: (() { final guardedValue = map['allocatedStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dbClusterIdentifier: (() { final guardedValue = map['dbClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterSnapshotArn: (() { final guardedValue = map['dbClusterSnapshotArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterSnapshotIdentifier: (() { final guardedValue = map['dbClusterSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedAccounts: (() { final guardedValue = map['sharedAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDbClusterSnapshotArn: (() { final guardedValue = map['sourceDbClusterSnapshotArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageEncrypted: (() { final guardedValue = map['storageEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
