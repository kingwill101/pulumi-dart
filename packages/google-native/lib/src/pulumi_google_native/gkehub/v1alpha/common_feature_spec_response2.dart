// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_feature_spec_response.dart';
import 'cloud_audit_logging_feature_spec_response.dart';
import 'cluster_upgrade_fleet_spec_response2.dart';
import 'feature_spec_response.dart';
import 'fleet_observability_feature_spec_response2.dart';
import 'multi_cluster_ingress_feature_spec_response2.dart';
import 'namespace_actuation_feature_spec_response.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpecResponse2 {
  /// Anthos Observability spec
  final AnthosObservabilityFeatureSpecResponse anthosobservability;

  /// Appdevexperience specific spec.
  final Map<String, dynamic> appdevexperience;

  /// Cloud Audit Logging-specific spec.
  final CloudAuditLoggingFeatureSpecResponse cloudauditlogging;

  /// ClusterUpgrade (fleet-based) feature spec.
  final ClusterUpgradeFleetSpecResponse2 clusterupgrade;

  /// FleetObservability feature spec.
  final FleetObservabilityFeatureSpecResponse2 fleetobservability;

  /// Multicluster Ingress-specific spec.
  final MultiClusterIngressFeatureSpecResponse2 multiclusteringress;

  /// Namespace Actuation feature spec
  final NamespaceActuationFeatureSpecResponse namespaceactuation;

  /// Workload Certificate spec.
  final FeatureSpecResponse workloadcertificate;

  CommonFeatureSpecResponse2({
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

  factory CommonFeatureSpecResponse2.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpecResponse2(
      anthosobservability: AnthosObservabilityFeatureSpecResponse.fromMap(
          (map['anthosobservability'] as Map).cast<String, dynamic>()),
      appdevexperience:
          (map['appdevexperience'] as Map).cast<String, dynamic>(),
      cloudauditlogging: CloudAuditLoggingFeatureSpecResponse.fromMap(
          (map['cloudauditlogging'] as Map).cast<String, dynamic>()),
      clusterupgrade: ClusterUpgradeFleetSpecResponse2.fromMap(
          (map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability: FleetObservabilityFeatureSpecResponse2.fromMap(
          (map['fleetobservability'] as Map).cast<String, dynamic>()),
      multiclusteringress: MultiClusterIngressFeatureSpecResponse2.fromMap(
          (map['multiclusteringress'] as Map).cast<String, dynamic>()),
      namespaceactuation: NamespaceActuationFeatureSpecResponse.fromMap(
          (map['namespaceactuation'] as Map).cast<String, dynamic>()),
      workloadcertificate: FeatureSpecResponse.fromMap(
          (map['workloadcertificate'] as Map).cast<String, dynamic>()),
    );
  }
}
