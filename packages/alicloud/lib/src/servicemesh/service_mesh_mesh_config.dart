// ignore_for_file: unused_element, unnecessary_cast

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
  final ServiceMeshMeshConfigAccessLog? accessLog;
  /// Audit information See `audit` below.
  final ServiceMeshMeshConfigAudit? audit;
  /// Control plane log collection configuration. See `control_plane_log` below.
  final ServiceMeshMeshConfigControlPlaneLog? controlPlaneLog;
  /// Whether or not to enable the use of a custom zipkin
  final bool? customizedZipkin;
  /// Whether to enable service can access the service through the nearest node access
  final bool? enableLocalityLb;
  /// The IP ADDRESS range
  final String? includeIpRanges;
  /// Kiali configuration See `kiali` below.
  final ServiceMeshMeshConfigKiali? kiali;
  /// The open-door policy of agent (OPA) plug-in information See `opa` below.
  final ServiceMeshMeshConfigOpa? opa;
  /// Out to the traffic policy
  final String? outboundTrafficPolicy;
  /// Link trace sampling information See `pilot` below.
  final ServiceMeshMeshConfigPilot? pilot;
  /// Prometheus configuration
  final ServiceMeshMeshConfigPrometheus? prometheus;
  /// Proxy configuration, the fields under this structure have service segment default values, if not explicitly specified, you need to manually add them based on the return value of the server after the instance is created. See `proxy` below.
  final ServiceMeshMeshConfigProxy? proxy;
  /// Sidecar injector configuration See `sidecar_injector` below.
  final ServiceMeshMeshConfigSidecarInjector? sidecarInjector;
  /// Whether to enable acquisition Prometheus metrics (it is recommended that you use [Alibaba Cloud Prometheus monitoring](https://arms.console.aliyun.com/)
  final bool? telemetry;
  /// Whether to enable link trace (you need to have [Alibaba Cloud link tracking service](https://tracing-analysis.console.aliyun.com/)
  final bool? tracing;

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
      'accessLog': ?accessLog == null ? null : accessLog!.toMap(),
      'audit': ?audit == null ? null : audit!.toMap(),
      'controlPlaneLog': ?controlPlaneLog == null ? null : controlPlaneLog!.toMap(),
      'customizedZipkin': ?customizedZipkin,
      'enableLocalityLb': ?enableLocalityLb,
      'includeIpRanges': ?includeIpRanges,
      'kiali': ?kiali == null ? null : kiali!.toMap(),
      'opa': ?opa == null ? null : opa!.toMap(),
      'outboundTrafficPolicy': ?outboundTrafficPolicy,
      'pilot': ?pilot == null ? null : pilot!.toMap(),
      'prometheus': ?prometheus == null ? null : prometheus!.toMap(),
      'proxy': ?proxy == null ? null : proxy!.toMap(),
      'sidecarInjector': ?sidecarInjector == null ? null : sidecarInjector!.toMap(),
      'telemetry': ?telemetry,
      'tracing': ?tracing,
    };
  }

  factory ServiceMeshMeshConfig.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfig(
      accessLog: map['accessLog'] == null ? null : ServiceMeshMeshConfigAccessLog.fromMap((map['accessLog'] as Map).cast<String, dynamic>()),
      audit: map['audit'] == null ? null : ServiceMeshMeshConfigAudit.fromMap((map['audit'] as Map).cast<String, dynamic>()),
      controlPlaneLog: map['controlPlaneLog'] == null ? null : ServiceMeshMeshConfigControlPlaneLog.fromMap((map['controlPlaneLog'] as Map).cast<String, dynamic>()),
      customizedZipkin: map['customizedZipkin'] == null ? null : map['customizedZipkin'] as bool,
      enableLocalityLb: map['enableLocalityLb'] == null ? null : map['enableLocalityLb'] as bool,
      includeIpRanges: map['includeIpRanges'] == null ? null : map['includeIpRanges'] as String,
      kiali: map['kiali'] == null ? null : ServiceMeshMeshConfigKiali.fromMap((map['kiali'] as Map).cast<String, dynamic>()),
      opa: map['opa'] == null ? null : ServiceMeshMeshConfigOpa.fromMap((map['opa'] as Map).cast<String, dynamic>()),
      outboundTrafficPolicy: map['outboundTrafficPolicy'] == null ? null : map['outboundTrafficPolicy'] as String,
      pilot: map['pilot'] == null ? null : ServiceMeshMeshConfigPilot.fromMap((map['pilot'] as Map).cast<String, dynamic>()),
      prometheus: map['prometheus'] == null ? null : ServiceMeshMeshConfigPrometheus.fromMap((map['prometheus'] as Map).cast<String, dynamic>()),
      proxy: map['proxy'] == null ? null : ServiceMeshMeshConfigProxy.fromMap((map['proxy'] as Map).cast<String, dynamic>()),
      sidecarInjector: map['sidecarInjector'] == null ? null : ServiceMeshMeshConfigSidecarInjector.fromMap((map['sidecarInjector'] as Map).cast<String, dynamic>()),
      telemetry: map['telemetry'] == null ? null : map['telemetry'] as bool,
      tracing: map['tracing'] == null ? null : map['tracing'] as bool,
    );
  }
}

