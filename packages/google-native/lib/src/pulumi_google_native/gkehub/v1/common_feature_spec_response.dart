// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_fleet_spec_response.dart';
import 'fleet_observability_feature_spec_response.dart';
import 'multi_cluster_ingress_feature_spec_response.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpecResponse {
  /// Appdevexperience specific spec.
  final Map<String, dynamic> appdevexperience;

  /// ClusterUpgrade (fleet-based) feature spec.
  final ClusterUpgradeFleetSpecResponse clusterupgrade;

  /// FleetObservability feature spec.
  final FleetObservabilityFeatureSpecResponse fleetobservability;

  /// Multicluster Ingress-specific spec.
  final MultiClusterIngressFeatureSpecResponse multiclusteringress;

  CommonFeatureSpecResponse({
    required this.appdevexperience,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.multiclusteringress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appdevexperience'] = appdevexperience;
    map['clusterupgrade'] = clusterupgrade.toMap();
    map['fleetobservability'] = fleetobservability.toMap();
    map['multiclusteringress'] = multiclusteringress.toMap();
    return map;
  }

  factory CommonFeatureSpecResponse.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpecResponse(
      appdevexperience:
          (map['appdevexperience'] as Map).cast<String, dynamic>(),
      clusterupgrade: ClusterUpgradeFleetSpecResponse.fromMap(
          (map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability: FleetObservabilityFeatureSpecResponse.fromMap(
          (map['fleetobservability'] as Map).cast<String, dynamic>()),
      multiclusteringress: MultiClusterIngressFeatureSpecResponse.fromMap(
          (map['multiclusteringress'] as Map).cast<String, dynamic>()),
    );
  }
}
