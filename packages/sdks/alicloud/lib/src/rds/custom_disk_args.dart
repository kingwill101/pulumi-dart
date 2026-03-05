// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_custom_disk_custom_disk_args_doc}
/// The set of arguments for CustomDisk.
/// {@endtemplate}
/// {@macro pulumi_rds_custom_disk_custom_disk_args_doc}
class CustomDiskArgs {
  /// Whether to pay automatically. Value range:
  final pulumi.Input<bool>? autoPay;
  /// Whether to automatically renew. This parameter is passed in only when you create a data disk. Valid values:
  final pulumi.Input<bool>? autoRenew;
  /// The disk description. It must be 2 to 256 characters in length and cannot start with 'http:// 'or 'https.
  /// Default value: empty.
  final pulumi.Input<String>? description;
  /// The type of the data disk. Value range:
  final pulumi.Input<String> diskCategory;
  /// The disk name. It can be 2 to 128 characters in length. It supports letters in Unicode (including English, Chinese, and numbers). Can contain a colon (:), an underscore (_), a period (.), or a dash (-).
  /// Default value: empty.
  final pulumi.Input<String>? diskName;
  /// Whether to pre-check the instance creation operation. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The Payment type. Only `Postpaid`: Pay-As-You-Go is supported.
  final pulumi.Input<String>? instanceChargeType;
  /// When creating an ESSD cloud disk, set the performance level of the disk. Value range:
  /// - `PL0`: The maximum random read/write IOPS 10000 for a single disk.
  /// - `PL1` (default): The maximum number of random read/write IOPS 50000 for a single disk.
  /// - `PL2`: maximum random read/write IOPS 100000 for a single disk.
  /// - `PL3`: The maximum random read/write IOPS 1 million for a single disk.
  ///
  /// For more information about how to select an ESSD performance level, see ESSD cloud disk.
  final pulumi.Input<String>? performanceLevel;
  /// Reserved parameters, no need to fill in.
  final pulumi.Input<int>? period;
  /// Reserved parameters, no need to fill in.
  final pulumi.Input<String>? periodUnit;
  /// Capacity size. Unit: GiB. You must pass in a parameter value for this parameter. Value range:
  final pulumi.Input<int> size;
  /// The snapshot used to create the cloud disk. Snapshots made on or before July 15, 2013 cannot be used to create cloud disks. The 'SnapshotId' parameter and the 'Size' parameter have the following limitations:
  /// - If the snapshot capacity corresponding to the 'SnapshotId' parameter is greater than the set 'Size' parameter value, the actual size of the cloud disk created is the size of the specified snapshot.
  /// - If the snapshot capacity corresponding to the 'SnapshotId' parameter is less than the set 'Size' parameter value, the size of the cloud disk created is the specified 'Size' parameter value.
  /// - Snapshots are not supported for creating elastic temporary disks.
  final pulumi.Input<String>? snapshotId;
  /// The method of expanding the disk. Value range:
  /// offline (default): offline expansion. After the expansion, the instance must be restarted to take effect.
  /// online: online expansion, which can be completed without restarting the instance.
  final pulumi.Input<String>? type;
  /// The zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [CustomDiskArgs].
  /// [autoPay] Whether to pay automatically. Value range:
  /// [autoRenew] Whether to automatically renew. This parameter is passed in only when you create a data disk. Valid values:
  /// [description] The disk description. It must be 2 to 256 characters in length and cannot start with 'http:// 'or 'https.
  /// [diskCategory] The type of the data disk. Value range:
  /// [diskName] The disk name. It can be 2 to 128 characters in length. It supports letters in Unicode (including English, Chinese, and numbers). Can contain a colon (:), an underscore (_), a period (.), or a dash (-).
  /// [dryRun] Whether to pre-check the instance creation operation. Valid values:
  /// [instanceChargeType] The Payment type. Only `Postpaid`: Pay-As-You-Go is supported.
  /// [performanceLevel] When creating an ESSD cloud disk, set the performance level of the disk. Value range:
  /// [period] Reserved parameters, no need to fill in.
  /// [periodUnit] Reserved parameters, no need to fill in.
  /// [size] Capacity size. Unit: GiB. You must pass in a parameter value for this parameter. Value range:
  /// [snapshotId] The snapshot used to create the cloud disk. Snapshots made on or before July 15, 2013 cannot be used to create cloud disks. The 'SnapshotId' parameter and the 'Size' parameter have the following limitations:
  /// [type] The method of expanding the disk. Value range:
  /// [zoneId] The zone ID.
  CustomDiskArgs({
    this.autoPay,
    this.autoRenew,
    this.description,
    required this.diskCategory,
    this.diskName,
    this.dryRun,
    this.instanceChargeType,
    this.performanceLevel,
    this.period,
    this.periodUnit,
    required this.size,
    this.snapshotId,
    this.type,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'description': ?description,
      'diskCategory': diskCategory,
      'diskName': ?diskName,
      'dryRun': ?dryRun,
      'instanceChargeType': ?instanceChargeType,
      'performanceLevel': ?performanceLevel,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'size': size,
      'snapshotId': ?snapshotId,
      'type': ?type,
      'zoneId': zoneId,
    };
  }

  factory CustomDiskArgs.fromMap(Map<String, dynamic> map) {
    return CustomDiskArgs(
      autoPay: (() { final guardedValue = map['autoPay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskCategory: pulumi.Input.fromValue(map['diskCategory'] as String),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceLevel: (() { final guardedValue = map['performanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: pulumi.Input.fromValue(map['size'] as int),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

