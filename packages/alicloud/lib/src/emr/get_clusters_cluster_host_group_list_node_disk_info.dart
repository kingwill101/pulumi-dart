// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterHostGroupListNodeDiskInfo {
  /// The disk name.
  final String device;
  /// The ID of the disk.
  final String diskId;
  /// The disk name.
  final String diskName;
  /// Disk capacity.
  final int size;
  /// Disk type.
  final String type;

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
      device: map['device'] as String,
      diskId: map['diskId'] as String,
      diskName: map['diskName'] as String,
      size: map['size'] as int,
      type: map['type'] as String,
    );
  }
}

