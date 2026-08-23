// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config.dart';
import 'get_cluster_versions_cluster_version_control_plane_scaling_tier.dart';

class GetClusterVersionsClusterVersion {
  /// Type of clusters to filter by.
  /// Currently, the only valid value is `eks`.
  final pulumi.Input<String> clusterType;
  /// Kubernetes version supported by EKS.
  final pulumi.Input<String> clusterVersion;
  /// Default control plane component configuration and constraints for this version.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfig>> controlPlaneComponentConfigs;
  /// Available provisioned control plane scaling tiers and their capabilities.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneScalingTier>> controlPlaneScalingTiers;
  /// Default eks platform version for the cluster version.
  final pulumi.Input<String> defaultPlatformVersion;
  /// Default Kubernetes version for the cluster version.
  final pulumi.Input<bool> defaultVersion;
  /// End of extended support date for the cluster version.
  final pulumi.Input<String> endOfExtendedSupportDate;
  /// End of standard support date for the cluster version.
  final pulumi.Input<String> endOfStandardSupportDate;
  /// Kubernetes patch version for the cluster version.
  final pulumi.Input<String> kubernetesPatchVersion;
  /// Release date of the cluster version.
  final pulumi.Input<String> releaseDate;
  /// Status of the EKS cluster versions to list.
  /// Valid values are `STANDARD_SUPPORT` or `UNSUPPORTED` or `EXTENDED_SUPPORT`.
  final pulumi.Input<String> versionStatus;

  /// Creates a new [GetClusterVersionsClusterVersion].
  /// [clusterType] Type of clusters to filter by.
  /// [clusterVersion] Kubernetes version supported by EKS.
  /// [controlPlaneComponentConfigs] Default control plane component configuration and constraints for this version.
  /// [controlPlaneScalingTiers] Available provisioned control plane scaling tiers and their capabilities.
  /// [defaultPlatformVersion] Default eks platform version for the cluster version.
  /// [defaultVersion] Default Kubernetes version for the cluster version.
  /// [endOfExtendedSupportDate] End of extended support date for the cluster version.
  /// [endOfStandardSupportDate] End of standard support date for the cluster version.
  /// [kubernetesPatchVersion] Kubernetes patch version for the cluster version.
  /// [releaseDate] Release date of the cluster version.
  /// [versionStatus] Status of the EKS cluster versions to list.
  const GetClusterVersionsClusterVersion({
    required this.clusterType,
    required this.clusterVersion,
    required this.controlPlaneComponentConfigs,
    required this.controlPlaneScalingTiers,
    required this.defaultPlatformVersion,
    required this.defaultVersion,
    required this.endOfExtendedSupportDate,
    required this.endOfStandardSupportDate,
    required this.kubernetesPatchVersion,
    required this.releaseDate,
    required this.versionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': clusterType,
      'clusterVersion': clusterVersion,
      'controlPlaneComponentConfigs': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfig>, List<Map<String, dynamic>>>(controlPlaneComponentConfigs, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controlPlaneScalingTiers': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneScalingTier>, List<Map<String, dynamic>>>(controlPlaneScalingTiers, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneScalingTier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultPlatformVersion': defaultPlatformVersion,
      'defaultVersion': defaultVersion,
      'endOfExtendedSupportDate': endOfExtendedSupportDate,
      'endOfStandardSupportDate': endOfStandardSupportDate,
      'kubernetesPatchVersion': kubernetesPatchVersion,
      'releaseDate': releaseDate,
      'versionStatus': versionStatus,
    };
  }

  factory GetClusterVersionsClusterVersion.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersion(
      clusterType: pulumi.Input.fromValue(map['clusterType'] as String),
      clusterVersion: pulumi.Input.fromValue(map['clusterVersion'] as String),
      controlPlaneComponentConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfig>(map['controlPlaneComponentConfigs']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfig.fromMap((value as Map).cast<String, dynamic>()))),
      controlPlaneScalingTiers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneScalingTier>(map['controlPlaneScalingTiers']!, (value) => GetClusterVersionsClusterVersionControlPlaneScalingTier.fromMap((value as Map).cast<String, dynamic>()))),
      defaultPlatformVersion: pulumi.Input.fromValue(map['defaultPlatformVersion'] as String),
      defaultVersion: pulumi.Input.fromValue(map['defaultVersion'] as bool),
      endOfExtendedSupportDate: pulumi.Input.fromValue(map['endOfExtendedSupportDate'] as String),
      endOfStandardSupportDate: pulumi.Input.fromValue(map['endOfStandardSupportDate'] as String),
      kubernetesPatchVersion: pulumi.Input.fromValue(map['kubernetesPatchVersion'] as String),
      releaseDate: pulumi.Input.fromValue(map['releaseDate'] as String),
      versionStatus: pulumi.Input.fromValue(map['versionStatus'] as String),
    );
  }
}
