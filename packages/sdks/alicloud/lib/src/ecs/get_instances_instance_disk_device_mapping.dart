// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstanceDiskDeviceMapping {
  /// Cloud disk category.
  final String category;
  /// Device information of the created disk: such as /dev/xvdb.
  final String device;
  /// The ID of the Disk.
  final String diskId;
  /// The name of the Disk.
  final String diskName;
  /// Size of the created disk.
  final int size;
  /// Cloud disk type: system disk or data disk.
  final String type;

  /// Creates a new [GetInstancesInstanceDiskDeviceMapping].
  /// [category] Cloud disk category.
  /// [device] Device information of the created disk: such as /dev/xvdb.
  /// [diskId] The ID of the Disk.
  /// [diskName] The name of the Disk.
  /// [size] Size of the created disk.
  /// [type] Cloud disk type: system disk or data disk.
  GetInstancesInstanceDiskDeviceMapping({
    required this.category,
    required this.device,
    required this.diskId,
    required this.diskName,
    required this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'device': device,
      'diskId': diskId,
      'diskName': diskName,
      'size': size,
      'type': type,
    };
  }

  factory GetInstancesInstanceDiskDeviceMapping.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceDiskDeviceMapping(
      category: map['category'] as String,
      device: map['device'] as String,
      diskId: map['diskId'] as String,
      diskName: map['diskName'] as String,
      size: map['size'] as int,
      type: map['type'] as String,
    );
  }
}

