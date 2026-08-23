// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_api_server_config_service_node_port_range_constraint_max_port.dart';
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_api_server_config_service_node_port_range_constraint_min_port.dart';

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraint {
  /// The allowed range for the maximum port (`min`, `max`).
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraintMaxPort>> maxPorts;
  /// The allowed range for the minimum port (`min`, `max`).
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraintMinPort>> minPorts;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraint].
  /// [maxPorts] The allowed range for the maximum port (`min`, `max`).
  /// [minPorts] The allowed range for the minimum port (`min`, `max`).
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraint({
    required this.maxPorts,
    required this.minPorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPorts': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraintMaxPort>, List<Map<String, dynamic>>>(maxPorts, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraintMaxPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minPorts': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraintMinPort>, List<Map<String, dynamic>>>(minPorts, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraintMinPort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraint.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraint(
      maxPorts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraintMaxPort>(map['maxPorts']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraintMaxPort.fromMap((value as Map).cast<String, dynamic>()))),
      minPorts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraintMinPort>(map['minPorts']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraintMinPort.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
