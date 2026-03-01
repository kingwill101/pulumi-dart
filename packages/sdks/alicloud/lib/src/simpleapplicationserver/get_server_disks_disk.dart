// ignore_for_file: unused_element, unnecessary_cast


class GetServerDisksDisk {
  /// Disk type. Possible values: `ESSD`, `SSD`.
  final String category;
  /// The time when the disk was created. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  final String createTime;
  /// The device name of the disk on the simple application server.
  final String device;
  /// The first ID of the resource.
  final String diskId;
  /// The name of the resource.
  final String diskName;
  /// The type of the disk. Possible values: `System`, `Data`.
  final String diskType;
  /// The ID of the Disk.
  final String id;
  /// Alibaba Cloud simple application server instance ID.
  final String instanceId;
  /// The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`.
  final String paymentType;
  /// The size of the disk. Unit: `GB`.
  final int size;
  /// The status of the disk. Valid values: `ReIniting`, `Creating`, `In_Use`, `Available`, `Attaching`, `Detaching`.
  final String status;

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
      category: map['category'] as String,
      createTime: map['createTime'] as String,
      device: map['device'] as String,
      diskId: map['diskId'] as String,
      diskName: map['diskName'] as String,
      diskType: map['diskType'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      paymentType: map['paymentType'] as String,
      size: map['size'] as int,
      status: map['status'] as String,
    );
  }
}

