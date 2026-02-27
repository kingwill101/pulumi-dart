// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_feature_spec_gkehub_v1beta.dart';
import 'cluster_upgrade_fleet_spec_gkehub_v1beta.dart';
import 'fleet_observability_feature_spec_gkehub_v1beta.dart';
import 'multi_cluster_ingress_feature_spec_gkehub_v1beta.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpecGkehubV1beta {
  /// Anthos Observability spec
  final AnthosObservabilityFeatureSpecGkehubV1beta? anthosobservability;

  /// Appdevexperience specific spec.
  final Map<String, dynamic>? appdevexperience;

  /// ClusterUpgrade (fleet-based) feature spec.
  final ClusterUpgradeFleetSpecGkehubV1beta? clusterupgrade;

  /// FleetObservability feature spec.
  final FleetObservabilityFeatureSpecGkehubV1beta? fleetobservability;

  /// Multicluster Ingress-specific spec.
  final MultiClusterIngressFeatureSpecGkehubV1beta? multiclusteringress;

  CommonFeatureSpecGkehubV1beta({
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

  factory CommonFeatureSpecGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpecGkehubV1beta(
      anthosobservability: map['anthosobservability'] == null
          ? null
          : AnthosObservabilityFeatureSpecGkehubV1beta.fromMap(
              (map['anthosobservability'] as Map).cast<String, dynamic>()),
      appdevexperience: map['appdevexperience'] == null
          ? null
          : (map['appdevexperience'] as Map).cast<String, dynamic>(),
      clusterupgrade: map['clusterupgrade'] == null
          ? null
          : ClusterUpgradeFleetSpecGkehubV1beta.fromMap(
              (map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability: map['fleetobservability'] == null
          ? null
          : FleetObservabilityFeatureSpecGkehubV1beta.fromMap(
              (map['fleetobservability'] as Map).cast<String, dynamic>()),
      multiclusteringress: map['multiclusteringress'] == null
          ? null
          : MultiClusterIngressFeatureSpecGkehubV1beta.fromMap(
              (map['multiclusteringress'] as Map).cast<String, dynamic>()),
    );
  }
}
