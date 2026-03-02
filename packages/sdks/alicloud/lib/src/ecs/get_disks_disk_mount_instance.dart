// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDisksDiskMountInstance {
  /// Disk attachment time.
  final pulumi.Input<String> attachedTime;
  final pulumi.Input<String> device;
  /// Filter the results by the specified ECS instance ID.
  final pulumi.Input<String> instanceId;

  /// Creates a new [GetDisksDiskMountInstance].
  /// [attachedTime] Disk attachment time.
  /// [device] Required.
  /// [instanceId] Filter the results by the specified ECS instance ID.
  GetDisksDiskMountInstance({
    required this.attachedTime,
    required this.device,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedTime': attachedTime,
      'device': device,
      'instanceId': instanceId,
    };
  }

  factory GetDisksDiskMountInstance.fromMap(Map<String, dynamic> map) {
    return GetDisksDiskMountInstance(
      attachedTime: (map['attachedTime'] as String).input(),
      device: (map['device'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
    );
  }
}

