// ignore_for_file: unused_element, unnecessary_cast


class GetDedicatedHostsHostInstance {
  /// The ID of the ECS instance.
  final String instanceId;
  /// The ID of the ECS instance owner.
  final int instanceOwnerId;
  /// The instance type of the ECS instance that was created on the dedicated host.
  final String instanceType;
  /// The ID of the socket to which the ECS instance belongs.
  final String socketId;

  /// Creates a new [GetDedicatedHostsHostInstance].
  /// [instanceId] The ID of the ECS instance.
  /// [instanceOwnerId] The ID of the ECS instance owner.
  /// [instanceType] The instance type of the ECS instance that was created on the dedicated host.
  /// [socketId] The ID of the socket to which the ECS instance belongs.
  GetDedicatedHostsHostInstance({
    required this.instanceId,
    required this.instanceOwnerId,
    required this.instanceType,
    required this.socketId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'instanceOwnerId': instanceOwnerId,
      'instanceType': instanceType,
      'socketId': socketId,
    };
  }

  factory GetDedicatedHostsHostInstance.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostsHostInstance(
      instanceId: map['instanceId'] as String,
      instanceOwnerId: map['instanceOwnerId'] as int,
      instanceType: map['instanceType'] as String,
      socketId: map['socketId'] as String,
    );
  }
}

