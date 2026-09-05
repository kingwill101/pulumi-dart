// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusterSnapshot.
class GetClusterSnapshotResult {
  /// Allocated storage size in gigabytes (GB).
  final int? allocatedStorage;
  /// List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  final List<String>? availabilityZones;
  /// Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from.
  final String? dbClusterIdentifier;
  /// The ARN for the DB Cluster Snapshot.
  final String? dbClusterSnapshotArn;
  final String? dbClusterSnapshotIdentifier;
  /// Name of the database engine.
  final String? engine;
  /// Version of the database engine for this DB cluster snapshot.
  final String? engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? includePublic;
  final bool? includeShared;
  /// If storageEncrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.
  final String? kmsKeyId;
  /// License model information for the restored DB cluster.
  final String? licenseModel;
  final bool? mostRecent;
  /// Port that the DB cluster was listening on at the time of the snapshot.
  final int? port;
  final String? region;
  /// Time when the snapshot was taken, in Universal Coordinated Time (UTC).
  final String? snapshotCreateTime;
  final String? snapshotType;
  final String? sourceDbClusterSnapshotArn;
  /// Status of this DB Cluster Snapshot.
  final String? status;
  /// Whether the DB cluster snapshot is encrypted.
  final bool? storageEncrypted;
  /// Map of tags for the resource.
  final Map<String, String>? tags;
  /// VPC ID associated with the DB cluster snapshot.
  final String? vpcId;

  /// Creates a new [GetClusterSnapshotResult].
  /// [allocatedStorage] Allocated storage size in gigabytes (GB).
  /// [availabilityZones] List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  /// [dbClusterIdentifier] Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from.
  /// [dbClusterSnapshotArn] The ARN for the DB Cluster Snapshot.
  /// [dbClusterSnapshotIdentifier] Optional.
  /// [engine] Name of the database engine.
  /// [engineVersion] Version of the database engine for this DB cluster snapshot.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includePublic] Optional.
  /// [includeShared] Optional.
  /// [kmsKeyId] If storageEncrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.
  /// [licenseModel] License model information for the restored DB cluster.
  /// [mostRecent] Optional.
  /// [port] Port that the DB cluster was listening on at the time of the snapshot.
  /// [region] Optional.
  /// [snapshotCreateTime] Time when the snapshot was taken, in Universal Coordinated Time (UTC).
  /// [snapshotType] Optional.
  /// [sourceDbClusterSnapshotArn] Optional.
  /// [status] Status of this DB Cluster Snapshot.
  /// [storageEncrypted] Whether the DB cluster snapshot is encrypted.
  /// [tags] Map of tags for the resource.
  /// [vpcId] VPC ID associated with the DB cluster snapshot.
  const GetClusterSnapshotResult({
    this.allocatedStorage,
    this.availabilityZones,
    this.dbClusterIdentifier,
    this.dbClusterSnapshotArn,
    this.dbClusterSnapshotIdentifier,
    this.engine,
    this.engineVersion,
    this.id,
    this.includePublic,
    this.includeShared,
    this.kmsKeyId,
    this.licenseModel,
    this.mostRecent,
    this.port,
    this.region,
    this.snapshotCreateTime,
    this.snapshotType,
    this.sourceDbClusterSnapshotArn,
    this.status,
    this.storageEncrypted,
    this.tags,
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
      'id': ?id,
      'includePublic': ?includePublic,
      'includeShared': ?includeShared,
      'kmsKeyId': ?kmsKeyId,
      'licenseModel': ?licenseModel,
      'mostRecent': ?mostRecent,
      'port': ?port,
      'region': ?region,
      'snapshotCreateTime': ?snapshotCreateTime,
      'snapshotType': ?snapshotType,
      'sourceDbClusterSnapshotArn': ?sourceDbClusterSnapshotArn,
      'status': ?status,
      'storageEncrypted': ?storageEncrypted,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetClusterSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetClusterSnapshotResult(
      allocatedStorage: (() { final guardedValue = map['allocatedStorage']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dbClusterIdentifier: (() { final guardedValue = map['dbClusterIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbClusterSnapshotArn: (() { final guardedValue = map['dbClusterSnapshotArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbClusterSnapshotIdentifier: (() { final guardedValue = map['dbClusterSnapshotIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includePublic: (() { final guardedValue = map['includePublic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includeShared: (() { final guardedValue = map['includeShared']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotCreateTime: (() { final guardedValue = map['snapshotCreateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDbClusterSnapshotArn: (() { final guardedValue = map['sourceDbClusterSnapshotArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageEncrypted: (() { final guardedValue = map['storageEncrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
