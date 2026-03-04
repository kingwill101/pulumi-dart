// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rocket_mqinstance_network_info_endpoint.dart';
import 'rocket_mqinstance_network_info_internet_info.dart';
import 'rocket_mqinstance_network_info_vpc_info.dart';

class RocketMQInstanceNetworkInfo {
  /// Access point list.
  final pulumi.Input<List<RocketMQInstanceNetworkInfoEndpoint>>? endpoints;

  /// instance internet info. See `internet_info` below.
  final pulumi.Input<RocketMQInstanceNetworkInfoInternetInfo> internetInfo;

  /// Proprietary network information. See `vpc_info` below.
  final pulumi.Input<RocketMQInstanceNetworkInfoVpcInfo> vpcInfo;

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
      'endpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<RocketMQInstanceNetworkInfoEndpoint>,
            List<Map<String, dynamic>>
          >(
            endpoints,
            (value) =>
                pulumi.Input.encodeList<
                  RocketMQInstanceNetworkInfoEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'internetInfo':
          pulumi.Input.mapInputValue<
            RocketMQInstanceNetworkInfoInternetInfo,
            Map<String, dynamic>
          >(internetInfo, (value) => value.toMap()),
      'vpcInfo':
          pulumi.Input.mapInputValue<
            RocketMQInstanceNetworkInfoVpcInfo,
            Map<String, dynamic>
          >(vpcInfo, (value) => value.toMap()),
    };
  }

  factory RocketMQInstanceNetworkInfo.fromMap(Map<String, dynamic> map) {
    return RocketMQInstanceNetworkInfo(
      endpoints: (() {
        final guardedValue = map['endpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RocketMQInstanceNetworkInfoEndpoint>(
            guardedValue,
            (value) => RocketMQInstanceNetworkInfoEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      internetInfo: pulumi.Input.fromValue(
        RocketMQInstanceNetworkInfoInternetInfo.fromMap(
          (map['internetInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      vpcInfo: pulumi.Input.fromValue(
        RocketMQInstanceNetworkInfoVpcInfo.fromMap(
          (map['vpcInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
