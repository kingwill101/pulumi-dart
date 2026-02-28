// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_fleet_spec.dart';
import 'fleet_observability_feature_spec.dart';
import 'multi_cluster_ingress_feature_spec.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpec {
  /// Appdevexperience specific spec.
  final Map<String, dynamic>? appdevexperience;

  /// ClusterUpgrade (fleet-based) feature spec.
  final ClusterUpgradeFleetSpec? clusterupgrade;

  /// FleetObservability feature spec.
  final FleetObservabilityFeatureSpec? fleetobservability;

  /// Multicluster Ingress-specific spec.
  final MultiClusterIngressFeatureSpec? multiclusteringress;

  /// Creates a new [CommonFeatureSpec].
  /// [appdevexperience] Appdevexperience specific spec.
  /// [clusterupgrade] ClusterUpgrade (fleet-based) feature spec.
  /// [fleetobservability] FleetObservability feature spec.
  /// [multiclusteringress] Multicluster Ingress-specific spec.
  CommonFeatureSpec({
    this.appdevexperience,
    this.clusterupgrade,
    this.fleetobservability,
    this.multiclusteringress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory CommonFeatureSpec.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpec(
      appdevexperience: map['appdevexperience'] == null
          ? null
          : (map['appdevexperience'] as Map).cast<String, dynamic>(),
      clusterupgrade: map['clusterupgrade'] == null
          ? null
          : ClusterUpgradeFleetSpec.fromMap(
              (map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability: map['fleetobservability'] == null
          ? null
          : FleetObservabilityFeatureSpec.fromMap(
              (map['fleetobservability'] as Map).cast<String, dynamic>()),
      multiclusteringress: map['multiclusteringress'] == null
          ? null
          : MultiClusterIngressFeatureSpec.fromMap(
              (map['multiclusteringress'] as Map).cast<String, dynamic>()),
    );
  }
}
