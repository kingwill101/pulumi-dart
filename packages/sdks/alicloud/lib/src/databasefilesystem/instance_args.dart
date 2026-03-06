// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_ecs_list.dart';

/// {@template pulumi_databasefilesystem_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_databasefilesystem_instance_instance_args_doc}
class InstanceArgs {
  /// The number of CPU cores and the upper limit of memory used by the database file storage instance.
  final pulumi.Input<String>? advancedFeatures;
  /// Category of database file system.
  final pulumi.Input<String> category;
  /// Whether to delete the original snapshot after creating DBFS using the snapshot.
  final pulumi.Input<bool>? deleteSnapshot;
  /// The collection of ECS instances mounted to the Database file system. See `ecs_list` below.  **NOTE:** Field 'ecs_list' has been deprecated from provider version 1.156.0 and it will be removed in the future version. Please use the new resource 'alicloud_dbfs_instance_attachment' to attach ECS and DBFS. See `ecs_list` below.
  final pulumi.Input<List<InstanceEcsList>>? ecsLists;
  /// Whether to create DBFS in RAID mode. If created in RAID mode, the capacity is at least 66GB.Valid values: true or false. Default value: false.
  final pulumi.Input<bool>? enableRaid;
  /// Whether to encrypt DBFS.Valid values: true or false. Default value: false.
  final pulumi.Input<bool>? encryption;
  /// Database file system name.
  final pulumi.Input<String>? fsName;
  /// . Field 'instance_name' has been deprecated from provider version 1.212.0. New field 'fs_name' instead.
  final pulumi.Input<String>? instanceName;
  /// Instance type. Value range:
  /// - dbfs.small
  /// - dbfs.medium
  /// - dbfs.large (default)
  final pulumi.Input<String>? instanceType;
  /// The ID of the KMS key used by DBFS.
  final pulumi.Input<String>? kmsKeyId;
  /// When you create a DBFS instance, set the performance level of the DBFS instance. Value range:
  /// - PL0: single disk maximum random read-write IOPS 10000
  /// - PL1: highest random read-write IOPS 50000 per disk (default)
  /// - PL2: single disk maximum random read-write IOPS 100000
  /// - PL3: single disk maximum random read-write IOPS 1 million.
  final pulumi.Input<String>? performanceLevel;
  /// Number of strips. Required when the EnableRaid parameter is true.Value range: Currently, only 8 stripes are supported.
  final pulumi.Input<int>? raidStripeUnitNumber;
  /// Size of database file system, unit GiB.
  final pulumi.Input<int> size;
  /// The ID of the snapshot used to create the DBFS instance.
  final pulumi.Input<String>? snapshotId;
  /// A mapping of tags to assign to the resource.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<Map<String, String>>? tags;
  /// The usage scenario of DBFS. Value range:
  /// - MySQL 5.7
  /// - PostgreSQL
  /// - MongoDB.
  final pulumi.Input<String>? usedScene;
  /// The ID of the zone to which the database file system belongs.
  final pulumi.Input<String> zoneId;

  /// Creates a new [InstanceArgs].
  /// [advancedFeatures] The number of CPU cores and the upper limit of memory used by the database file storage instance.
  /// [category] Category of database file system.
  /// [deleteSnapshot] Whether to delete the original snapshot after creating DBFS using the snapshot.
  /// [ecsLists] The collection of ECS instances mounted to the Database file system. See `ecs_list` below.  **NOTE:** Field 'ecs_list' has been deprecated from provider version 1.156.0 and it will be removed in the future version. Please use the new resource 'alicloud_dbfs_instance_attachment' to attach ECS and DBFS. See `ecs_list` below.
  /// [enableRaid] Whether to create DBFS in RAID mode. If created in RAID mode, the capacity is at least 66GB.Valid values: true or false. Default value: false.
  /// [encryption] Whether to encrypt DBFS.Valid values: true or false. Default value: false.
  /// [fsName] Database file system name.
  /// [instanceName] . Field 'instance_name' has been deprecated from provider version 1.212.0. New field 'fs_name' instead.
  /// [instanceType] Instance type. Value range:
  /// [kmsKeyId] The ID of the KMS key used by DBFS.
  /// [performanceLevel] When you create a DBFS instance, set the performance level of the DBFS instance. Value range:
  /// [raidStripeUnitNumber] Number of strips. Required when the EnableRaid parameter is true.Value range: Currently, only 8 stripes are supported.
  /// [size] Size of database file system, unit GiB.
  /// [snapshotId] The ID of the snapshot used to create the DBFS instance.
  /// [tags] A mapping of tags to assign to the resource.
  /// [usedScene] The usage scenario of DBFS. Value range:
  /// [zoneId] The ID of the zone to which the database file system belongs.
  const InstanceArgs({
    this.advancedFeatures,
    required this.category,
    this.deleteSnapshot,
    this.ecsLists,
    this.enableRaid,
    this.encryption,
    this.fsName,
    this.instanceName,
    this.instanceType,
    this.kmsKeyId,
    this.performanceLevel,
    this.raidStripeUnitNumber,
    required this.size,
    this.snapshotId,
    this.tags,
    this.usedScene,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedFeatures': ?advancedFeatures,
      'category': category,
      'deleteSnapshot': ?deleteSnapshot,
      'ecsLists': ?pulumi.Input.mapOptionalInputValue<List<InstanceEcsList>, List<Map<String, dynamic>>>(ecsLists, (value) => pulumi.Input.encodeList<InstanceEcsList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableRaid': ?enableRaid,
      'encryption': ?encryption,
      'fsName': ?fsName,
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
      'kmsKeyId': ?kmsKeyId,
      'performanceLevel': ?performanceLevel,
      'raidStripeUnitNumber': ?raidStripeUnitNumber,
      'size': size,
      'snapshotId': ?snapshotId,
      'tags': ?tags,
      'usedScene': ?usedScene,
      'zoneId': zoneId,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      advancedFeatures: (() { final guardedValue = map['advancedFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      category: pulumi.Input.fromValue(map['category'] as String),
      deleteSnapshot: (() { final guardedValue = map['deleteSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ecsLists: (() { final guardedValue = map['ecsLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceEcsList>(guardedValue, (value) => InstanceEcsList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableRaid: (() { final guardedValue = map['enableRaid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fsName: (() { final guardedValue = map['fsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceLevel: (() { final guardedValue = map['performanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      raidStripeUnitNumber: (() { final guardedValue = map['raidStripeUnitNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      size: pulumi.Input.fromValue(map['size'] as int),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      usedScene: (() { final guardedValue = map['usedScene']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

