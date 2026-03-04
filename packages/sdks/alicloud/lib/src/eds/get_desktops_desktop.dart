// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDesktopsDesktop {
  /// The number of CPUs.
  final pulumi.Input<int> cpu;

  /// The creation time of the Desktop.
  final pulumi.Input<String> createTime;

  /// The desktop id of the Desktop.
  final pulumi.Input<String> desktopId;

  /// The desktop name of the Desktop.
  final pulumi.Input<String> desktopName;

  /// The desktop type of the Desktop.
  final pulumi.Input<String> desktopType;

  /// The directory id of the Desktop.
  final pulumi.Input<String> directoryId;

  /// The desktop end user id of the Desktop.
  final pulumi.Input<List<String>> endUserIds;

  /// The expired time of the Desktop.
  final pulumi.Input<String> expiredTime;

  /// The ID of the Desktop.
  final pulumi.Input<String> id;

  /// The image id of the Desktop.
  final pulumi.Input<String> imageId;

  /// The memory of the Desktop.
  final pulumi.Input<String> memory;

  /// The network interface id of the Desktop.
  final pulumi.Input<String> networkInterfaceId;

  /// The payment type of the Desktop.
  final pulumi.Input<String> paymentType;

  /// The policy group id of the Desktop.
  final pulumi.Input<String> policyGroupId;

  /// The status of the Desktop. Valid values: `Deleted`, `Expired`, `Pending`, `Running`, `Starting`, `Stopped`, `Stopping`.
  final pulumi.Input<String> status;

  /// The system disk size of the Desktop.
  final pulumi.Input<int> systemDiskSize;

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
      cpu: pulumi.Input.fromValue(map['cpu'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      desktopId: pulumi.Input.fromValue(map['desktopId'] as String),
      desktopName: pulumi.Input.fromValue(map['desktopName'] as String),
      desktopType: pulumi.Input.fromValue(map['desktopType'] as String),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      endUserIds: pulumi.Input.fromValue(
        (map['endUserIds'] as List).cast<String>(),
      ),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as String),
      networkInterfaceId: pulumi.Input.fromValue(
        map['networkInterfaceId'] as String,
      ),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      policyGroupId: pulumi.Input.fromValue(map['policyGroupId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      systemDiskSize: pulumi.Input.fromValue(map['systemDiskSize'] as int),
    );
  }
}
