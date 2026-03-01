// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk.dart';

/// Definition of Hardware
class Hardware {
  /// CPU count of the Instance.
  final int? cpuCount;
  /// Disks attached to the Instance.
  final List<Disk>? disks;
  /// RAM Size of the Instance.
  final int? ramSizeInGb;

  /// Creates a new [Hardware].
  /// [cpuCount] CPU count of the Instance.
  /// [disks] Disks attached to the Instance.
  /// [ramSizeInGb] RAM Size of the Instance.
  Hardware({
    this.cpuCount,
    this.disks,
    this.ramSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': ?cpuCount,
      'disks': ?disks == null ? null : pulumi.Input.encodeList<Disk, Map<String, dynamic>>(disks!, (value) => value.toMap()),
      'ramSizeInGb': ?ramSizeInGb,
    };
  }

  factory Hardware.fromMap(Map<String, dynamic> map) {
    return Hardware(
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as int,
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<Disk>(map['disks'], (value) => Disk.fromMap((value as Map).cast<String, dynamic>())),
      ramSizeInGb: map['ramSizeInGb'] == null ? null : map['ramSizeInGb'] as int,
    );
  }
}

