// ignore_for_file: unused_element, unnecessary_cast

import 'k8s_scheduling_response.dart';
import 'k8s_security_response.dart';
import 'k8s_settings_response.dart';

/// The kubernetes spec information.
class SqlManagedInstanceK8sSpecResponse {
  /// This option specifies the number of SQL Managed Instance replicas that will be deployed in your Kubernetes cluster for high availability purposes. If sku.tier is BusinessCritical, allowed values are '2' or '3' with default of '3'. If sku.tier is GeneralPurpose, replicas must be '1'.
  final int? replicas;
  /// The kubernetes scheduling information.
  final K8sSchedulingResponse? scheduling;
  /// The kubernetes security information.
  final K8sSecurityResponse? security;
  /// The kubernetes settings information.
  final K8sSettingsResponse? settings;

  /// Creates a new [SqlManagedInstanceK8sSpecResponse].
  /// [replicas] This option specifies the number of SQL Managed Instance replicas that will be deployed in your Kubernetes cluster for high availability purposes. If sku.tier is BusinessCritical, allowed values are '2' or '3' with default of '3'. If sku.tier is GeneralPurpose, replicas must be '1'.
  /// [scheduling] The kubernetes scheduling information.
  /// [security] The kubernetes security information.
  /// [settings] The kubernetes settings information.
  SqlManagedInstanceK8sSpecResponse({
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

  factory SqlManagedInstanceK8sSpecResponse.fromMap(Map<String, dynamic> map) {
    return SqlManagedInstanceK8sSpecResponse(
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
      scheduling: map['scheduling'] == null ? null : K8sSchedulingResponse.fromMap((map['scheduling'] as Map).cast<String, dynamic>()),
      security: map['security'] == null ? null : K8sSecurityResponse.fromMap((map['security'] as Map).cast<String, dynamic>()),
      settings: map['settings'] == null ? null : K8sSettingsResponse.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

