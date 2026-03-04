// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSnapshot.
class GetSnapshotResult {
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

  /// Creates a new [GetSnapshotResult].
  /// [allocatedStorage] Allocated storage size in gigabytes (GB).
  /// [availabilityZone] Name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  /// [dbInstanceIdentifier] Optional.
  /// [dbSnapshotArn] ARN for the DB snapshot.
  /// [dbSnapshotIdentifier] Optional.
  /// [encrypted] Whether the DB snapshot is encrypted.
  /// [engine] Name of the database engine.
  /// [engineVersion] Version of the database engine.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includePublic] Optional.
  /// [includeShared] Optional.
  /// [iops] Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  /// [kmsKeyId] ARN for the KMS encryption key.
  /// [licenseModel] License model information for the restored DB instance.
  /// [mostRecent] Optional.
  /// [optionGroupName] Provides the option group name for the DB snapshot.
  /// [originalSnapshotCreateTime] Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC). Doesn't change when the snapshot is copied.
  /// [port] Required.
  /// [region] Required.
  /// [snapshotCreateTime] Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC). Changes for the copy when the snapshot is copied.
  /// [snapshotType] Optional.
  /// [sourceDbSnapshotIdentifier] DB snapshot ARN that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy.
  /// [sourceRegion] Region that the DB snapshot was created in or copied from.
  /// [status] Status of this DB snapshot.
  /// [storageType] Storage type associated with DB snapshot.
  /// [tags] Required.
  /// [vpcId] ID of the VPC associated with the DB snapshot.
  GetSnapshotResult({
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
    return <String, dynamic>{
      'allocatedStorage': allocatedStorage,
      'availabilityZone': availabilityZone,
      'dbInstanceIdentifier': ?dbInstanceIdentifier,
      'dbSnapshotArn': dbSnapshotArn,
      'dbSnapshotIdentifier': ?dbSnapshotIdentifier,
      'encrypted': encrypted,
      'engine': engine,
      'engineVersion': engineVersion,
      'id': id,
      'includePublic': ?includePublic,
      'includeShared': ?includeShared,
      'iops': iops,
      'kmsKeyId': kmsKeyId,
      'licenseModel': licenseModel,
      'mostRecent': ?mostRecent,
      'optionGroupName': optionGroupName,
      'originalSnapshotCreateTime': originalSnapshotCreateTime,
      'port': port,
      'region': region,
      'snapshotCreateTime': snapshotCreateTime,
      'snapshotType': ?snapshotType,
      'sourceDbSnapshotIdentifier': sourceDbSnapshotIdentifier,
      'sourceRegion': sourceRegion,
      'status': status,
      'storageType': storageType,
      'tags': tags,
      'vpcId': vpcId,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      allocatedStorage: map['allocatedStorage'] as int,
      availabilityZone: map['availabilityZone'] as String,
      dbInstanceIdentifier: (() {
        final guardedValue = map['dbInstanceIdentifier'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dbSnapshotArn: map['dbSnapshotArn'] as String,
      dbSnapshotIdentifier: (() {
        final guardedValue = map['dbSnapshotIdentifier'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      encrypted: map['encrypted'] as bool,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      includePublic: (() {
        final guardedValue = map['includePublic'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      includeShared: (() {
        final guardedValue = map['includeShared'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      iops: map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] as String,
      licenseModel: map['licenseModel'] as String,
      mostRecent: (() {
        final guardedValue = map['mostRecent'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      optionGroupName: map['optionGroupName'] as String,
      originalSnapshotCreateTime: map['originalSnapshotCreateTime'] as String,
      port: map['port'] as int,
      region: map['region'] as String,
      snapshotCreateTime: map['snapshotCreateTime'] as String,
      snapshotType: (() {
        final guardedValue = map['snapshotType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sourceDbSnapshotIdentifier: map['sourceDbSnapshotIdentifier'] as String,
      sourceRegion: map['sourceRegion'] as String,
      status: map['status'] as String,
      storageType: map['storageType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
