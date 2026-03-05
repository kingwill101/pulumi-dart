// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mesh_mesh_config_access_log.dart';
import 'service_mesh_mesh_config_audit.dart';
import 'service_mesh_mesh_config_control_plane_log.dart';
import 'service_mesh_mesh_config_kiali.dart';
import 'service_mesh_mesh_config_opa.dart';
import 'service_mesh_mesh_config_pilot.dart';
import 'service_mesh_mesh_config_prometheus.dart';
import 'service_mesh_mesh_config_proxy.dart';
import 'service_mesh_mesh_config_sidecar_injector.dart';

class ServiceMeshMeshConfig {
  /// The access logging configuration See `access_log` below.
  final pulumi.Input<ServiceMeshMeshConfigAccessLog>? accessLog;
  /// Audit information See `audit` below.
  final pulumi.Input<ServiceMeshMeshConfigAudit>? audit;
  /// Control plane log collection configuration. See `control_plane_log` below.
  final pulumi.Input<ServiceMeshMeshConfigControlPlaneLog>? controlPlaneLog;
  /// Whether or not to enable the use of a custom zipkin
  final pulumi.Input<bool>? customizedZipkin;
  /// Whether to enable service can access the service through the nearest node access
  final pulumi.Input<bool>? enableLocalityLb;
  /// The IP ADDRESS range
  final pulumi.Input<String>? includeIpRanges;
  /// Kiali configuration See `kiali` below.
  final pulumi.Input<ServiceMeshMeshConfigKiali>? kiali;
  /// The open-door policy of agent (OPA) plug-in information See `opa` below.
  final pulumi.Input<ServiceMeshMeshConfigOpa>? opa;
  /// Out to the traffic policy
  final pulumi.Input<String>? outboundTrafficPolicy;
  /// Link trace sampling information See `pilot` below.
  final pulumi.Input<ServiceMeshMeshConfigPilot>? pilot;
  /// Prometheus configuration
  final pulumi.Input<ServiceMeshMeshConfigPrometheus>? prometheus;
  /// Proxy configuration, the fields under this structure have service segment default values, if not explicitly specified, you need to manually add them based on the return value of the server after the instance is created. See `proxy` below.
  final pulumi.Input<ServiceMeshMeshConfigProxy>? proxy;
  /// Sidecar injector configuration See `sidecar_injector` below.
  final pulumi.Input<ServiceMeshMeshConfigSidecarInjector>? sidecarInjector;
  /// Whether to enable acquisition Prometheus metrics (it is recommended that you use [Alibaba Cloud Prometheus monitoring](https://arms.console.aliyun.com/)
  final pulumi.Input<bool>? telemetry;
  /// Whether to enable link trace (you need to have [Alibaba Cloud link tracking service](https://tracing-analysis.console.aliyun.com/)
  final pulumi.Input<bool>? tracing;

  /// Creates a new [ServiceMeshMeshConfig].
  /// [accessLog] The access logging configuration See `access_log` below.
  /// [audit] Audit information See `audit` below.
  /// [controlPlaneLog] Control plane log collection configuration. See `control_plane_log` below.
  /// [customizedZipkin] Whether or not to enable the use of a custom zipkin
  /// [enableLocalityLb] Whether to enable service can access the service through the nearest node access
  /// [includeIpRanges] The IP ADDRESS range
  /// [kiali] Kiali configuration See `kiali` below.
  /// [opa] The open-door policy of agent (OPA) plug-in information See `opa` below.
  /// [outboundTrafficPolicy] Out to the traffic policy
  /// [pilot] Link trace sampling information See `pilot` below.
  /// [prometheus] Prometheus configuration
  /// [proxy] Proxy configuration, the fields under this structure have service segment default values, if not explicitly specified, you need to manually add them based on the return value of the server after the instance is created. See `proxy` below.
  /// [sidecarInjector] Sidecar injector configuration See `sidecar_injector` below.
  /// [telemetry] Whether to enable acquisition Prometheus metrics (it is recommended that you use [Alibaba Cloud Prometheus monitoring](https://arms.console.aliyun.com/)
  /// [tracing] Whether to enable link trace (you need to have [Alibaba Cloud link tracking service](https://tracing-analysis.console.aliyun.com/)
  ServiceMeshMeshConfig({
    this.accessLog,
    this.audit,
    this.controlPlaneLog,
    this.customizedZipkin,
    this.enableLocalityLb,
    this.includeIpRanges,
    this.kiali,
    this.opa,
    this.outboundTrafficPolicy,
    this.pilot,
    this.prometheus,
    this.proxy,
    this.sidecarInjector,
    this.telemetry,
    this.tracing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLog': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigAccessLog, Map<String, dynamic>>(accessLog, (value) => value.toMap()),
      'audit': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigAudit, Map<String, dynamic>>(audit, (value) => value.toMap()),
      'controlPlaneLog': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigControlPlaneLog, Map<String, dynamic>>(controlPlaneLog, (value) => value.toMap()),
      'customizedZipkin': ?customizedZipkin,
      'enableLocalityLb': ?enableLocalityLb,
      'includeIpRanges': ?includeIpRanges,
      'kiali': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigKiali, Map<String, dynamic>>(kiali, (value) => value.toMap()),
      'opa': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigOpa, Map<String, dynamic>>(opa, (value) => value.toMap()),
      'outboundTrafficPolicy': ?outboundTrafficPolicy,
      'pilot': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigPilot, Map<String, dynamic>>(pilot, (value) => value.toMap()),
      'prometheus': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigPrometheus, Map<String, dynamic>>(prometheus, (value) => value.toMap()),
      'proxy': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigProxy, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'sidecarInjector': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigSidecarInjector, Map<String, dynamic>>(sidecarInjector, (value) => value.toMap()),
      'telemetry': ?telemetry,
      'tracing': ?tracing,
    };
  }

  factory ServiceMeshMeshConfig.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfig(
      accessLog: (() { final guardedValue = map['accessLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfigAccessLog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      audit: (() { final guardedValue = map['audit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfigAudit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      controlPlaneLog: (() { final guardedValue = map['controlPlaneLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfigControlPlaneLog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customizedZipkin: (() { final guardedValue = map['customizedZipkin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLocalityLb: (() { final guardedValue = map['enableLocalityLb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeIpRanges: (() { final guardedValue = map['includeIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kiali: (() { final guardedValue = map['kiali']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfigKiali.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      opa: (() { final guardedValue = map['opa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfigOpa.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outboundTrafficPolicy: (() { final guardedValue = map['outboundTrafficPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pilot: (() { final guardedValue = map['pilot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfigPilot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prometheus: (() { final guardedValue = map['prometheus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfigPrometheus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proxy: (() { final guardedValue = map['proxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfigProxy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sidecarInjector: (() { final guardedValue = map['sidecarInjector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfigSidecarInjector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      telemetry: (() { final guardedValue = map['telemetry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tracing: (() { final guardedValue = map['tracing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

