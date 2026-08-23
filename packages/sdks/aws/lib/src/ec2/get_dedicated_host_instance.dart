// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedHostInstance {
  /// The ID of the instance running on the Dedicated Host.
  final pulumi.Input<String> instanceId;
  /// The instance type of the running instance.
  final pulumi.Input<String> instanceType;
  /// The ID of the AWS account that owns the instance.
  final pulumi.Input<String> ownerId;

  /// Creates a new [GetDedicatedHostInstance].
  /// [instanceId] The ID of the instance running on the Dedicated Host.
  /// [instanceType] The instance type of the running instance.
  /// [ownerId] The ID of the AWS account that owns the instance.
  const GetDedicatedHostInstance({
    required this.instanceId,
    required this.instanceType,
    required this.ownerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'instanceType': instanceType,
      'ownerId': ownerId,
    };
  }

  factory GetDedicatedHostInstance.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostInstance(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      ownerId: pulumi.Input.fromValue(map['ownerId'] as String),
    );
  }
}
