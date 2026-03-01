// ignore_for_file: unused_element, unnecessary_cast


class GetEcsDisksDiskMountInstance {
  /// A mount of time.
  final String attachedTime;
  /// The mount point of the disk.
  final String device;
  /// Filter the results by the specified ECS instance ID.
  final String instanceId;

  /// Creates a new [GetEcsDisksDiskMountInstance].
  /// [attachedTime] A mount of time.
  /// [device] The mount point of the disk.
  /// [instanceId] Filter the results by the specified ECS instance ID.
  GetEcsDisksDiskMountInstance({
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
      attachedTime: map['attachedTime'] as String,
      device: map['device'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

