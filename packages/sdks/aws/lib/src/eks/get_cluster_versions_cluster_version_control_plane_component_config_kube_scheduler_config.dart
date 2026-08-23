// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_scheduler_config_node_resources_fit.dart';

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfig {
  /// NodeResourcesFit plugin configuration with default value and constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFit>> nodeResourcesFits;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfig].
  /// [nodeResourcesFits] NodeResourcesFit plugin configuration with default value and constraints.
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfig({
    required this.nodeResourcesFits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeResourcesFits': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFit>, List<Map<String, dynamic>>>(nodeResourcesFits, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFit, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfig(
      nodeResourcesFits: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFit>(map['nodeResourcesFits']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFit.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
