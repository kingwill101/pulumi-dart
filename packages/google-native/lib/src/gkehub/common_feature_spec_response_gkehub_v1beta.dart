// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_feature_spec_response_gkehub_v1beta.dart';
import 'cluster_upgrade_fleet_spec_response_gkehub_v1beta.dart';
import 'fleet_observability_feature_spec_response_gkehub_v1beta.dart';
import 'multi_cluster_ingress_feature_spec_response_gkehub_v1beta.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpecResponseGkehubV1beta {
  /// Anthos Observability spec
  final AnthosObservabilityFeatureSpecResponseGkehubV1beta anthosobservability;

  /// Appdevexperience specific spec.
  final Map<String, dynamic> appdevexperience;

  /// ClusterUpgrade (fleet-based) feature spec.
  final ClusterUpgradeFleetSpecResponseGkehubV1beta clusterupgrade;

  /// FleetObservability feature spec.
  final FleetObservabilityFeatureSpecResponseGkehubV1beta fleetobservability;

  /// Multicluster Ingress-specific spec.
  final MultiClusterIngressFeatureSpecResponseGkehubV1beta multiclusteringress;

  /// Creates a new [CommonFeatureSpecResponseGkehubV1beta].
  /// [anthosobservability] Anthos Observability spec
  /// [appdevexperience] Appdevexperience specific spec.
  /// [clusterupgrade] ClusterUpgrade (fleet-based) feature spec.
  /// [fleetobservability] FleetObservability feature spec.
  /// [multiclusteringress] Multicluster Ingress-specific spec.
  CommonFeatureSpecResponseGkehubV1beta({
    required this.anthosobservability,
    required this.appdevexperience,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.multiclusteringress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anthosobservability': anthosobservability.toMap(),
      'appdevexperience': appdevexperience,
      'clusterupgrade': clusterupgrade.toMap(),
      'fleetobservability': fleetobservability.toMap(),
      'multiclusteringress': multiclusteringress.toMap(),
    };
  }

  factory CommonFeatureSpecResponseGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return CommonFeatureSpecResponseGkehubV1beta(
      anthosobservability:
          AnthosObservabilityFeatureSpecResponseGkehubV1beta.fromMap(
            (map['anthosobservability'] as Map).cast<String, dynamic>(),
          ),
      appdevexperience: (map['appdevexperience'] as Map)
          .cast<String, dynamic>(),
      clusterupgrade: ClusterUpgradeFleetSpecResponseGkehubV1beta.fromMap(
        (map['clusterupgrade'] as Map).cast<String, dynamic>(),
      ),
      fleetobservability:
          FleetObservabilityFeatureSpecResponseGkehubV1beta.fromMap(
            (map['fleetobservability'] as Map).cast<String, dynamic>(),
          ),
      multiclusteringress:
          MultiClusterIngressFeatureSpecResponseGkehubV1beta.fromMap(
            (map['multiclusteringress'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
