// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override_kube_api_server_config_service_node_port_range_constraint_max_port.dart';
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override_kube_api_server_config_service_node_port_range_constraint_min_port.dart';

class GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraint {
  /// The allowed range for the maximum port (`min`, `max`).
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMaxPort>> maxPorts;
  /// The allowed range for the minimum port (`min`, `max`).
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMinPort>> minPorts;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraint].
  /// [maxPorts] The allowed range for the maximum port (`min`, `max`).
  /// [minPorts] The allowed range for the minimum port (`min`, `max`).
  const GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraint({
    required this.maxPorts,
    required this.minPorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPorts': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMaxPort>, List<Map<String, dynamic>>>(maxPorts, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMaxPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minPorts': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMinPort>, List<Map<String, dynamic>>>(minPorts, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMinPort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraint.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraint(
      maxPorts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMaxPort>(map['maxPorts']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMaxPort.fromMap((value as Map).cast<String, dynamic>()))),
      minPorts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMinPort>(map['minPorts']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMinPort.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
