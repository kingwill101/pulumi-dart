// ignore_for_file: unused_element, unnecessary_cast

import 'network_config_peering_mode.dart';

/// Network configuration for ManagementServer instance.
class NetworkConfig {
  /// Optional. The resource name of the Google Compute Engine VPC network to which the ManagementServer instance is connected.
  final String? network;

  /// Optional. The network connect mode of the ManagementServer instance. For this version, only PRIVATE_SERVICE_ACCESS is supported.
  final NetworkConfigPeeringMode? peeringMode;

  /// Creates a new [NetworkConfig].
  /// [network] Optional. The resource name of the Google Compute Engine VPC network to which the ManagementServer instance is connected.
  /// [peeringMode] Optional. The network connect mode of the ManagementServer instance. For this version, only PRIVATE_SERVICE_ACCESS is supported.
  NetworkConfig({
    this.network,
    this.peeringMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final peeringModeValue = peeringMode;
    if (peeringModeValue != null) {
      map['peeringMode'] = peeringModeValue.value;
    }
    return map;
  }

  factory NetworkConfig.fromMap(Map<String, dynamic> map) {
    return NetworkConfig(
      network: map['network'] == null ? null : map['network'] as String,
      peeringMode: map['peeringMode'] == null
          ? null
          : NetworkConfigPeeringMode.fromValue(map['peeringMode'] as String),
    );
  }
}
