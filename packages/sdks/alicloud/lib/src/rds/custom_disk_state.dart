// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomDisk resources.
class CustomDiskState {
  /// Whether to pay automatically. Value range:
  final pulumi.Input<bool>? autoPay;
  /// Whether to automatically renew. This parameter is passed in only when you create a data disk. Valid values:
  final pulumi.Input<bool>? autoRenew;
  /// Creation time.
  final pulumi.Input<String>? createTime;
  /// The disk description. It must be 2 to 256 characters in length and cannot start with 'http:// 'or 'https.
  /// Default value: empty.
  final pulumi.Input<String>? description;
  /// The type of the data disk. Value range:
  final pulumi.Input<String>? diskCategory;
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
  /// The region ID. You can view the region ID through the DescribeRegions interface.
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group to which the disk belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// Capacity size. Unit: GiB. You must pass in a parameter value for this parameter. Value range:
  final pulumi.Input<int>? size;
  /// The snapshot used to create the cloud disk. Snapshots made on or before July 15, 2013 cannot be used to create cloud disks. The 'SnapshotId' parameter and the 'Size' parameter have the following limitations:
  /// - If the snapshot capacity corresponding to the 'SnapshotId' parameter is greater than the set 'Size' parameter value, the actual size of the cloud disk created is the size of the specified snapshot.
  /// - If the snapshot capacity corresponding to the 'SnapshotId' parameter is less than the set 'Size' parameter value, the size of the cloud disk created is the specified 'Size' parameter value.
  /// - Snapshots are not supported for creating elastic temporary disks.
  final pulumi.Input<String>? snapshotId;
  /// Disk status. Value Description:_use: In use.
  final pulumi.Input<String>? status;
  /// The method of expanding the disk. Value range:
  /// offline (default): offline expansion. After the expansion, the instance must be restarted to take effect.
  /// online: online expansion, which can be completed without restarting the instance.
  final pulumi.Input<String>? type;
  /// The zone ID.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [CustomDiskState].
  /// [autoPay] Whether to pay automatically. Value range:
  /// [autoRenew] Whether to automatically renew. This parameter is passed in only when you create a data disk. Valid values:
  /// [createTime] Creation time.
  /// [description] The disk description. It must be 2 to 256 characters in length and cannot start with 'http:// 'or 'https.
  /// [diskCategory] The type of the data disk. Value range:
  /// [diskName] The disk name. It can be 2 to 128 characters in length. It supports letters in Unicode (including English, Chinese, and numbers). Can contain a colon (:), an underscore (_), a period (.), or a dash (-).
  /// [dryRun] Whether to pre-check the instance creation operation. Valid values:
  /// [instanceChargeType] The Payment type. Only `Postpaid`: Pay-As-You-Go is supported.
  /// [performanceLevel] When creating an ESSD cloud disk, set the performance level of the disk. Value range:
  /// [period] Reserved parameters, no need to fill in.
  /// [periodUnit] Reserved parameters, no need to fill in.
  /// [regionId] The region ID. You can view the region ID through the DescribeRegions interface.
  /// [resourceGroupId] The ID of the resource group to which the disk belongs.
  /// [size] Capacity size. Unit: GiB. You must pass in a parameter value for this parameter. Value range:
  /// [snapshotId] The snapshot used to create the cloud disk. Snapshots made on or before July 15, 2013 cannot be used to create cloud disks. The 'SnapshotId' parameter and the 'Size' parameter have the following limitations:
  /// [status] Disk status. Value Description:_use: In use.
  /// [type] The method of expanding the disk. Value range:
  /// [zoneId] The zone ID.
  CustomDiskState({
    this.autoPay,
    this.autoRenew,
    this.createTime,
    this.description,
    this.diskCategory,
    this.diskName,
    this.dryRun,
    this.instanceChargeType,
    this.performanceLevel,
    this.period,
    this.periodUnit,
    this.regionId,
    this.resourceGroupId,
    this.size,
    this.snapshotId,
    this.status,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'createTime': ?createTime,
      'description': ?description,
      'diskCategory': ?diskCategory,
      'diskName': ?diskName,
      'dryRun': ?dryRun,
      'instanceChargeType': ?instanceChargeType,
      'performanceLevel': ?performanceLevel,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'size': ?size,
      'snapshotId': ?snapshotId,
      'status': ?status,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory CustomDiskState.fromMap(Map<String, dynamic> map) {
    return CustomDiskState(
      autoPay: map['autoPay'] == null ? null : (map['autoPay']! as bool).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew']! as bool).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      diskCategory: map['diskCategory'] == null ? null : (map['diskCategory']! as String).input(),
      diskName: map['diskName'] == null ? null : (map['diskName']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType']! as String).input(),
      performanceLevel: map['performanceLevel'] == null ? null : (map['performanceLevel']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

