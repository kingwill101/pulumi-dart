// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_api_server_config_service_node_port_range_constraint.dart';
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_api_server_config_service_node_port_range_default_value.dart';

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRange {
  /// Scoring strategy constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraint>> constraints;
  /// Default scoring strategy (`type`, `resources`).
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeDefaultValue>> defaultValues;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRange].
  /// [constraints] Scoring strategy constraints.
  /// [defaultValues] Default scoring strategy (`type`, `resources`).
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRange({
    required this.constraints,
    required this.defaultValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraint>, List<Map<String, dynamic>>>(constraints, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultValues': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeDefaultValue>, List<Map<String, dynamic>>>(defaultValues, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeDefaultValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRange.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRange(
      constraints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraint>(map['constraints']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeConstraint.fromMap((value as Map).cast<String, dynamic>()))),
      defaultValues: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeDefaultValue>(map['defaultValues']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeDefaultValue.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
