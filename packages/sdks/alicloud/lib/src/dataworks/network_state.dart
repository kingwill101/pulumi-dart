// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// Time when the network resource was created
  final pulumi.Input<int>? createTime;
  /// The ID of the resource group.
  final pulumi.Input<String>? dwResourceGroupId;
  /// Network Resource Status
  final pulumi.Input<String>? status;
  /// Virtual Private Cloud ID of network resources
  final pulumi.Input<String>? vpcId;
  /// The vSwitch ID of the network resource.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [NetworkState].
  /// [createTime] Time when the network resource was created
  /// [dwResourceGroupId] The ID of the resource group.
  /// [status] Network Resource Status
  /// [vpcId] Virtual Private Cloud ID of network resources
  /// [vswitchId] The vSwitch ID of the network resource.
  NetworkState({
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? dwResourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      dwResourceGroupId = pulumi.Input.asOptionalInput<String>(dwResourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dwResourceGroupId': ?dwResourceGroupId,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      dwResourceGroupId: map['dwResourceGroupId'] == null ? null : pulumi.Output.create<String>(map['dwResourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

