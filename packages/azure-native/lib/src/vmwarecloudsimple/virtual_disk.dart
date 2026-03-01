// ignore_for_file: unused_element, unnecessary_cast

import 'disk_independence_mode.dart';

/// Virtual disk model
class VirtualDisk {
  /// Disk's Controller id
  final String controllerId;
  /// Disk's independence mode type
  final DiskIndependenceMode independenceMode;
  /// Disk's total size
  final int totalSize;
  /// Disk's id
  final String? virtualDiskId;

  /// Creates a new [VirtualDisk].
  /// [controllerId] Disk's Controller id
  /// [independenceMode] Disk's independence mode type
  /// [totalSize] Disk's total size
  /// [virtualDiskId] Disk's id
  VirtualDisk({
    required this.controllerId,
    required this.independenceMode,
    required this.totalSize,
    this.virtualDiskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerId': controllerId,
      'independenceMode': independenceMode.value,
      'totalSize': totalSize,
      'virtualDiskId': ?virtualDiskId,
    };
  }

  factory VirtualDisk.fromMap(Map<String, dynamic> map) {
    return VirtualDisk(
      controllerId: map['controllerId'] as String,
      independenceMode: DiskIndependenceMode.fromValue(map['independenceMode'] as String),
      totalSize: map['totalSize'] as int,
      virtualDiskId: map['virtualDiskId'] == null ? null : map['virtualDiskId'] as String,
    );
  }
}

