// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterHostGroupListNodeDiskInfo {
  /// The disk name.
  final pulumi.Input<String> device;
  /// The ID of the disk.
  final pulumi.Input<String> diskId;
  /// The disk name.
  final pulumi.Input<String> diskName;
  /// Disk capacity.
  final pulumi.Input<int> size;
  /// Disk type.
  final pulumi.Input<String> type;

  /// Creates a new [GetClustersClusterHostGroupListNodeDiskInfo].
  /// [device] The disk name.
  /// [diskId] The ID of the disk.
  /// [diskName] The disk name.
  /// [size] Disk capacity.
  /// [type] Disk type.
  GetClustersClusterHostGroupListNodeDiskInfo({
    required this.device,
    required this.diskId,
    required this.diskName,
    required this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'device': device,
      'diskId': diskId,
      'diskName': diskName,
      'size': size,
      'type': type,
    };
  }

  factory GetClustersClusterHostGroupListNodeDiskInfo.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterHostGroupListNodeDiskInfo(
      device: pulumi.Input.fromValue(map['device'] as String),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskName: pulumi.Input.fromValue(map['diskName'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

