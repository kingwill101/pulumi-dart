// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSnapshot.
class GetSnapshotResult {
  /// Allocated storage size in gigabytes (GB).
  final int? allocatedStorage;
  /// Name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  final String? availabilityZone;
  final String? dbInstanceIdentifier;
  /// ARN for the DB snapshot.
  final String? dbSnapshotArn;
  final String? dbSnapshotIdentifier;
  /// Whether the DB snapshot is encrypted.
  final bool? encrypted;
  /// Name of the database engine.
  final String? engine;
  /// Version of the database engine.
  final String? engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? includePublic;
  final bool? includeShared;
  /// Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  final int? iops;
  /// ARN for the KMS encryption key.
  final String? kmsKeyId;
  /// License model information for the restored DB instance.
  final String? licenseModel;
  final bool? mostRecent;
  /// Provides the option group name for the DB snapshot.
  final String? optionGroupName;
  /// Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC). Doesn't change when the snapshot is copied.
  final String? originalSnapshotCreateTime;
  final int? port;
  final String? region;
  /// Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC). Changes for the copy when the snapshot is copied.
  final String? snapshotCreateTime;
  final String? snapshotType;
  /// DB snapshot ARN that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy.
  final String? sourceDbSnapshotIdentifier;
  /// Region that the DB snapshot was created in or copied from.
  final String? sourceRegion;
  /// Status of this DB snapshot.
  final String? status;
  /// Storage type associated with DB snapshot.
  final String? storageType;
  final Map<String, String>? tags;
  /// ID of the VPC associated with the DB snapshot.
  final String? vpcId;

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
  /// [port] Optional.
  /// [region] Optional.
  /// [snapshotCreateTime] Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC). Changes for the copy when the snapshot is copied.
  /// [snapshotType] Optional.
  /// [sourceDbSnapshotIdentifier] DB snapshot ARN that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy.
  /// [sourceRegion] Region that the DB snapshot was created in or copied from.
  /// [status] Status of this DB snapshot.
  /// [storageType] Storage type associated with DB snapshot.
  /// [tags] Optional.
  /// [vpcId] ID of the VPC associated with the DB snapshot.
  const GetSnapshotResult({
    this.allocatedStorage,
    this.availabilityZone,
    this.dbInstanceIdentifier,
    this.dbSnapshotArn,
    this.dbSnapshotIdentifier,
    this.encrypted,
    this.engine,
    this.engineVersion,
    this.id,
    this.includePublic,
    this.includeShared,
    this.iops,
    this.kmsKeyId,
    this.licenseModel,
    this.mostRecent,
    this.optionGroupName,
    this.originalSnapshotCreateTime,
    this.port,
    this.region,
    this.snapshotCreateTime,
    this.snapshotType,
    this.sourceDbSnapshotIdentifier,
    this.sourceRegion,
    this.status,
    this.storageType,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'availabilityZone': ?availabilityZone,
      'dbInstanceIdentifier': ?dbInstanceIdentifier,
      'dbSnapshotArn': ?dbSnapshotArn,
      'dbSnapshotIdentifier': ?dbSnapshotIdentifier,
      'encrypted': ?encrypted,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'id': ?id,
      'includePublic': ?includePublic,
      'includeShared': ?includeShared,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'licenseModel': ?licenseModel,
      'mostRecent': ?mostRecent,
      'optionGroupName': ?optionGroupName,
      'originalSnapshotCreateTime': ?originalSnapshotCreateTime,
      'port': ?port,
      'region': ?region,
      'snapshotCreateTime': ?snapshotCreateTime,
      'snapshotType': ?snapshotType,
      'sourceDbSnapshotIdentifier': ?sourceDbSnapshotIdentifier,
      'sourceRegion': ?sourceRegion,
      'status': ?status,
      'storageType': ?storageType,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      allocatedStorage: (() { final guardedValue = map['allocatedStorage']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbInstanceIdentifier: (() { final guardedValue = map['dbInstanceIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbSnapshotArn: (() { final guardedValue = map['dbSnapshotArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbSnapshotIdentifier: (() { final guardedValue = map['dbSnapshotIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includePublic: (() { final guardedValue = map['includePublic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includeShared: (() { final guardedValue = map['includeShared']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      optionGroupName: (() { final guardedValue = map['optionGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      originalSnapshotCreateTime: (() { final guardedValue = map['originalSnapshotCreateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotCreateTime: (() { final guardedValue = map['snapshotCreateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDbSnapshotIdentifier: (() { final guardedValue = map['sourceDbSnapshotIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceRegion: (() { final guardedValue = map['sourceRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
