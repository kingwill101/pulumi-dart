// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_api_server_config_event_ttl_constraint.dart';

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtl {
  /// Scoring strategy constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtlConstraint>> constraints;
  /// Default scoring strategy (`type`, `resources`).
  final pulumi.Input<String> defaultValue;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtl].
  /// [constraints] Scoring strategy constraints.
  /// [defaultValue] Default scoring strategy (`type`, `resources`).
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtl({
    required this.constraints,
    required this.defaultValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtlConstraint>, List<Map<String, dynamic>>>(constraints, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtlConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultValue': defaultValue,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtl.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtl(
      constraints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtlConstraint>(map['constraints']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigEventTtlConstraint.fromMap((value as Map).cast<String, dynamic>()))),
      defaultValue: pulumi.Input.fromValue(map['defaultValue'] as String),
    );
  }
}
