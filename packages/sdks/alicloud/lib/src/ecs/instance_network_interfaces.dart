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
  const InstanceNetworkInterfaces({
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
      networkCardIndex: (() { final guardedValue = map['networkCardIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceTrafficMode: (() { final guardedValue = map['networkInterfaceTrafficMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queuePairNumber: (() { final guardedValue = map['queuePairNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

