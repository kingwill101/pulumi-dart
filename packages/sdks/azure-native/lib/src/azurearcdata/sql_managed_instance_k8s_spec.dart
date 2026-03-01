// ignore_for_file: unused_element, unnecessary_cast

import 'k8s_scheduling.dart';
import 'k8s_security.dart';
import 'k8s_settings.dart';

/// The kubernetes spec information.
class SqlManagedInstanceK8sSpec {
  /// This option specifies the number of SQL Managed Instance replicas that will be deployed in your Kubernetes cluster for high availability purposes. If sku.tier is BusinessCritical, allowed values are '2' or '3' with default of '3'. If sku.tier is GeneralPurpose, replicas must be '1'.
  final int? replicas;
  /// The kubernetes scheduling information.
  final K8sScheduling? scheduling;
  /// The kubernetes security information.
  final K8sSecurity? security;
  /// The kubernetes settings information.
  final K8sSettings? settings;

  /// Creates a new [SqlManagedInstanceK8sSpec].
  /// [replicas] This option specifies the number of SQL Managed Instance replicas that will be deployed in your Kubernetes cluster for high availability purposes. If sku.tier is BusinessCritical, allowed values are '2' or '3' with default of '3'. If sku.tier is GeneralPurpose, replicas must be '1'.
  /// [scheduling] The kubernetes scheduling information.
  /// [security] The kubernetes security information.
  /// [settings] The kubernetes settings information.
  SqlManagedInstanceK8sSpec({
    this.replicas,
    this.scheduling,
    this.security,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas,
      'scheduling': ?scheduling == null ? null : scheduling!.toMap(),
      'security': ?security == null ? null : security!.toMap(),
      'settings': ?settings == null ? null : settings!.toMap(),
    };
  }

  factory SqlManagedInstanceK8sSpec.fromMap(Map<String, dynamic> map) {
    return SqlManagedInstanceK8sSpec(
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
      scheduling: map['scheduling'] == null ? null : K8sScheduling.fromMap((map['scheduling'] as Map).cast<String, dynamic>()),
      security: map['security'] == null ? null : K8sSecurity.fromMap((map['security'] as Map).cast<String, dynamic>()),
      settings: map['settings'] == null ? null : K8sSettings.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

