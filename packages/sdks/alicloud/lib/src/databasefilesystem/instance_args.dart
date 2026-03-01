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
  InstanceArgs({
    pulumi.Output<String>? advancedFeatures,
    required pulumi.Output<String> category,
    pulumi.Output<bool>? deleteSnapshot,
    pulumi.Output<List<InstanceEcsList>>? ecsLists,
    pulumi.Output<bool>? enableRaid,
    pulumi.Output<bool>? encryption,
    pulumi.Output<String>? fsName,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? performanceLevel,
    pulumi.Output<int>? raidStripeUnitNumber,
    required pulumi.Output<int> size,
    pulumi.Output<String>? snapshotId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? usedScene,
    required pulumi.Output<String> zoneId,
  }) :
      advancedFeatures = pulumi.Input.asOptionalInput<String>(advancedFeatures),
      category = pulumi.Input.asInput<String>(category),
      deleteSnapshot = pulumi.Input.asOptionalInput<bool>(deleteSnapshot),
      ecsLists = pulumi.Input.asOptionalInput<List<InstanceEcsList>>(ecsLists),
      enableRaid = pulumi.Input.asOptionalInput<bool>(enableRaid),
      encryption = pulumi.Input.asOptionalInput<bool>(encryption),
      fsName = pulumi.Input.asOptionalInput<String>(fsName),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      performanceLevel = pulumi.Input.asOptionalInput<String>(performanceLevel),
      raidStripeUnitNumber = pulumi.Input.asOptionalInput<int>(raidStripeUnitNumber),
      size = pulumi.Input.asInput<int>(size),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      usedScene = pulumi.Input.asOptionalInput<String>(usedScene),
      zoneId = pulumi.Input.asInput<String>(zoneId);

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
      advancedFeatures: map['advancedFeatures'] == null ? null : pulumi.Output.create<String>(map['advancedFeatures'] as String),
      category: pulumi.Output.create<String>(map['category'] as String),
      deleteSnapshot: map['deleteSnapshot'] == null ? null : pulumi.Output.create<bool>(map['deleteSnapshot'] as bool),
      ecsLists: map['ecsLists'] == null ? null : pulumi.Output.create<List<InstanceEcsList>>(pulumi.Input.decodeList<InstanceEcsList>(map['ecsLists'], (value) => InstanceEcsList.fromMap((value as Map).cast<String, dynamic>()))),
      enableRaid: map['enableRaid'] == null ? null : pulumi.Output.create<bool>(map['enableRaid'] as bool),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<bool>(map['encryption'] as bool),
      fsName: map['fsName'] == null ? null : pulumi.Output.create<String>(map['fsName'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      performanceLevel: map['performanceLevel'] == null ? null : pulumi.Output.create<String>(map['performanceLevel'] as String),
      raidStripeUnitNumber: map['raidStripeUnitNumber'] == null ? null : pulumi.Output.create<int>(map['raidStripeUnitNumber'] as int),
      size: pulumi.Output.create<int>(map['size'] as int),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      usedScene: map['usedScene'] == null ? null : pulumi.Output.create<String>(map['usedScene'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

