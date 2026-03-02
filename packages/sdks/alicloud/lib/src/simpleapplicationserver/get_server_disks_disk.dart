// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerDisksDisk {
  /// Disk type. Possible values: `ESSD`, `SSD`.
  final pulumi.Input<String> category;
  /// The time when the disk was created. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  final pulumi.Input<String> createTime;
  /// The device name of the disk on the simple application server.
  final pulumi.Input<String> device;
  /// The first ID of the resource.
  final pulumi.Input<String> diskId;
  /// The name of the resource.
  final pulumi.Input<String> diskName;
  /// The type of the disk. Possible values: `System`, `Data`.
  final pulumi.Input<String> diskType;
  /// The ID of the Disk.
  final pulumi.Input<String> id;
  /// Alibaba Cloud simple application server instance ID.
  final pulumi.Input<String> instanceId;
  /// The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`.
  final pulumi.Input<String> paymentType;
  /// The size of the disk. Unit: `GB`.
  final pulumi.Input<int> size;
  /// The status of the disk. Valid values: `ReIniting`, `Creating`, `In_Use`, `Available`, `Attaching`, `Detaching`.
  final pulumi.Input<String> status;

  /// Creates a new [GetServerDisksDisk].
  /// [category] Disk type. Possible values: `ESSD`, `SSD`.
  /// [createTime] The time when the disk was created. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  /// [device] The device name of the disk on the simple application server.
  /// [diskId] The first ID of the resource.
  /// [diskName] The name of the resource.
  /// [diskType] The type of the disk. Possible values: `System`, `Data`.
  /// [id] The ID of the Disk.
  /// [instanceId] Alibaba Cloud simple application server instance ID.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`.
  /// [size] The size of the disk. Unit: `GB`.
  /// [status] The status of the disk. Valid values: `ReIniting`, `Creating`, `In_Use`, `Available`, `Attaching`, `Detaching`.
  GetServerDisksDisk({
    required this.category,
    required this.createTime,
    required this.device,
    required this.diskId,
    required this.diskName,
    required this.diskType,
    required this.id,
    required this.instanceId,
    required this.paymentType,
    required this.size,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'createTime': createTime,
      'device': device,
      'diskId': diskId,
      'diskName': diskName,
      'diskType': diskType,
      'id': id,
      'instanceId': instanceId,
      'paymentType': paymentType,
      'size': size,
      'status': status,
    };
  }

  factory GetServerDisksDisk.fromMap(Map<String, dynamic> map) {
    return GetServerDisksDisk(
      category: (map['category'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      device: (map['device'] as String).input(),
      diskId: (map['diskId'] as String).input(),
      diskName: (map['diskName'] as String).input(),
      diskType: (map['diskType'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      size: (map['size'] as int).input(),
      status: (map['status'] as String).input(),
    );
  }
}

