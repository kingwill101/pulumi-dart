// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_scheduling_response.dart';
import 'k8s_security_response.dart';
import 'k8s_settings_response.dart';

/// The kubernetes spec information.
class SqlManagedInstanceK8sSpecResponse {
  /// This option specifies the number of SQL Managed Instance replicas that will be deployed in your Kubernetes cluster for high availability purposes. If sku.tier is BusinessCritical, allowed values are '2' or '3' with default of '3'. If sku.tier is GeneralPurpose, replicas must be '1'.
  final pulumi.Input<int?>? replicas;
  /// The kubernetes scheduling information.
  final pulumi.Input<K8sSchedulingResponse?>? scheduling;
  /// The kubernetes security information.
  final pulumi.Input<K8sSecurityResponse?>? security;
  /// The kubernetes settings information.
  final pulumi.Input<K8sSettingsResponse?>? settings;

  /// Creates a new [SqlManagedInstanceK8sSpecResponse].
  /// [replicas] This option specifies the number of SQL Managed Instance replicas that will be deployed in your Kubernetes cluster for high availability purposes. If sku.tier is BusinessCritical, allowed values are '2' or '3' with default of '3'. If sku.tier is GeneralPurpose, replicas must be '1'.
  /// [scheduling] The kubernetes scheduling information.
  /// [security] The kubernetes security information.
  /// [settings] The kubernetes settings information.
  const SqlManagedInstanceK8sSpecResponse({
    this.replicas,
    this.scheduling,
    this.security,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<K8sSchedulingResponse, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'security': ?pulumi.Input.mapOptionalInputValue<K8sSecurityResponse, Map<String, dynamic>>(security, (value) => value.toMap()),
      'settings': ?pulumi.Input.mapOptionalInputValue<K8sSettingsResponse, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory SqlManagedInstanceK8sSpecResponse.fromMap(Map<String, dynamic> map) {
    return SqlManagedInstanceK8sSpecResponse(
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      scheduling: (() { final guardedValue = map['scheduling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(K8sSchedulingResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      security: (() { final guardedValue = map['security']; if (guardedValue == null) return null; return pulumi.Input.fromValue(K8sSecurityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(K8sSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
