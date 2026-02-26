// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_control_plane_endpoints_config_dns_endpoint_config/cluster_control_plane_endpoints_config_dns_endpoint_config.dart';
import '../cluster_control_plane_endpoints_config_ip_endpoints_config/cluster_control_plane_endpoints_config_ip_endpoints_config.dart';

class ClusterControlPlaneEndpointsConfig {
  /// DNS endpoint configuration.
  final ClusterControlPlaneEndpointsConfigDnsEndpointConfig? dnsEndpointConfig;

  /// IP endpoint configuration.
  final ClusterControlPlaneEndpointsConfigIpEndpointsConfig? ipEndpointsConfig;

  ClusterControlPlaneEndpointsConfig({
    this.dnsEndpointConfig,
    this.ipEndpointsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsEndpointConfigValue = dnsEndpointConfig;
    if (dnsEndpointConfigValue != null) {
      map['dnsEndpointConfig'] = dnsEndpointConfigValue.toMap();
    }
    final ipEndpointsConfigValue = ipEndpointsConfig;
    if (ipEndpointsConfigValue != null) {
      map['ipEndpointsConfig'] = ipEndpointsConfigValue.toMap();
    }
    return map;
  }

  factory ClusterControlPlaneEndpointsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneEndpointsConfig(
      dnsEndpointConfig: map['dnsEndpointConfig'] == null
          ? null
          : ClusterControlPlaneEndpointsConfigDnsEndpointConfig.fromMap(
              (map['dnsEndpointConfig'] as Map).cast<String, dynamic>()),
      ipEndpointsConfig: map['ipEndpointsConfig'] == null
          ? null
          : ClusterControlPlaneEndpointsConfigIpEndpointsConfig.fromMap(
              (map['ipEndpointsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
