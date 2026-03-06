// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsDisksDiskMountInstance {
  /// A mount of time.
  final pulumi.Input<String> attachedTime;
  /// The mount point of the disk.
  final pulumi.Input<String> device;
  /// Filter the results by the specified ECS instance ID.
  final pulumi.Input<String> instanceId;

  /// Creates a new [GetEcsDisksDiskMountInstance].
  /// [attachedTime] A mount of time.
  /// [device] The mount point of the disk.
  /// [instanceId] Filter the results by the specified ECS instance ID.
  const GetEcsDisksDiskMountInstance({
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

  factory GetEcsDisksDiskMountInstance.fromMap(Map<String, dynamic> map) {
    return GetEcsDisksDiskMountInstance(
      attachedTime: pulumi.Input.fromValue(map['attachedTime'] as String),
      device: pulumi.Input.fromValue(map['device'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

