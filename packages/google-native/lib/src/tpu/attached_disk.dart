// ignore_for_file: unused_element, unnecessary_cast

import 'attached_disk_mode.dart';

/// A node-attached disk resource. Next ID: 8;
class AttachedDisk {
  /// The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
  final AttachedDiskMode? mode;
  /// Specifies the full path to an existing disk. For example: "projects/my-project/zones/us-central1-c/disks/my-disk".
  final String? sourceDisk;

  /// Creates a new [AttachedDisk].
  /// [mode] The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
  /// [sourceDisk] Specifies the full path to an existing disk. For example: "projects/my-project/zones/us-central1-c/disks/my-disk".
  AttachedDisk({
    this.mode,
    this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode == null ? null : mode!.value,
      'sourceDisk': ?sourceDisk,
    };
  }

  factory AttachedDisk.fromMap(Map<String, dynamic> map) {
    return AttachedDisk(
      mode: map['mode'] == null ? null : AttachedDiskMode.fromValue(map['mode'] as String),
      sourceDisk: map['sourceDisk'] == null ? null : map['sourceDisk'] as String,
    );
  }
}

