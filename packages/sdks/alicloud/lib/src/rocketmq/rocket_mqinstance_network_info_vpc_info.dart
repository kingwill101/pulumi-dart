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
  RocketMQInstanceNetworkInfoVpcInfo({
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
      securityGroupIds: map['securityGroupIds'] == null ? null : (map['securityGroupIds'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      vswitches: map['vswitches'] == null ? null : (pulumi.Input.decodeList<RocketMQInstanceNetworkInfoVpcInfoVswitch>(map['vswitches'], (value) => RocketMQInstanceNetworkInfoVpcInfoVswitch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

