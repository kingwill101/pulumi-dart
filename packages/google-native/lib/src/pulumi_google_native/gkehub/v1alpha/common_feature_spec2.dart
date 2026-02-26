// ignore_for_file: unused_element, unnecessary_cast

import 'anthos_observability_feature_spec.dart';
import 'cloud_audit_logging_feature_spec.dart';
import 'cluster_upgrade_fleet_spec2.dart';
import 'feature_spec.dart';
import 'fleet_observability_feature_spec2.dart';
import 'multi_cluster_ingress_feature_spec2.dart';
import 'namespace_actuation_feature_spec.dart';

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpec2 {
  /// Anthos Observability spec
  final AnthosObservabilityFeatureSpec? anthosobservability;

  /// Appdevexperience specific spec.
  final Map<String, dynamic>? appdevexperience;

  /// Cloud Audit Logging-specific spec.
  final CloudAuditLoggingFeatureSpec? cloudauditlogging;

  /// ClusterUpgrade (fleet-based) feature spec.
  final ClusterUpgradeFleetSpec2? clusterupgrade;

  /// FleetObservability feature spec.
  final FleetObservabilityFeatureSpec2? fleetobservability;

  /// Multicluster Ingress-specific spec.
  final MultiClusterIngressFeatureSpec2? multiclusteringress;

  /// Namespace Actuation feature spec
  final NamespaceActuationFeatureSpec? namespaceactuation;

  /// Workload Certificate spec.
  final FeatureSpec? workloadcertificate;

  CommonFeatureSpec2({
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
    final map = <String, dynamic>{};
    final anthosobservabilityValue = anthosobservability;
    if (anthosobservabilityValue != null) {
      map['anthosobservability'] = anthosobservabilityValue.toMap();
    }
    final appdevexperienceValue = appdevexperience;
    if (appdevexperienceValue != null) {
      map['appdevexperience'] = appdevexperienceValue;
    }
    final cloudauditloggingValue = cloudauditlogging;
    if (cloudauditloggingValue != null) {
      map['cloudauditlogging'] = cloudauditloggingValue.toMap();
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
    final namespaceactuationValue = namespaceactuation;
    if (namespaceactuationValue != null) {
      map['namespaceactuation'] = namespaceactuationValue.toMap();
    }
    final workloadcertificateValue = workloadcertificate;
    if (workloadcertificateValue != null) {
      map['workloadcertificate'] = workloadcertificateValue.toMap();
    }
    return map;
  }

  factory CommonFeatureSpec2.fromMap(Map<String, dynamic> map) {
    return CommonFeatureSpec2(
      anthosobservability: map['anthosobservability'] == null
          ? null
          : AnthosObservabilityFeatureSpec.fromMap(
              (map['anthosobservability'] as Map).cast<String, dynamic>()),
      appdevexperience: map['appdevexperience'] == null
          ? null
          : (map['appdevexperience'] as Map).cast<String, dynamic>(),
      cloudauditlogging: map['cloudauditlogging'] == null
          ? null
          : CloudAuditLoggingFeatureSpec.fromMap(
              (map['cloudauditlogging'] as Map).cast<String, dynamic>()),
      clusterupgrade: map['clusterupgrade'] == null
          ? null
          : ClusterUpgradeFleetSpec2.fromMap(
              (map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability: map['fleetobservability'] == null
          ? null
          : FleetObservabilityFeatureSpec2.fromMap(
              (map['fleetobservability'] as Map).cast<String, dynamic>()),
      multiclusteringress: map['multiclusteringress'] == null
          ? null
          : MultiClusterIngressFeatureSpec2.fromMap(
              (map['multiclusteringress'] as Map).cast<String, dynamic>()),
      namespaceactuation: map['namespaceactuation'] == null
          ? null
          : NamespaceActuationFeatureSpec.fromMap(
              (map['namespaceactuation'] as Map).cast<String, dynamic>()),
      workloadcertificate: map['workloadcertificate'] == null
          ? null
          : FeatureSpec.fromMap(
              (map['workloadcertificate'] as Map).cast<String, dynamic>()),
    );
  }
}
