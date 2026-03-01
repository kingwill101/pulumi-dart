// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rocket_mqinstance_network_info_endpoint.dart';
import 'rocket_mqinstance_network_info_internet_info.dart';
import 'rocket_mqinstance_network_info_vpc_info.dart';

class RocketMQInstanceNetworkInfo {
  /// Access point list.
  final List<RocketMQInstanceNetworkInfoEndpoint>? endpoints;
  /// instance internet info. See `internet_info` below.
  final RocketMQInstanceNetworkInfoInternetInfo internetInfo;
  /// Proprietary network information. See `vpc_info` below.
  final RocketMQInstanceNetworkInfoVpcInfo vpcInfo;

  /// Creates a new [RocketMQInstanceNetworkInfo].
  /// [endpoints] Access point list.
  /// [internetInfo] instance internet info. See `internet_info` below.
  /// [vpcInfo] Proprietary network information. See `vpc_info` below.
  RocketMQInstanceNetworkInfo({
    this.endpoints,
    required this.internetInfo,
    required this.vpcInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<RocketMQInstanceNetworkInfoEndpoint, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
      'internetInfo': internetInfo.toMap(),
      'vpcInfo': vpcInfo.toMap(),
    };
  }

  factory RocketMQInstanceNetworkInfo.fromMap(Map<String, dynamic> map) {
    return RocketMQInstanceNetworkInfo(
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<RocketMQInstanceNetworkInfoEndpoint>(map['endpoints'], (value) => RocketMQInstanceNetworkInfoEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      internetInfo: RocketMQInstanceNetworkInfoInternetInfo.fromMap((map['internetInfo'] as Map).cast<String, dynamic>()),
      vpcInfo: RocketMQInstanceNetworkInfoVpcInfo.fromMap((map['vpcInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

