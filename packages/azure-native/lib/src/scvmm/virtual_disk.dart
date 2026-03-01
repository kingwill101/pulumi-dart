// ignore_for_file: unused_element, unnecessary_cast

import 'storage_qo_spolicy_details.dart';

/// Virtual disk model
class VirtualDisk {
  /// Gets or sets the disk bus.
  final int? bus;
  /// Gets or sets the disk bus type.
  final String? busType;
  /// Gets or sets a value indicating diff disk.
  final String? createDiffDisk;
  /// Gets or sets the disk id.
  final String? diskId;
  /// Gets or sets the disk total size.
  final int? diskSizeGB;
  /// Gets or sets the disk lun.
  final int? lun;
  /// Gets or sets the name of the disk.
  final String? name;
  /// The QoS policy for the disk.
  final StorageQoSPolicyDetails? storageQoSPolicy;
  /// Gets or sets the disk id in the template.
  final String? templateDiskId;
  /// Gets or sets the disk vhd type.
  final String? vhdType;

  /// Creates a new [VirtualDisk].
  /// [bus] Gets or sets the disk bus.
  /// [busType] Gets or sets the disk bus type.
  /// [createDiffDisk] Gets or sets a value indicating diff disk.
  /// [diskId] Gets or sets the disk id.
  /// [diskSizeGB] Gets or sets the disk total size.
  /// [lun] Gets or sets the disk lun.
  /// [name] Gets or sets the name of the disk.
  /// [storageQoSPolicy] The QoS policy for the disk.
  /// [templateDiskId] Gets or sets the disk id in the template.
  /// [vhdType] Gets or sets the disk vhd type.
  VirtualDisk({
    this.bus,
    this.busType,
    this.createDiffDisk,
    this.diskId,
    this.diskSizeGB,
    this.lun,
    this.name,
    this.storageQoSPolicy,
    this.templateDiskId,
    this.vhdType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bus': ?bus,
      'busType': ?busType,
      'createDiffDisk': ?createDiffDisk,
      'diskId': ?diskId,
      'diskSizeGB': ?diskSizeGB,
      'lun': ?lun,
      'name': ?name,
      'storageQoSPolicy': ?storageQoSPolicy == null ? null : storageQoSPolicy!.toMap(),
      'templateDiskId': ?templateDiskId,
      'vhdType': ?vhdType,
    };
  }

  factory VirtualDisk.fromMap(Map<String, dynamic> map) {
    return VirtualDisk(
      bus: map['bus'] == null ? null : map['bus'] as int,
      busType: map['busType'] == null ? null : map['busType'] as String,
      createDiffDisk: map['createDiffDisk'] == null ? null : map['createDiffDisk'] as String,
      diskId: map['diskId'] == null ? null : map['diskId'] as String,
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      lun: map['lun'] == null ? null : map['lun'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      storageQoSPolicy: map['storageQoSPolicy'] == null ? null : StorageQoSPolicyDetails.fromMap((map['storageQoSPolicy'] as Map).cast<String, dynamic>()),
      templateDiskId: map['templateDiskId'] == null ? null : map['templateDiskId'] as String,
      vhdType: map['vhdType'] == null ? null : map['vhdType'] as String,
    );
  }
}

