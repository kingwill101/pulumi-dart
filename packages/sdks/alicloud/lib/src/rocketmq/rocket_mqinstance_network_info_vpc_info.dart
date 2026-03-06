// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rocket_mqinstance_network_info_vpc_info_vswitch.dart';

class RocketMQInstanceNetworkInfoVpcInfo {
  /// Security group id.
  final pulumi.Input<String>? securityGroupIds;
  /// Proprietary Network.
  final pulumi.Input<String> vpcId;
  /// VPC switch id.
  final pulumi.Input<String>? vswitchId;
  /// Multiple VSwitches. At least two VSwitches are required for a serverless instance. See `vswitches` below.
  final pulumi.Input<List<RocketMQInstanceNetworkInfoVpcInfoVswitch>>? vswitches;

  /// Creates a new [RocketMQInstanceNetworkInfoVpcInfo].
  /// [securityGroupIds] Security group id.
  /// [vpcId] Proprietary Network.
  /// [vswitchId] VPC switch id.
  /// [vswitches] Multiple VSwitches. At least two VSwitches are required for a serverless instance. See `vswitches` below.
  const RocketMQInstanceNetworkInfoVpcInfo({
    this.securityGroupIds,
    required this.vpcId,
    this.vswitchId,
    this.vswitches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'vpcId': vpcId,
      'vswitchId': ?vswitchId,
      'vswitches': ?pulumi.Input.mapOptionalInputValue<List<RocketMQInstanceNetworkInfoVpcInfoVswitch>, List<Map<String, dynamic>>>(vswitches, (value) => pulumi.Input.encodeList<RocketMQInstanceNetworkInfoVpcInfoVswitch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RocketMQInstanceNetworkInfoVpcInfo.fromMap(Map<String, dynamic> map) {
    return RocketMQInstanceNetworkInfoVpcInfo(
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitches: (() { final guardedValue = map['vswitches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RocketMQInstanceNetworkInfoVpcInfoVswitch>(guardedValue, (value) => RocketMQInstanceNetworkInfoVpcInfoVswitch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

