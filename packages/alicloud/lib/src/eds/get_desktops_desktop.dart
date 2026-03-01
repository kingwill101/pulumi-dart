// ignore_for_file: unused_element, unnecessary_cast


class GetDesktopsDesktop {
  /// The number of CPUs.
  final int cpu;
  /// The creation time of the Desktop.
  final String createTime;
  /// The desktop id of the Desktop.
  final String desktopId;
  /// The desktop name of the Desktop.
  final String desktopName;
  /// The desktop type of the Desktop.
  final String desktopType;
  /// The directory id of the Desktop.
  final String directoryId;
  /// The desktop end user id of the Desktop.
  final List<String> endUserIds;
  /// The expired time of the Desktop.
  final String expiredTime;
  /// The ID of the Desktop.
  final String id;
  /// The image id of the Desktop.
  final String imageId;
  /// The memory of the Desktop.
  final String memory;
  /// The network interface id of the Desktop.
  final String networkInterfaceId;
  /// The payment type of the Desktop.
  final String paymentType;
  /// The policy group id of the Desktop.
  final String policyGroupId;
  /// The status of the Desktop. Valid values: `Deleted`, `Expired`, `Pending`, `Running`, `Starting`, `Stopped`, `Stopping`.
  final String status;
  /// The system disk size of the Desktop.
  final int systemDiskSize;

  /// Creates a new [GetDesktopsDesktop].
  /// [cpu] The number of CPUs.
  /// [createTime] The creation time of the Desktop.
  /// [desktopId] The desktop id of the Desktop.
  /// [desktopName] The desktop name of the Desktop.
  /// [desktopType] The desktop type of the Desktop.
  /// [directoryId] The directory id of the Desktop.
  /// [endUserIds] The desktop end user id of the Desktop.
  /// [expiredTime] The expired time of the Desktop.
  /// [id] The ID of the Desktop.
  /// [imageId] The image id of the Desktop.
  /// [memory] The memory of the Desktop.
  /// [networkInterfaceId] The network interface id of the Desktop.
  /// [paymentType] The payment type of the Desktop.
  /// [policyGroupId] The policy group id of the Desktop.
  /// [status] The status of the Desktop. Valid values: `Deleted`, `Expired`, `Pending`, `Running`, `Starting`, `Stopped`, `Stopping`.
  /// [systemDiskSize] The system disk size of the Desktop.
  GetDesktopsDesktop({
    required this.cpu,
    required this.createTime,
    required this.desktopId,
    required this.desktopName,
    required this.desktopType,
    required this.directoryId,
    required this.endUserIds,
    required this.expiredTime,
    required this.id,
    required this.imageId,
    required this.memory,
    required this.networkInterfaceId,
    required this.paymentType,
    required this.policyGroupId,
    required this.status,
    required this.systemDiskSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'createTime': createTime,
      'desktopId': desktopId,
      'desktopName': desktopName,
      'desktopType': desktopType,
      'directoryId': directoryId,
      'endUserIds': endUserIds,
      'expiredTime': expiredTime,
      'id': id,
      'imageId': imageId,
      'memory': memory,
      'networkInterfaceId': networkInterfaceId,
      'paymentType': paymentType,
      'policyGroupId': policyGroupId,
      'status': status,
      'systemDiskSize': systemDiskSize,
    };
  }

  factory GetDesktopsDesktop.fromMap(Map<String, dynamic> map) {
    return GetDesktopsDesktop(
      cpu: map['cpu'] as int,
      createTime: map['createTime'] as String,
      desktopId: map['desktopId'] as String,
      desktopName: map['desktopName'] as String,
      desktopType: map['desktopType'] as String,
      directoryId: map['directoryId'] as String,
      endUserIds: (map['endUserIds'] as List).cast<String>(),
      expiredTime: map['expiredTime'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      memory: map['memory'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      paymentType: map['paymentType'] as String,
      policyGroupId: map['policyGroupId'] as String,
      status: map['status'] as String,
      systemDiskSize: map['systemDiskSize'] as int,
    );
  }
}

