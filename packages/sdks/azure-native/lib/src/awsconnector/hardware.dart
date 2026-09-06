// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk.dart';

/// Definition of Hardware
class Hardware {
  /// CPU count of the Instance.
  final pulumi.Input<int?>? cpuCount;
  /// Disks attached to the Instance.
  final pulumi.Input<List<Disk>?>? disks;
  /// RAM Size of the Instance.
  final pulumi.Input<int?>? ramSizeInGb;

  /// Creates a new [Hardware].
  /// [cpuCount] CPU count of the Instance.
  /// [disks] Disks attached to the Instance.
  /// [ramSizeInGb] RAM Size of the Instance.
  const Hardware({
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
      cpuCount: (() { final guardedValue = map['cpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Disk>(guardedValue, (value) => Disk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ramSizeInGb: (() { final guardedValue = map['ramSizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
