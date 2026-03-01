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
  final List<GetServiceMeshesMeshMeshConfigAccessLog> accessLogs;
  /// The configuration of the Service grid audit.
  final List<GetServiceMeshesMeshMeshConfigAudit> audits;
  /// (Available since v1.174.0) The configuration of the control plane logging.
  final List<GetServiceMeshesMeshMeshConfigControlPlaneLog> controlPlaneLogs;
  /// Whether or not to enable the use of a custom zipkin.
  final bool customizedZipkin;
  /// Whether to enable service can access the service through the nearest node access.
  final bool enableLocalityLb;
  /// The IP ADDRESS range.
  final String includeIpRanges;
  /// The configuration of the Kiali.
  final List<GetServiceMeshesMeshMeshConfigKiali> kialis;
  /// The open-door policy of agent (OPA) plug-in information.
  final List<GetServiceMeshesMeshMeshConfigOpa> opas;
  /// The policy of the Out to the traffic.
  final String outboundTrafficPolicy;
  /// The configuration of the Link trace sampling.
  final List<GetServiceMeshesMeshMeshConfigPilot> pilots;
  /// the configuration of the Prometheus.
  final List<GetServiceMeshesMeshMeshConfigPrometheus> prometheuses;
  /// The configuration of the Proxy.
  final List<GetServiceMeshesMeshMeshConfigProxy> proxies;
  /// The configuration of the Sidecar injector.
  final List<GetServiceMeshesMeshMeshConfigSidecarInjector> sidecarInjectors;
  /// Whether to enable acquisition Prometheus metrics.
  final bool telemetry;
  /// Whether to enable link trace.
  final bool tracing;

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
      'accessLogs': pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigAccessLog, Map<String, dynamic>>(accessLogs, (value) => value.toMap()),
      'audits': pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigAudit, Map<String, dynamic>>(audits, (value) => value.toMap()),
      'controlPlaneLogs': pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigControlPlaneLog, Map<String, dynamic>>(controlPlaneLogs, (value) => value.toMap()),
      'customizedZipkin': customizedZipkin,
      'enableLocalityLb': enableLocalityLb,
      'includeIpRanges': includeIpRanges,
      'kialis': pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigKiali, Map<String, dynamic>>(kialis, (value) => value.toMap()),
      'opas': pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigOpa, Map<String, dynamic>>(opas, (value) => value.toMap()),
      'outboundTrafficPolicy': outboundTrafficPolicy,
      'pilots': pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigPilot, Map<String, dynamic>>(pilots, (value) => value.toMap()),
      'prometheuses': pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigPrometheus, Map<String, dynamic>>(prometheuses, (value) => value.toMap()),
      'proxies': pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigProxy, Map<String, dynamic>>(proxies, (value) => value.toMap()),
      'sidecarInjectors': pulumi.Input.encodeList<GetServiceMeshesMeshMeshConfigSidecarInjector, Map<String, dynamic>>(sidecarInjectors, (value) => value.toMap()),
      'telemetry': telemetry,
      'tracing': tracing,
    };
  }

  factory GetServiceMeshesMeshMeshConfig.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshMeshConfig(
      accessLogs: pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigAccessLog>(map['accessLogs'], (value) => GetServiceMeshesMeshMeshConfigAccessLog.fromMap((value as Map).cast<String, dynamic>())),
      audits: pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigAudit>(map['audits'], (value) => GetServiceMeshesMeshMeshConfigAudit.fromMap((value as Map).cast<String, dynamic>())),
      controlPlaneLogs: pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigControlPlaneLog>(map['controlPlaneLogs'], (value) => GetServiceMeshesMeshMeshConfigControlPlaneLog.fromMap((value as Map).cast<String, dynamic>())),
      customizedZipkin: map['customizedZipkin'] as bool,
      enableLocalityLb: map['enableLocalityLb'] as bool,
      includeIpRanges: map['includeIpRanges'] as String,
      kialis: pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigKiali>(map['kialis'], (value) => GetServiceMeshesMeshMeshConfigKiali.fromMap((value as Map).cast<String, dynamic>())),
      opas: pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigOpa>(map['opas'], (value) => GetServiceMeshesMeshMeshConfigOpa.fromMap((value as Map).cast<String, dynamic>())),
      outboundTrafficPolicy: map['outboundTrafficPolicy'] as String,
      pilots: pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigPilot>(map['pilots'], (value) => GetServiceMeshesMeshMeshConfigPilot.fromMap((value as Map).cast<String, dynamic>())),
      prometheuses: pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigPrometheus>(map['prometheuses'], (value) => GetServiceMeshesMeshMeshConfigPrometheus.fromMap((value as Map).cast<String, dynamic>())),
      proxies: pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigProxy>(map['proxies'], (value) => GetServiceMeshesMeshMeshConfigProxy.fromMap((value as Map).cast<String, dynamic>())),
      sidecarInjectors: pulumi.Input.decodeList<GetServiceMeshesMeshMeshConfigSidecarInjector>(map['sidecarInjectors'], (value) => GetServiceMeshesMeshMeshConfigSidecarInjector.fromMap((value as Map).cast<String, dynamic>())),
      telemetry: map['telemetry'] as bool,
      tracing: map['tracing'] as bool,
    );
  }
}

