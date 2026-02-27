// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClusterSnapshot.
class GetClusterSnapshotResult {
  /// Allocated storage size in gigabytes (GB).
  final int allocatedStorage;

  /// List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.
  final List<String> availabilityZones;

  /// Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from.
  final String? dbClusterIdentifier;

  /// The ARN for the DB Cluster Snapshot.
  final String dbClusterSnapshotArn;
  final String? dbClusterSnapshotIdentifier;

  /// Name of the database engine.
  final String engine;

  /// Version of the database engine for this DB cluster snapshot.
  final String engineVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includePublic;
  final bool? includeShared;

  /// If storage_encrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.
  final String kmsKeyId;

  /// License model information for the restored DB cluster.
  final String licenseModel;
  final bool? mostRecent;

  /// Port that the DB cluster was listening on at the time of the snapshot.
  final int port;
  final String region;

  /// Time when the snapshot was taken, in Universal Coordinated Time (UTC).
  final String snapshotCreateTime;
  final String? snapshotType;
  final String sourceDbClusterSnapshotArn;

  /// Status of this DB Cluster Snapshot.
  final String status;

  /// Whether the DB cluster snapshot is encrypted.
  final bool storageEncrypted;

  /// Map of tags for the resource.
  final Map<String, String> tags;

  /// VPC ID associated with the DB cluster snapshot.
  final String vpcId;

  GetClusterSnapshotResult({
    required this.allocatedStorage,
    required this.availabilityZones,
    this.dbClusterIdentifier,
    required this.dbClusterSnapshotArn,
    this.dbClusterSnapshotIdentifier,
    required this.engine,
    required this.engineVersion,
    required this.id,
    this.includePublic,
    this.includeShared,
    required this.kmsKeyId,
    required this.licenseModel,
    this.mostRecent,
    required this.port,
    required this.region,
    required this.snapshotCreateTime,
    this.snapshotType,
    required this.sourceDbClusterSnapshotArn,
    required this.status,
    required this.storageEncrypted,
    required this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedStorage'] = allocatedStorage;
    map['availabilityZones'] = availabilityZones;
    final dbClusterIdentifierValue = dbClusterIdentifier;
    if (dbClusterIdentifierValue != null) {
      map['dbClusterIdentifier'] = dbClusterIdentifierValue;
    }
    map['dbClusterSnapshotArn'] = dbClusterSnapshotArn;
    final dbClusterSnapshotIdentifierValue = dbClusterSnapshotIdentifier;
    if (dbClusterSnapshotIdentifierValue != null) {
      map['dbClusterSnapshotIdentifier'] = dbClusterSnapshotIdentifierValue;
    }
    map['engine'] = engine;
    map['engineVersion'] = engineVersion;
    map['id'] = id;
    final includePublicValue = includePublic;
    if (includePublicValue != null) {
      map['includePublic'] = includePublicValue;
    }
    final includeSharedValue = includeShared;
    if (includeSharedValue != null) {
      map['includeShared'] = includeSharedValue;
    }
    map['kmsKeyId'] = kmsKeyId;
    map['licenseModel'] = licenseModel;
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    map['port'] = port;
    map['region'] = region;
    map['snapshotCreateTime'] = snapshotCreateTime;
    final snapshotTypeValue = snapshotType;
    if (snapshotTypeValue != null) {
      map['snapshotType'] = snapshotTypeValue;
    }
    map['sourceDbClusterSnapshotArn'] = sourceDbClusterSnapshotArn;
    map['status'] = status;
    map['storageEncrypted'] = storageEncrypted;
    map['tags'] = tags;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetClusterSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetClusterSnapshotResult(
      allocatedStorage: map['allocatedStorage'] as int,
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      dbClusterIdentifier: map['dbClusterIdentifier'] == null
          ? null
          : map['dbClusterIdentifier'] as String,
      dbClusterSnapshotArn: map['dbClusterSnapshotArn'] as String,
      dbClusterSnapshotIdentifier: map['dbClusterSnapshotIdentifier'] == null
          ? null
          : map['dbClusterSnapshotIdentifier'] as String,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      includePublic:
          map['includePublic'] == null ? null : map['includePublic'] as bool,
      includeShared:
          map['includeShared'] == null ? null : map['includeShared'] as bool,
      kmsKeyId: map['kmsKeyId'] as String,
      licenseModel: map['licenseModel'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      port: map['port'] as int,
      region: map['region'] as String,
      snapshotCreateTime: map['snapshotCreateTime'] as String,
      snapshotType:
          map['snapshotType'] == null ? null : map['snapshotType'] as String,
      sourceDbClusterSnapshotArn: map['sourceDbClusterSnapshotArn'] as String,
      status: map['status'] as String,
      storageEncrypted: map['storageEncrypted'] as bool,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
