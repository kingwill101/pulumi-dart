// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSnapshot.
class GetSnapshotResult3 {
  /// Allocated storage size in gigabytes (GB).
  final int allocatedStorage;

  /// Name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  final String availabilityZone;
  final String? dbInstanceIdentifier;

  /// ARN for the DB snapshot.
  final String dbSnapshotArn;
  final String? dbSnapshotIdentifier;

  /// Whether the DB snapshot is encrypted.
  final bool encrypted;

  /// Name of the database engine.
  final String engine;

  /// Version of the database engine.
  final String engineVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includePublic;
  final bool? includeShared;

  /// Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  final int iops;

  /// ARN for the KMS encryption key.
  final String kmsKeyId;

  /// License model information for the restored DB instance.
  final String licenseModel;
  final bool? mostRecent;

  /// Provides the option group name for the DB snapshot.
  final String optionGroupName;

  /// Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC). Doesn't change when the snapshot is copied.
  final String originalSnapshotCreateTime;
  final int port;
  final String region;

  /// Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC). Changes for the copy when the snapshot is copied.
  final String snapshotCreateTime;
  final String? snapshotType;

  /// DB snapshot ARN that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy.
  final String sourceDbSnapshotIdentifier;

  /// Region that the DB snapshot was created in or copied from.
  final String sourceRegion;

  /// Status of this DB snapshot.
  final String status;

  /// Storage type associated with DB snapshot.
  final String storageType;
  final Map<String, String> tags;

  /// ID of the VPC associated with the DB snapshot.
  final String vpcId;

  GetSnapshotResult3({
    required this.allocatedStorage,
    required this.availabilityZone,
    this.dbInstanceIdentifier,
    required this.dbSnapshotArn,
    this.dbSnapshotIdentifier,
    required this.encrypted,
    required this.engine,
    required this.engineVersion,
    required this.id,
    this.includePublic,
    this.includeShared,
    required this.iops,
    required this.kmsKeyId,
    required this.licenseModel,
    this.mostRecent,
    required this.optionGroupName,
    required this.originalSnapshotCreateTime,
    required this.port,
    required this.region,
    required this.snapshotCreateTime,
    this.snapshotType,
    required this.sourceDbSnapshotIdentifier,
    required this.sourceRegion,
    required this.status,
    required this.storageType,
    required this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedStorage'] = allocatedStorage;
    map['availabilityZone'] = availabilityZone;
    final dbInstanceIdentifierValue = dbInstanceIdentifier;
    if (dbInstanceIdentifierValue != null) {
      map['dbInstanceIdentifier'] = dbInstanceIdentifierValue;
    }
    map['dbSnapshotArn'] = dbSnapshotArn;
    final dbSnapshotIdentifierValue = dbSnapshotIdentifier;
    if (dbSnapshotIdentifierValue != null) {
      map['dbSnapshotIdentifier'] = dbSnapshotIdentifierValue;
    }
    map['encrypted'] = encrypted;
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
    map['iops'] = iops;
    map['kmsKeyId'] = kmsKeyId;
    map['licenseModel'] = licenseModel;
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    map['optionGroupName'] = optionGroupName;
    map['originalSnapshotCreateTime'] = originalSnapshotCreateTime;
    map['port'] = port;
    map['region'] = region;
    map['snapshotCreateTime'] = snapshotCreateTime;
    final snapshotTypeValue = snapshotType;
    if (snapshotTypeValue != null) {
      map['snapshotType'] = snapshotTypeValue;
    }
    map['sourceDbSnapshotIdentifier'] = sourceDbSnapshotIdentifier;
    map['sourceRegion'] = sourceRegion;
    map['status'] = status;
    map['storageType'] = storageType;
    map['tags'] = tags;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetSnapshotResult3.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult3(
      allocatedStorage: map['allocatedStorage'] as int,
      availabilityZone: map['availabilityZone'] as String,
      dbInstanceIdentifier: map['dbInstanceIdentifier'] == null
          ? null
          : map['dbInstanceIdentifier'] as String,
      dbSnapshotArn: map['dbSnapshotArn'] as String,
      dbSnapshotIdentifier: map['dbSnapshotIdentifier'] == null
          ? null
          : map['dbSnapshotIdentifier'] as String,
      encrypted: map['encrypted'] as bool,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      includePublic:
          map['includePublic'] == null ? null : map['includePublic'] as bool,
      includeShared:
          map['includeShared'] == null ? null : map['includeShared'] as bool,
      iops: map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] as String,
      licenseModel: map['licenseModel'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      optionGroupName: map['optionGroupName'] as String,
      originalSnapshotCreateTime: map['originalSnapshotCreateTime'] as String,
      port: map['port'] as int,
      region: map['region'] as String,
      snapshotCreateTime: map['snapshotCreateTime'] as String,
      snapshotType:
          map['snapshotType'] == null ? null : map['snapshotType'] as String,
      sourceDbSnapshotIdentifier: map['sourceDbSnapshotIdentifier'] as String,
      sourceRegion: map['sourceRegion'] as String,
      status: map['status'] as String,
      storageType: map['storageType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
