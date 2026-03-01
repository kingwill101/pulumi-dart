// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_control_plane_endpoints_config_dns_endpoint_config.dart';
import 'cluster_control_plane_endpoints_config_ip_endpoints_config.dart';

class ClusterControlPlaneEndpointsConfig {
  /// DNS endpoint configuration.
  final ClusterControlPlaneEndpointsConfigDnsEndpointConfig? dnsEndpointConfig;

  /// IP endpoint configuration.
  final ClusterControlPlaneEndpointsConfigIpEndpointsConfig? ipEndpointsConfig;

  /// Creates a new [ClusterControlPlaneEndpointsConfig].
  /// [dnsEndpointConfig] DNS endpoint configuration.
  /// [ipEndpointsConfig] IP endpoint configuration.
  ClusterControlPlaneEndpointsConfig({
    this.dnsEndpointConfig,
    this.ipEndpointsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsEndpointConfig': ?dnsEndpointConfig == null
          ? null
          : dnsEndpointConfig!.toMap(),
      'ipEndpointsConfig': ?ipEndpointsConfig == null
          ? null
          : ipEndpointsConfig!.toMap(),
    };
  }

  factory ClusterControlPlaneEndpointsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneEndpointsConfig(
      dnsEndpointConfig: map['dnsEndpointConfig'] == null
          ? null
          : ClusterControlPlaneEndpointsConfigDnsEndpointConfig.fromMap(
              (map['dnsEndpointConfig'] as Map).cast<String, dynamic>(),
            ),
      ipEndpointsConfig: map['ipEndpointsConfig'] == null
          ? null
          : ClusterControlPlaneEndpointsConfigIpEndpointsConfig.fromMap(
              (map['ipEndpointsConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
