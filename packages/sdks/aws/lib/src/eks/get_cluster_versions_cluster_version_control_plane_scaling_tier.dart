// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier_control_plane_component_config_override.dart';

class GetClusterVersionsClusterVersionControlPlaneScalingTier {
  /// Maximum API request concurrency supported by this tier.
  final pulumi.Input<int> apiRequestConcurrency;
  /// Maximum cluster database size in GB supported by this tier.
  final pulumi.Input<int> clusterDatabaseSizeGb;
  /// Control plane component configuration overrides specific to this tier (same structure as `controlPlaneComponentConfig`).
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverride>> controlPlaneComponentConfigOverrides;
  /// Maximum pod scheduling rate per second supported by this tier.
  final pulumi.Input<int> podSchedulingRatePerSecond;
  /// The name of the scaling tier.
  final pulumi.Input<String> tierName;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTier].
  /// [apiRequestConcurrency] Maximum API request concurrency supported by this tier.
  /// [clusterDatabaseSizeGb] Maximum cluster database size in GB supported by this tier.
  /// [controlPlaneComponentConfigOverrides] Control plane component configuration overrides specific to this tier (same structure as `controlPlaneComponentConfig`).
  /// [podSchedulingRatePerSecond] Maximum pod scheduling rate per second supported by this tier.
  /// [tierName] The name of the scaling tier.
  const GetClusterVersionsClusterVersionControlPlaneScalingTier({
    required this.apiRequestConcurrency,
    required this.clusterDatabaseSizeGb,
    required this.controlPlaneComponentConfigOverrides,
    required this.podSchedulingRatePerSecond,
    required this.tierName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiRequestConcurrency': apiRequestConcurrency,
      'clusterDatabaseSizeGb': clusterDatabaseSizeGb,
      'controlPlaneComponentConfigOverrides': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverride>, List<Map<String, dynamic>>>(controlPlaneComponentConfigOverrides, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'podSchedulingRatePerSecond': podSchedulingRatePerSecond,
      'tierName': tierName,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTier.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTier(
      apiRequestConcurrency: pulumi.Input.fromValue((map['apiRequestConcurrency'] as num).toInt()),
      clusterDatabaseSizeGb: pulumi.Input.fromValue((map['clusterDatabaseSizeGb'] as num).toInt()),
      controlPlaneComponentConfigOverrides: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverride>(map['controlPlaneComponentConfigOverrides']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverride.fromMap((value as Map).cast<String, dynamic>()))),
      podSchedulingRatePerSecond: pulumi.Input.fromValue((map['podSchedulingRatePerSecond'] as num).toInt()),
      tierName: pulumi.Input.fromValue(map['tierName'] as String),
    );
  }
}
