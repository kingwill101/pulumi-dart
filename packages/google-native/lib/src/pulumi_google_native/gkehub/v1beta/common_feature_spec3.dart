// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_feature_spec2.dart';
import 'cluster_upgrade_fleet_spec3.dart';
import 'fleet_observability_feature_spec3.dart';
import 'multi_cluster_ingress_feature_spec3.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpec3 {
  /// Anthos Observability spec
  final AnthosObservabilityFeatureSpec2? anthosobservability;

  /// Appdevexperience specific spec.
  final Map<String, dynamic>? appdevexperience;

  /// ClusterUpgrade (fleet-based) feature spec.
  final ClusterUpgradeFleetSpec3? clusterupgrade;

  /// FleetObservability feature spec.
  final FleetObservabilityFeatureSpec3? fleetobservability;

  /// Multicluster Ingress-specific spec.
  final MultiClusterIngressFeatureSpec3? multiclusteringress;

  CommonFeatureSpec3({
    this.anthosobservability,
    this.appdevexperience,
    this.clusterupgrade,
    this.fleetobservability,
    this.multiclusteringress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final anthosobservabilityValue = anthosobservability;
    if (anthosobservabilityValue != null) {
      map['anthosobservability'] = anthosobservabilityValue.toMap();
    }
    final appdevexperienceValue = appdevexperience;
    if (appdevexperienceValue != null) {
      map['appdevexperience'] = appdevexperienceValue;
    }
    final clusterupgradeValue = clusterupgrade;
    if (clusterupgradeValue != null) {
      map['clusterupgrade'] = clusterupgradeValue.toMap();
    }
    final fleetobservabilityValue = fleetobservability;
    if (fleetobservabilityValue != null) {
      map['fleetobservability'] = fleetobservabilityValue.toMap();
    }
    final multiclusteringressValue = multiclusteringress;
    if (multiclusteringressValue != null) {
      map['multiclusteringress'] = multiclusteringressValue.toMap();
    }
    return map;
  }

  factory CommonFeatureSpec3.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpec3(
      anthosobservability: map['anthosobservability'] == null
          ? null
          : AnthosObservabilityFeatureSpec2.fromMap(
              (map['anthosobservability'] as Map).cast<String, dynamic>()),
      appdevexperience: map['appdevexperience'] == null
          ? null
          : (map['appdevexperience'] as Map).cast<String, dynamic>(),
      clusterupgrade: map['clusterupgrade'] == null
          ? null
          : ClusterUpgradeFleetSpec3.fromMap(
              (map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability: map['fleetobservability'] == null
          ? null
          : FleetObservabilityFeatureSpec3.fromMap(
              (map['fleetobservability'] as Map).cast<String, dynamic>()),
      multiclusteringress: map['multiclusteringress'] == null
          ? null
          : MultiClusterIngressFeatureSpec3.fromMap(
              (map['multiclusteringress'] as Map).cast<String, dynamic>()),
    );
  }
}
