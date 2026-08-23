// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_api_server_config_event_ttl.dart';
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_api_server_config_service_node_port_range.dart';

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfig {
  /// Event TTL configuration with default value and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtl>> eventTtls;
  /// Service node port range configuration with default value and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRange>> serviceNodePortRanges;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfig].
  /// [eventTtls] Event TTL configuration with default value and constraints.
  /// [serviceNodePortRanges] Service node port range configuration with default value and constraints.
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfig({
    required this.eventTtls,
    required this.serviceNodePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTtls': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtl>, List<Map<String, dynamic>>>(eventTtls, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceNodePortRanges': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRange>, List<Map<String, dynamic>>>(serviceNodePortRanges, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfig(
      eventTtls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtl>(map['eventTtls']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtl.fromMap((value as Map).cast<String, dynamic>()))),
      serviceNodePortRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRange>(map['serviceNodePortRanges']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRange.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
