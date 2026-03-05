// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk.dart';

/// Ephemeral Disk Pool Properties
class EphemeralDisk {
  /// Only required if individual disk selection is desired. Path to disk, e.g. &lt;nodename&gt;:/dev/sda or WWN. Supports specifying multiple disks (same syntax as tags).
  final pulumi.Input<List<Disk>>? disks;
  /// The number of data copies. Default 3.
  final pulumi.Input<double>? replicas;

  /// Creates a new [EphemeralDisk].
  /// [disks] Only required if individual disk selection is desired. Path to disk, e.g. &lt;nodename&gt;:/dev/sda or WWN. Supports specifying multiple disks (same syntax as tags).
  /// [replicas] The number of data copies. Default 3.
  EphemeralDisk({
    this.disks,
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?pulumi.Input.mapOptionalInputValue<List<Disk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<Disk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicas': ?replicas,
    };
  }

  factory EphemeralDisk.fromMap(Map<String, dynamic> map) {
    return EphemeralDisk(
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Disk>(guardedValue, (value) => Disk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

