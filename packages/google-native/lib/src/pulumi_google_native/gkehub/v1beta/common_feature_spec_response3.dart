// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_feature_spec_response2.dart';
import 'cluster_upgrade_fleet_spec_response3.dart';
import 'fleet_observability_feature_spec_response3.dart';
import 'multi_cluster_ingress_feature_spec_response3.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpecResponse3 {
  /// Anthos Observability spec
  final AnthosObservabilityFeatureSpecResponse2 anthosobservability;

  /// Appdevexperience specific spec.
  final Map<String, dynamic> appdevexperience;

  /// ClusterUpgrade (fleet-based) feature spec.
  final ClusterUpgradeFleetSpecResponse3 clusterupgrade;

  /// FleetObservability feature spec.
  final FleetObservabilityFeatureSpecResponse3 fleetobservability;

  /// Multicluster Ingress-specific spec.
  final MultiClusterIngressFeatureSpecResponse3 multiclusteringress;

  CommonFeatureSpecResponse3({
    required this.anthosobservability,
    required this.appdevexperience,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.multiclusteringress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['anthosobservability'] = anthosobservability.toMap();
    map['appdevexperience'] = appdevexperience;
    map['clusterupgrade'] = clusterupgrade.toMap();
    map['fleetobservability'] = fleetobservability.toMap();
    map['multiclusteringress'] = multiclusteringress.toMap();
    return map;
  }

  factory CommonFeatureSpecResponse3.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpecResponse3(
      anthosobservability: AnthosObservabilityFeatureSpecResponse2.fromMap(
          (map['anthosobservability'] as Map).cast<String, dynamic>()),
      appdevexperience:
          (map['appdevexperience'] as Map).cast<String, dynamic>(),
      clusterupgrade: ClusterUpgradeFleetSpecResponse3.fromMap(
          (map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability: FleetObservabilityFeatureSpecResponse3.fromMap(
          (map['fleetobservability'] as Map).cast<String, dynamic>()),
      multiclusteringress: MultiClusterIngressFeatureSpecResponse3.fromMap(
          (map['multiclusteringress'] as Map).cast<String, dynamic>()),
    );
  }
}
