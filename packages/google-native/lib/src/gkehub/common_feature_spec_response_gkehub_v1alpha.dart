// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_feature_spec_response.dart';
import 'cloud_audit_logging_feature_spec_response.dart';
import 'cluster_upgrade_fleet_spec_response_gkehub_v1alpha.dart';
import 'feature_spec_response.dart';
import 'fleet_observability_feature_spec_response_gkehub_v1alpha.dart';
import 'multi_cluster_ingress_feature_spec_response_gkehub_v1alpha.dart';
import 'namespace_actuation_feature_spec_response.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpecResponseGkehubV1alpha {
  /// Anthos Observability spec
  final AnthosObservabilityFeatureSpecResponse anthosobservability;

  /// Appdevexperience specific spec.
  final Map<String, dynamic> appdevexperience;

  /// Cloud Audit Logging-specific spec.
  final CloudAuditLoggingFeatureSpecResponse cloudauditlogging;

  /// ClusterUpgrade (fleet-based) feature spec.
  final ClusterUpgradeFleetSpecResponseGkehubV1alpha clusterupgrade;

  /// FleetObservability feature spec.
  final FleetObservabilityFeatureSpecResponseGkehubV1alpha fleetobservability;

  /// Multicluster Ingress-specific spec.
  final MultiClusterIngressFeatureSpecResponseGkehubV1alpha multiclusteringress;

  /// Namespace Actuation feature spec
  final NamespaceActuationFeatureSpecResponse namespaceactuation;

  /// Workload Certificate spec.
  final FeatureSpecResponse workloadcertificate;

  /// Creates a new [CommonFeatureSpecResponseGkehubV1alpha].
  /// [anthosobservability] Anthos Observability spec
  /// [appdevexperience] Appdevexperience specific spec.
  /// [cloudauditlogging] Cloud Audit Logging-specific spec.
  /// [clusterupgrade] ClusterUpgrade (fleet-based) feature spec.
  /// [fleetobservability] FleetObservability feature spec.
  /// [multiclusteringress] Multicluster Ingress-specific spec.
  /// [namespaceactuation] Namespace Actuation feature spec
  /// [workloadcertificate] Workload Certificate spec.
  CommonFeatureSpecResponseGkehubV1alpha({
    required this.anthosobservability,
    required this.appdevexperience,
    required this.cloudauditlogging,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.multiclusteringress,
    required this.namespaceactuation,
    required this.workloadcertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['anthosobservability'] = anthosobservability.toMap();
    map['appdevexperience'] = appdevexperience;
    map['cloudauditlogging'] = cloudauditlogging.toMap();
    map['clusterupgrade'] = clusterupgrade.toMap();
    map['fleetobservability'] = fleetobservability.toMap();
    map['multiclusteringress'] = multiclusteringress.toMap();
    map['namespaceactuation'] = namespaceactuation.toMap();
    map['workloadcertificate'] = workloadcertificate.toMap();
    return map;
  }

  factory CommonFeatureSpecResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return CommonFeatureSpecResponseGkehubV1alpha(
      anthosobservability: AnthosObservabilityFeatureSpecResponse.fromMap(
          (map['anthosobservability'] as Map).cast<String, dynamic>()),
      appdevexperience:
          (map['appdevexperience'] as Map).cast<String, dynamic>(),
      cloudauditlogging: CloudAuditLoggingFeatureSpecResponse.fromMap(
          (map['cloudauditlogging'] as Map).cast<String, dynamic>()),
      clusterupgrade: ClusterUpgradeFleetSpecResponseGkehubV1alpha.fromMap(
          (map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability:
          FleetObservabilityFeatureSpecResponseGkehubV1alpha.fromMap(
              (map['fleetobservability'] as Map).cast<String, dynamic>()),
      multiclusteringress:
          MultiClusterIngressFeatureSpecResponseGkehubV1alpha.fromMap(
              (map['multiclusteringress'] as Map).cast<String, dynamic>()),
      namespaceactuation: NamespaceActuationFeatureSpecResponse.fromMap(
          (map['namespaceactuation'] as Map).cast<String, dynamic>()),
      workloadcertificate: FeatureSpecResponse.fromMap(
          (map['workloadcertificate'] as Map).cast<String, dynamic>()),
    );
  }
}
