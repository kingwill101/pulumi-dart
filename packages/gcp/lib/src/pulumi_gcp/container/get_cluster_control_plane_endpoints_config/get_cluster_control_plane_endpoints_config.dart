// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_control_plane_endpoints_config_dns_endpoint_config/get_cluster_control_plane_endpoints_config_dns_endpoint_config.dart';
import '../get_cluster_control_plane_endpoints_config_ip_endpoints_config/get_cluster_control_plane_endpoints_config_ip_endpoints_config.dart';

class GetClusterControlPlaneEndpointsConfig {
  /// DNS endpoint configuration.
  final List<GetClusterControlPlaneEndpointsConfigDnsEndpointConfig>
      dnsEndpointConfigs;

  /// IP endpoint configuration.
  final List<GetClusterControlPlaneEndpointsConfigIpEndpointsConfig>
      ipEndpointsConfigs;

  GetClusterControlPlaneEndpointsConfig({
    required this.dnsEndpointConfigs,
    required this.ipEndpointsConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsEndpointConfigs'] = Input.encodeList<
        GetClusterControlPlaneEndpointsConfigDnsEndpointConfig,
        Map<String, dynamic>>(dnsEndpointConfigs, (value) => value.toMap());
    map['ipEndpointsConfigs'] = Input.encodeList<
        GetClusterControlPlaneEndpointsConfigIpEndpointsConfig,
        Map<String, dynamic>>(ipEndpointsConfigs, (value) => value.toMap());
    return map;
  }

  factory GetClusterControlPlaneEndpointsConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterControlPlaneEndpointsConfig(
      dnsEndpointConfigs: Input.decodeList<
              GetClusterControlPlaneEndpointsConfigDnsEndpointConfig>(
          map['dnsEndpointConfigs'],
          (value) =>
              GetClusterControlPlaneEndpointsConfigDnsEndpointConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ipEndpointsConfigs: Input.decodeList<
              GetClusterControlPlaneEndpointsConfigIpEndpointsConfig>(
          map['ipEndpointsConfigs'],
          (value) =>
              GetClusterControlPlaneEndpointsConfigIpEndpointsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
