// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceNetworkInterfaces {
  /// The index of the network card for Secondary ENI.
  final pulumi.Input<int>? networkCardIndex;
  /// The ID of the Secondary ENI.
  final pulumi.Input<String>? networkInterfaceId;
  /// The communication mode of the Secondary ENI. Default value: `Standard`. Valid values:
  /// - `Standard`: Uses the TCP communication mode.
  /// - `HighPerformance`: Uses the remote direct memory access (RDMA) communication mode with Elastic RDMA Interface (ERI) enabled.
  final pulumi.Input<String>? networkInterfaceTrafficMode;
  /// The number of queues supported by the ERI.
  final pulumi.Input<int>? queuePairNumber;
  /// The ID of security group N to which to assign Secondary ENI N.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The ID of the vSwitch to which to connect Secondary ENI N.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [InstanceNetworkInterfaces].
  /// [networkCardIndex] The index of the network card for Secondary ENI.
  /// [networkInterfaceId] The ID of the Secondary ENI.
  /// [networkInterfaceTrafficMode] The communication mode of the Secondary ENI. Default value: `Standard`. Valid values:
  /// [queuePairNumber] The number of queues supported by the ERI.
  /// [securityGroupIds] The ID of security group N to which to assign Secondary ENI N.
  /// [vswitchId] The ID of the vSwitch to which to connect Secondary ENI N.
  InstanceNetworkInterfaces({
    this.networkCardIndex,
    this.networkInterfaceId,
    this.networkInterfaceTrafficMode,
    this.queuePairNumber,
    this.securityGroupIds,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkCardIndex': ?networkCardIndex,
      'networkInterfaceId': ?networkInterfaceId,
      'networkInterfaceTrafficMode': ?networkInterfaceTrafficMode,
      'queuePairNumber': ?queuePairNumber,
      'securityGroupIds': ?securityGroupIds,
      'vswitchId': ?vswitchId,
    };
  }

  factory InstanceNetworkInterfaces.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkInterfaces(
      networkCardIndex: map['networkCardIndex'] == null ? null : (map['networkCardIndex']! as int).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId']! as String).input(),
      networkInterfaceTrafficMode: map['networkInterfaceTrafficMode'] == null ? null : (map['networkInterfaceTrafficMode']! as String).input(),
      queuePairNumber: map['queuePairNumber'] == null ? null : (map['queuePairNumber']! as int).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds']! as List).cast<String>()).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

