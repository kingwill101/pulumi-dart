// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the disk information fo the Azure Large Instance
class DiskResponse {
  /// Specifies the size of an empty data disk in gigabytes.
  final pulumi.Input<int?>? diskSizeGB;
  /// Specifies the logical unit number of the data disk. This value is used to
  /// identify data disks within the VM and therefore must be unique for each data
  /// disk attached to a VM.
  final pulumi.Input<int> lun;
  /// The disk name.
  final pulumi.Input<String?>? name;

  /// Creates a new [DiskResponse].
  /// [diskSizeGB] Specifies the size of an empty data disk in gigabytes.
  /// [lun] Specifies the logical unit number of the data disk. This value is used to
  /// [name] The disk name.
  const DiskResponse({
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
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      lun: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['lun'])),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
