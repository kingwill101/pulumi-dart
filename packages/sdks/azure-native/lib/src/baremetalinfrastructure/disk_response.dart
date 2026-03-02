// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the disk information fo the Azure Bare Metal Instance
class DiskResponse {
  /// Specifies the size of an empty data disk in gigabytes.
  final pulumi.Input<int>? diskSizeGB;
  /// Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM.
  final pulumi.Input<int> lun;
  /// The disk name.
  final pulumi.Input<String>? name;

  /// Creates a new [DiskResponse].
  /// [diskSizeGB] Specifies the size of an empty data disk in gigabytes.
  /// [lun] Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM.
  /// [name] The disk name.
  DiskResponse({
    this.diskSizeGB,
    required this.lun,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGB': ?diskSizeGB,
      'lun': lun,
      'name': ?name,
    };
  }

  factory DiskResponse.fromMap(Map<String, dynamic> map) {
    return DiskResponse(
      diskSizeGB: map['diskSizeGB'] == null ? null : (map['diskSizeGB']! as int).input(),
      lun: (map['lun'] as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

