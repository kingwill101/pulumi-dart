// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedHostsHostInstance {
  /// The ID of the ECS instance.
  final pulumi.Input<String> instanceId;
  /// The ID of the ECS instance owner.
  final pulumi.Input<int> instanceOwnerId;
  /// The instance type of the ECS instance that was created on the dedicated host.
  final pulumi.Input<String> instanceType;
  /// The ID of the socket to which the ECS instance belongs.
  final pulumi.Input<String> socketId;

  /// Creates a new [GetDedicatedHostsHostInstance].
  /// [instanceId] The ID of the ECS instance.
  /// [instanceOwnerId] The ID of the ECS instance owner.
  /// [instanceType] The instance type of the ECS instance that was created on the dedicated host.
  /// [socketId] The ID of the socket to which the ECS instance belongs.
  const GetDedicatedHostsHostInstance({
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
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceOwnerId: pulumi.Input.fromValue(map['instanceOwnerId'] as int),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      socketId: pulumi.Input.fromValue(map['socketId'] as String),
    );
  }
}

