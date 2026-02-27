// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'network_config_connect_mode.dart';
import 'network_config_modes_item.dart';

/// Network configuration for the instance.
class NetworkConfig14 {
  /// The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  final NetworkConfigConnectMode? connectMode;

  /// Internet protocol versions for which the instance has IP addresses assigned. For this version, only MODE_IPV4 is supported.
  final List<NetworkConfigModesItem>? modes;

  /// The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected.
  final String? network;

  /// Optional, reserved_ip_range can have one of the following two types of values. * CIDR range value when using DIRECT_PEERING connect mode. * [Allocated IP address range](https://cloud.google.com/compute/docs/ip-addresses/reserve-static-internal-ip-address) when using PRIVATE_SERVICE_ACCESS connect mode. When the name of an allocated IP address range is specified, it must be one of the ranges associated with the private service access connection. When specified as a direct CIDR value, it must be a /29 CIDR block for Basic tier, a /24 CIDR block for High Scale tier, or a /26 CIDR block for Enterprise tier in one of the [internal IP address ranges](https://www.arin.net/reference/research/statistics/address_filters/) that identifies the range of IP addresses reserved for this instance. For example, 10.0.0.0/29, 192.168.0.0/24 or 192.168.0.0/26, respectively. The range you specify can't overlap with either existing subnets or assigned IP address ranges for other Filestore instances in the selected VPC network.
  final String? reservedIpRange;

  NetworkConfig14({
    this.connectMode,
    this.modes,
    this.network,
    this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectModeValue = connectMode;
    if (connectModeValue != null) {
      map['connectMode'] = connectModeValue.value;
    }
    final modesValue = modes;
    if (modesValue != null) {
      map['modes'] = Input.encodeList<NetworkConfigModesItem, String>(
          modesValue, (value) => value.value);
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final reservedIpRangeValue = reservedIpRange;
    if (reservedIpRangeValue != null) {
      map['reservedIpRange'] = reservedIpRangeValue;
    }
    return map;
  }

  factory NetworkConfig14.fromMap(Map<String, dynamic> map) {
    return NetworkConfig14(
      connectMode: map['connectMode'] == null
          ? null
          : NetworkConfigConnectMode.fromValue(map['connectMode'] as String),
      modes: map['modes'] == null
          ? null
          : Input.decodeList<NetworkConfigModesItem>(map['modes'],
              (value) => NetworkConfigModesItem.fromValue(value as String)),
      network: map['network'] == null ? null : map['network'] as String,
      reservedIpRange: map['reservedIpRange'] == null
          ? null
          : map['reservedIpRange'] as String,
    );
  }
}
