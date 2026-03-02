// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceDiskDeviceMapping {
  /// Cloud disk category.
  final pulumi.Input<String> category;
  /// Device information of the created disk: such as /dev/xvdb.
  final pulumi.Input<String> device;
  /// The ID of the Disk.
  final pulumi.Input<String> diskId;
  /// The name of the Disk.
  final pulumi.Input<String> diskName;
  /// Size of the created disk.
  final pulumi.Input<int> size;
  /// Cloud disk type: system disk or data disk.
  final pulumi.Input<String> type;

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
      category: (map['category'] as String).input(),
      device: (map['device'] as String).input(),
      diskId: (map['diskId'] as String).input(),
      diskName: (map['diskName'] as String).input(),
      size: (map['size'] as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

