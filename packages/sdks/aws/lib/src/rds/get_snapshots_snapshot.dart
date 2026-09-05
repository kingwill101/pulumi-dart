// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshots_snapshot_tag_list.dart';

class GetSnapshotsSnapshot {
  /// Allocated storage size in gigabytes (GB).
  final pulumi.Input<int> allocatedStorage;
  /// Name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  final pulumi.Input<String> availabilityZone;
  /// Returns the list of snapshots created by the specific db_instance.
  final pulumi.Input<String> dbInstanceIdentifier;
  /// ARN for the DB snapshot.
  final pulumi.Input<String> dbSnapshotArn;
  /// Returns information on a specific snapshot_id.
  final pulumi.Input<String> dbSnapshotIdentifier;
  /// Whether the DB snapshot is encrypted.
  final pulumi.Input<bool> encrypted;
  /// Name of the database engine.
  final pulumi.Input<String> engine;
  /// Version of the database engine.
  final pulumi.Input<String> engineVersion;
  /// Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  final pulumi.Input<int> iops;
  /// ARN for the KMS encryption key.
  final pulumi.Input<String> kmsKeyId;
  /// License model information for the restored DB instance.
  final pulumi.Input<String> licenseModel;
  /// Option group name for the DB snapshot.
  final pulumi.Input<String> optionGroupName;
  /// Time when the snapshot was taken, in Universal Coordinated Time (UTC). Doesn't change when the snapshot is copied.
  final pulumi.Input<String> originalSnapshotCreateTime;
  /// Port that the database engine was listening on at the time of the snapshot.
  final pulumi.Input<int> port;
  /// Time when the snapshot was taken, in Universal Coordinated Time (UTC). Changes when the snapshot is copied.
  final pulumi.Input<String> snapshotCreateTime;
  /// Type of snapshots to be returned. If you don't specify a SnapshotType value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not included in the returned results by default. Possible values are `automated`, `manual`, `shared`, `public` and `awsbackup`.
  final pulumi.Input<String> snapshotType;
  /// DB snapshot ARN that the DB snapshot was copied from. Only set for cross-account or cross-region copies.
  final pulumi.Input<String> sourceDbSnapshotIdentifier;
  /// Region that the DB snapshot was created in or copied from.
  final pulumi.Input<String> sourceRegion;
  /// Status of this DB snapshot.
  final pulumi.Input<String> status;
  /// Storage type associated with the DB snapshot.
  final pulumi.Input<String> storageType;
  /// List of tags attached to the DB snapshot. See `tagList` below.
  final pulumi.Input<List<GetSnapshotsSnapshotTagList>> tagLists;
  /// ID of the VPC associated with the DB snapshot.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetSnapshotsSnapshot].
  /// [allocatedStorage] Allocated storage size in gigabytes (GB).
  /// [availabilityZone] Name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  /// [dbInstanceIdentifier] Returns the list of snapshots created by the specific db_instance.
  /// [dbSnapshotArn] ARN for the DB snapshot.
  /// [dbSnapshotIdentifier] Returns information on a specific snapshot_id.
  /// [encrypted] Whether the DB snapshot is encrypted.
  /// [engine] Name of the database engine.
  /// [engineVersion] Version of the database engine.
  /// [iops] Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  /// [kmsKeyId] ARN for the KMS encryption key.
  /// [licenseModel] License model information for the restored DB instance.
  /// [optionGroupName] Option group name for the DB snapshot.
  /// [originalSnapshotCreateTime] Time when the snapshot was taken, in Universal Coordinated Time (UTC). Doesn't change when the snapshot is copied.
  /// [port] Port that the database engine was listening on at the time of the snapshot.
  /// [snapshotCreateTime] Time when the snapshot was taken, in Universal Coordinated Time (UTC). Changes when the snapshot is copied.
  /// [snapshotType] Type of snapshots to be returned. If you don't specify a SnapshotType value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not included in the returned results by default. Possible values are `automated`, `manual`, `shared`, `public` and `awsbackup`.
  /// [sourceDbSnapshotIdentifier] DB snapshot ARN that the DB snapshot was copied from. Only set for cross-account or cross-region copies.
  /// [sourceRegion] Region that the DB snapshot was created in or copied from.
  /// [status] Status of this DB snapshot.
  /// [storageType] Storage type associated with the DB snapshot.
  /// [tagLists] List of tags attached to the DB snapshot. See `tagList` below.
  /// [vpcId] ID of the VPC associated with the DB snapshot.
  const GetSnapshotsSnapshot({
    required this.allocatedStorage,
    required this.availabilityZone,
    required this.dbInstanceIdentifier,
    required this.dbSnapshotArn,
    required this.dbSnapshotIdentifier,
    required this.encrypted,
    required this.engine,
    required this.engineVersion,
    required this.iops,
    required this.kmsKeyId,
    required this.licenseModel,
    required this.optionGroupName,
    required this.originalSnapshotCreateTime,
    required this.port,
    required this.snapshotCreateTime,
    required this.snapshotType,
    required this.sourceDbSnapshotIdentifier,
    required this.sourceRegion,
    required this.status,
    required this.storageType,
    required this.tagLists,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': allocatedStorage,
      'availabilityZone': availabilityZone,
      'dbInstanceIdentifier': dbInstanceIdentifier,
      'dbSnapshotArn': dbSnapshotArn,
      'dbSnapshotIdentifier': dbSnapshotIdentifier,
      'encrypted': encrypted,
      'engine': engine,
      'engineVersion': engineVersion,
      'iops': iops,
      'kmsKeyId': kmsKeyId,
      'licenseModel': licenseModel,
      'optionGroupName': optionGroupName,
      'originalSnapshotCreateTime': originalSnapshotCreateTime,
      'port': port,
      'snapshotCreateTime': snapshotCreateTime,
      'snapshotType': snapshotType,
      'sourceDbSnapshotIdentifier': sourceDbSnapshotIdentifier,
      'sourceRegion': sourceRegion,
      'status': status,
      'storageType': storageType,
      'tagLists': pulumi.Input.mapInputValue<List<GetSnapshotsSnapshotTagList>, List<Map<String, dynamic>>>(tagLists, (value) => pulumi.Input.encodeList<GetSnapshotsSnapshotTagList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': vpcId,
    };
  }

  factory GetSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsSnapshot(
      allocatedStorage: pulumi.Input.fromValue((map['allocatedStorage'] as num).toInt()),
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      dbInstanceIdentifier: pulumi.Input.fromValue(map['dbInstanceIdentifier'] as String),
      dbSnapshotArn: pulumi.Input.fromValue(map['dbSnapshotArn'] as String),
      dbSnapshotIdentifier: pulumi.Input.fromValue(map['dbSnapshotIdentifier'] as String),
      encrypted: pulumi.Input.fromValue(map['encrypted'] as bool),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      iops: pulumi.Input.fromValue((map['iops'] as num).toInt()),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      licenseModel: pulumi.Input.fromValue(map['licenseModel'] as String),
      optionGroupName: pulumi.Input.fromValue(map['optionGroupName'] as String),
      originalSnapshotCreateTime: pulumi.Input.fromValue(map['originalSnapshotCreateTime'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      snapshotCreateTime: pulumi.Input.fromValue(map['snapshotCreateTime'] as String),
      snapshotType: pulumi.Input.fromValue(map['snapshotType'] as String),
      sourceDbSnapshotIdentifier: pulumi.Input.fromValue(map['sourceDbSnapshotIdentifier'] as String),
      sourceRegion: pulumi.Input.fromValue(map['sourceRegion'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
      tagLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSnapshotsSnapshotTagList>(map['tagLists']!, (value) => GetSnapshotsSnapshotTagList.fromMap((value as Map).cast<String, dynamic>()))),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
