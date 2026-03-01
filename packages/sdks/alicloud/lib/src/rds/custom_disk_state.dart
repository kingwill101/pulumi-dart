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
    pulumi.Output<bool>? autoPay,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? diskCategory,
    pulumi.Output<String>? diskName,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? performanceLevel,
    pulumi.Output<int>? period,
    pulumi.Output<String>? periodUnit,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? size,
    pulumi.Output<String>? snapshotId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
    pulumi.Output<String>? zoneId,
  }) :
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskCategory = pulumi.Input.asOptionalInput<String>(diskCategory),
      diskName = pulumi.Input.asOptionalInput<String>(diskName),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      performanceLevel = pulumi.Input.asOptionalInput<String>(performanceLevel),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodUnit = pulumi.Input.asOptionalInput<String>(periodUnit),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      size = pulumi.Input.asOptionalInput<int>(size),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskCategory: map['diskCategory'] == null ? null : pulumi.Output.create<String>(map['diskCategory'] as String),
      diskName: map['diskName'] == null ? null : pulumi.Output.create<String>(map['diskName'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      performanceLevel: map['performanceLevel'] == null ? null : pulumi.Output.create<String>(map['performanceLevel'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      periodUnit: map['periodUnit'] == null ? null : pulumi.Output.create<String>(map['periodUnit'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

