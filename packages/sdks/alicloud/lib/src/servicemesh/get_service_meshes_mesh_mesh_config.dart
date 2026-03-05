// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_meshes_mesh_mesh_config_access_log.dart';
import 'get_service_meshes_mesh_mesh_config_audit.dart';
import 'get_service_meshes_mesh_mesh_config_control_plane_log.dart';
import 'get_service_meshes_mesh_mesh_config_kiali.dart';
import 'get_service_meshes_mesh_mesh_config_opa.dart';
import 'get_service_meshes_mesh_mesh_config_pilot.dart';
import 'get_service_meshes_mesh_mesh_config_prometheus.dart';
import 'get_service_meshes_mesh_mesh_config_proxy.dart';
import 'get_service_meshes_mesh_mesh_config_sidecar_injector.dart';

class GetServiceMeshesMeshMeshConfig {
  /// The configuration of the access logging.
  final pulumi.Input<List<GetServiceMeshesMeshMeshConfigAccessLog>> accessLogs;
  /// The configuration of the Service grid audit.
  final pulumi.Input<List<GetServiceMeshesMeshMeshConfigAudit>> audits;
  /// (Available since v1.174.0) The configuration of the control plane logging.
  final pulumi.Input<List<GetServiceMeshesMeshMeshConfigControlPlaneLog>> controlPlaneLogs;
  /// Whether or not to enable the use of a custom zipkin.
  final pulumi.Input<bool> customizedZipkin;
  /// Whether to enable service can access the service through the nearest node access.
  final pulumi.Input<bool> enableLocalityLb;
  /// The IP ADDRESS range.
  final pulumi.Input<String> includeIpRanges;
  /// The configuration of the Kiali.
  final pulumi.Input<List<GetServiceMeshesMeshMeshConfigKiali>> kialis;
  /// The open-door policy of agent (OPA) plug-in information.
  final pulumi.Input<List<GetServiceMeshesMeshMeshConfigOpa>> opas;
  /// The policy of the Out to the traffic.
  final pulumi.Input<String> outboundTrafficPolicy;
  /// The configuration of the Link trace sampling.
  final pulumi.Input<List<GetServiceMeshesMeshMeshConfigPilot>> pilots;
  /// the configuration of the Prometheus.
  final pulumi.Input<List<GetServiceMeshesMeshMeshConfigPrometheus>> prometheuses;
  /// The configuration of the Proxy.
  final pulumi.Input<List<GetServiceMeshesMeshMeshConfigProxy>> proxies;
  /// The configuration of the Sidecar injector.
  final pulumi.Input<List<GetServiceMeshesMeshMeshConfigSidecarInjector>> sidecarInjectors;
  /// Whether to enable acquisition Prometheus metrics.
  final pulumi.Input<bool> telemetry;
  /// Whether to enable link trace.
  final pulumi.Input<bool> tracing;

  /// Creates a new [GetServiceMeshesMeshMeshConfig].
  /// [accessLogs] The configuration of the access logging.
  /// [audits] The configuration of the Service grid audit.
  /// [controlPlaneLogs] (Available since v1.174.0) The configuration of the control plane logging.
  /// [customizedZipkin] Whether or not to enable the use of a custom zipkin.
  /// [enableLocalityLb] Whether to enable service can access the service through the nearest node access.
  /// [includeIpRanges] The IP ADDRESS range.
  /// [kialis] The configuration of the Kiali.
  /// [opas] The open-door policy of agent (OPA) plug-in information.
  /// [outboundTrafficPolicy] The policy of the Out to the traffic.
  /// [pilots] The configuration of the Link trace sampling.
  /// [prometheuses] the configuration of the Prometheus.
  /// [proxies] The configuration of the Proxy.
  /// [sidecarInjectors] The configuration of the Sidecar injector.
  /// [telemetry] Whether to enable acquisition Prometheus metrics.
  /// [tracing] Whether to enable link trace.
  GetServiceMeshesMeshMeshConfig({
    required this.accessLogs,
    required this.audits,
    required this.controlPlaneLogs,
    required this.customizedZipkin,
    required this.enableLocalityLb,
    required this.includeIpRanges,
    required this.kialis,
    required this.opas,
    required this.outboundTrafficPolicy,
    required this.pilots,
    required this.prometheuses,
    required this.proxies,
    required this.sidecarInjectors,
    required this.telemetry,
    required this.tracing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogs': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshMeshConfigAccessLog>, List<Map<String, dynamic>>>(accessLogs, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigAccessLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'audits': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshMeshConfigAudit>, List<Map<String, dynamic>>>(audits, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigAudit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controlPlaneLogs': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshMeshConfigControlPlaneLog>, List<Map<String, dynamic>>>(controlPlaneLogs, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigControlPlaneLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customizedZipkin': customizedZipkin,
      'enableLocalityLb': enableLocalityLb,
      'includeIpRanges': includeIpRanges,
      'kialis': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshMeshConfigKiali>, List<Map<String, dynamic>>>(kialis, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigKiali, Map<String, dynamic>>(value, (value) => value.toMap())),
      'opas': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshMeshConfigOpa>, List<Map<String, dynamic>>>(opas, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigOpa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outboundTrafficPolicy': outboundTrafficPolicy,
      'pilots': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshMeshConfigPilot>, List<Map<String, dynamic>>>(pilots, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigPilot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prometheuses': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshMeshConfigPrometheus>, List<Map<String, dynamic>>>(prometheuses, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigPrometheus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'proxies': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshMeshConfigProxy>, List<Map<String, dynamic>>>(proxies, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigProxy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sidecarInjectors': pulumi.Input.mapInputValue<List<GetServiceMeshesMeshMeshConfigSidecarInjector>, List<Map<String, dynamic>>>(sidecarInjectors, (value) => pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigSidecarInjector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'telemetry': telemetry,
      'tracing': tracing,
    };
  }

  factory GetServiceMeshesMeshMeshConfig.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshMeshConfig(
      accessLogs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigAccessLog>(map['accessLogs']!, (value) => GetServiceMeshesMeshMeshConfigAccessLog.fromMap((value as Map).cast<String, dynamic>()))),
      audits: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigAudit>(map['audits']!, (value) => GetServiceMeshesMeshMeshConfigAudit.fromMap((value as Map).cast<String, dynamic>()))),
      controlPlaneLogs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigControlPlaneLog>(map['controlPlaneLogs']!, (value) => GetServiceMeshesMeshMeshConfigControlPlaneLog.fromMap((value as Map).cast<String, dynamic>()))),
      customizedZipkin: pulumi.Input.fromValue(map['customizedZipkin'] as bool),
      enableLocalityLb: pulumi.Input.fromValue(map['enableLocalityLb'] as bool),
      includeIpRanges: pulumi.Input.fromValue(map['includeIpRanges'] as String),
      kialis: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigKiali>(map['kialis']!, (value) => GetServiceMeshesMeshMeshConfigKiali.fromMap((value as Map).cast<String, dynamic>()))),
      opas: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigOpa>(map['opas']!, (value) => GetServiceMeshesMeshMeshConfigOpa.fromMap((value as Map).cast<String, dynamic>()))),
      outboundTrafficPolicy: pulumi.Input.fromValue(map['outboundTrafficPolicy'] as String),
      pilots: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigPilot>(map['pilots']!, (value) => GetServiceMeshesMeshMeshConfigPilot.fromMap((value as Map).cast<String, dynamic>()))),
      prometheuses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigPrometheus>(map['prometheuses']!, (value) => GetServiceMeshesMeshMeshConfigPrometheus.fromMap((value as Map).cast<String, dynamic>()))),
      proxies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigProxy>(map['proxies']!, (value) => GetServiceMeshesMeshMeshConfigProxy.fromMap((value as Map).cast<String, dynamic>()))),
      sidecarInjectors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigSidecarInjector>(map['sidecarInjectors']!, (value) => GetServiceMeshesMeshMeshConfigSidecarInjector.fromMap((value as Map).cast<String, dynamic>()))),
      telemetry: pulumi.Input.fromValue(map['telemetry'] as bool),
      tracing: pulumi.Input.fromValue(map['tracing'] as bool),
    );
  }
}

