// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override_kube_api_server_config_event_ttl_constraint.dart';

class GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigEventTtl {
  /// Scoring strategy constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigEventTtlConstraint>> constraints;
  /// Default scoring strategy (`type`, `resources`).
  final pulumi.Input<String> defaultValue;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigEventTtl].
  /// [constraints] Scoring strategy constraints.
  /// [defaultValue] Default scoring strategy (`type`, `resources`).
  const GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigEventTtl({
    required this.constraints,
    required this.defaultValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigEventTtlConstraint>, List<Map<String, dynamic>>>(constraints, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigEventTtlConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultValue': defaultValue,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigEventTtl.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigEventTtl(
      constraints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigEventTtlConstraint>(map['constraints']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigEventTtlConstraint.fromMap((value as Map).cast<String, dynamic>()))),
      defaultValue: pulumi.Input.fromValue(map['defaultValue'] as String),
    );
  }
}
