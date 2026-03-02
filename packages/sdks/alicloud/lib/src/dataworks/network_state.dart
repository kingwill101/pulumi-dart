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
    this.createTime,
    this.dwResourceGroupId,
    this.status,
    this.vpcId,
    this.vswitchId,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as int).input(),
      dwResourceGroupId: map['dwResourceGroupId'] == null ? null : (map['dwResourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

