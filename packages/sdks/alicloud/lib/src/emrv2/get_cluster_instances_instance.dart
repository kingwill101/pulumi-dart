// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterInstancesInstance {
  /// The emr cluster node group whether auto renew when payment type is 'Subscription'.
  final pulumi.Input<bool> autoRenew;
  /// The emr cluster node group auto renew duration when payment type is 'Subscription'.
  final pulumi.Input<int> autoRenewDuration;
  /// The emr cluster node group auto renew duration unit when payment type is 'Subscription'.
  final pulumi.Input<String> autoRenewDurationUnit;
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The expire time of the resource.
  final pulumi.Input<String> expireTime;
  /// The emr cluster ecs instance ID.
  final pulumi.Input<String> instanceId;
  /// The emr cluster ecs instance name.
  final pulumi.Input<String> instanceName;
  /// The emr cluster ecs instance state.
  final pulumi.Input<String> instanceState;
  /// The emr cluster ecs instance type.
  final pulumi.Input<String> instanceType;
  /// The emr cluster node group ID.
  final pulumi.Input<String> nodeGroupId;
  /// The emr cluster node group type.
  final pulumi.Input<String> nodeGroupType;
  /// The emr cluster ecs instance private ip.
  final pulumi.Input<String> privateIp;
  /// The emr cluster ecs instance public ip.
  final pulumi.Input<String> publicIp;
  /// The emr cluster node group zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetClusterInstancesInstance].
  /// [autoRenew] The emr cluster node group whether auto renew when payment type is 'Subscription'.
  /// [autoRenewDuration] The emr cluster node group auto renew duration when payment type is 'Subscription'.
  /// [autoRenewDurationUnit] The emr cluster node group auto renew duration unit when payment type is 'Subscription'.
  /// [createTime] The creation time of the resource.
  /// [expireTime] The expire time of the resource.
  /// [instanceId] The emr cluster ecs instance ID.
  /// [instanceName] The emr cluster ecs instance name.
  /// [instanceState] The emr cluster ecs instance state.
  /// [instanceType] The emr cluster ecs instance type.
  /// [nodeGroupId] The emr cluster node group ID.
  /// [nodeGroupType] The emr cluster node group type.
  /// [privateIp] The emr cluster ecs instance private ip.
  /// [publicIp] The emr cluster ecs instance public ip.
  /// [zoneId] The emr cluster node group zone ID.
  GetClusterInstancesInstance({
    required this.autoRenew,
    required this.autoRenewDuration,
    required this.autoRenewDurationUnit,
    required this.createTime,
    required this.expireTime,
    required this.instanceId,
    required this.instanceName,
    required this.instanceState,
    required this.instanceType,
    required this.nodeGroupId,
    required this.nodeGroupType,
    required this.privateIp,
    required this.publicIp,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': autoRenew,
      'autoRenewDuration': autoRenewDuration,
      'autoRenewDurationUnit': autoRenewDurationUnit,
      'createTime': createTime,
      'expireTime': expireTime,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'instanceState': instanceState,
      'instanceType': instanceType,
      'nodeGroupId': nodeGroupId,
      'nodeGroupType': nodeGroupType,
      'privateIp': privateIp,
      'publicIp': publicIp,
      'zoneId': zoneId,
    };
  }

  factory GetClusterInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetClusterInstancesInstance(
      autoRenew: pulumi.Input.fromValue(map['autoRenew'] as bool),
      autoRenewDuration: pulumi.Input.fromValue(map['autoRenewDuration'] as int),
      autoRenewDurationUnit: pulumi.Input.fromValue(map['autoRenewDurationUnit'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      instanceState: pulumi.Input.fromValue(map['instanceState'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      nodeGroupId: pulumi.Input.fromValue(map['nodeGroupId'] as String),
      nodeGroupType: pulumi.Input.fromValue(map['nodeGroupType'] as String),
      privateIp: pulumi.Input.fromValue(map['privateIp'] as String),
      publicIp: pulumi.Input.fromValue(map['publicIp'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

