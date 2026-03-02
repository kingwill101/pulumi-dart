// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk.dart';

/// Definition of Hardware
class Hardware {
  /// CPU count of the Instance.
  final pulumi.Input<int>? cpuCount;
  /// Disks attached to the Instance.
  final pulumi.Input<List<Disk>>? disks;
  /// RAM Size of the Instance.
  final pulumi.Input<int>? ramSizeInGb;

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
      'disks': ?pulumi.Input.mapOptionalInputValue<List<Disk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<Disk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ramSizeInGb': ?ramSizeInGb,
    };
  }

  factory Hardware.fromMap(Map<String, dynamic> map) {
    return Hardware(
      cpuCount: map['cpuCount'] == null ? null : (map['cpuCount'] as int).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<Disk>(map['disks'], (value) => Disk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ramSizeInGb: map['ramSizeInGb'] == null ? null : (map['ramSizeInGb'] as int).input(),
    );
  }
}

