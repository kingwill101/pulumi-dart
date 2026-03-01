// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_feature_spec.dart';
import 'cloud_audit_logging_feature_spec.dart';
import 'cluster_upgrade_fleet_spec_gkehub_v1alpha.dart';
import 'feature_spec.dart';
import 'fleet_observability_feature_spec_gkehub_v1alpha.dart';
import 'multi_cluster_ingress_feature_spec_gkehub_v1alpha.dart';
import 'namespace_actuation_feature_spec.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpecGkehubV1alpha {
  /// Anthos Observability spec
  final AnthosObservabilityFeatureSpec? anthosobservability;

  /// Appdevexperience specific spec.
  final Map<String, dynamic>? appdevexperience;

  /// Cloud Audit Logging-specific spec.
  final CloudAuditLoggingFeatureSpec? cloudauditlogging;

  /// ClusterUpgrade (fleet-based) feature spec.
  final ClusterUpgradeFleetSpecGkehubV1alpha? clusterupgrade;

  /// FleetObservability feature spec.
  final FleetObservabilityFeatureSpecGkehubV1alpha? fleetobservability;

  /// Multicluster Ingress-specific spec.
  final MultiClusterIngressFeatureSpecGkehubV1alpha? multiclusteringress;

  /// Namespace Actuation feature spec
  final NamespaceActuationFeatureSpec? namespaceactuation;

  /// Workload Certificate spec.
  final FeatureSpec? workloadcertificate;

  /// Creates a new [CommonFeatureSpecGkehubV1alpha].
  /// [anthosobservability] Anthos Observability spec
  /// [appdevexperience] Appdevexperience specific spec.
  /// [cloudauditlogging] Cloud Audit Logging-specific spec.
  /// [clusterupgrade] ClusterUpgrade (fleet-based) feature spec.
  /// [fleetobservability] FleetObservability feature spec.
  /// [multiclusteringress] Multicluster Ingress-specific spec.
  /// [namespaceactuation] Namespace Actuation feature spec
  /// [workloadcertificate] Workload Certificate spec.
  CommonFeatureSpecGkehubV1alpha({
    this.anthosobservability,
    this.appdevexperience,
    this.cloudauditlogging,
    this.clusterupgrade,
    this.fleetobservability,
    this.multiclusteringress,
    this.namespaceactuation,
    this.workloadcertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anthosobservability': ?anthosobservability == null
          ? null
          : anthosobservability!.toMap(),
      'appdevexperience': ?appdevexperience,
      'cloudauditlogging': ?cloudauditlogging == null
          ? null
          : cloudauditlogging!.toMap(),
      'clusterupgrade': ?clusterupgrade == null
          ? null
          : clusterupgrade!.toMap(),
      'fleetobservability': ?fleetobservability == null
          ? null
          : fleetobservability!.toMap(),
      'multiclusteringress': ?multiclusteringress == null
          ? null
          : multiclusteringress!.toMap(),
      'namespaceactuation': ?namespaceactuation == null
          ? null
          : namespaceactuation!.toMap(),
      'workloadcertificate': ?workloadcertificate == null
          ? null
          : workloadcertificate!.toMap(),
    };
  }

  factory CommonFeatureSpecGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpecGkehubV1alpha(
      anthosobservability: map['anthosobservability'] == null
          ? null
          : AnthosObservabilityFeatureSpec.fromMap(
              (map['anthosobservability'] as Map).cast<String, dynamic>(),
            ),
      appdevexperience: map['appdevexperience'] == null
          ? null
          : (map['appdevexperience'] as Map).cast<String, dynamic>(),
      cloudauditlogging: map['cloudauditlogging'] == null
          ? null
          : CloudAuditLoggingFeatureSpec.fromMap(
              (map['cloudauditlogging'] as Map).cast<String, dynamic>(),
            ),
      clusterupgrade: map['clusterupgrade'] == null
          ? null
          : ClusterUpgradeFleetSpecGkehubV1alpha.fromMap(
              (map['clusterupgrade'] as Map).cast<String, dynamic>(),
            ),
      fleetobservability: map['fleetobservability'] == null
          ? null
          : FleetObservabilityFeatureSpecGkehubV1alpha.fromMap(
              (map['fleetobservability'] as Map).cast<String, dynamic>(),
            ),
      multiclusteringress: map['multiclusteringress'] == null
          ? null
          : MultiClusterIngressFeatureSpecGkehubV1alpha.fromMap(
              (map['multiclusteringress'] as Map).cast<String, dynamic>(),
            ),
      namespaceactuation: map['namespaceactuation'] == null
          ? null
          : NamespaceActuationFeatureSpec.fromMap(
              (map['namespaceactuation'] as Map).cast<String, dynamic>(),
            ),
      workloadcertificate: map['workloadcertificate'] == null
          ? null
          : FeatureSpec.fromMap(
              (map['workloadcertificate'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
