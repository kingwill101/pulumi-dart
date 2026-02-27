// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine.dart';
import 'basic_service.dart';
import 'cloud_endpoints.dart';
import 'cloud_run_monitoring_v3.dart';
import 'cluster_istio.dart';
import 'gke_namespace.dart';
import 'gke_service.dart';
import 'gke_workload.dart';
import 'istio_canonical_service.dart';
import 'mesh_istio.dart';
import 'telemetry.dart';

/// The set of arguments for Service.
class ServiceMonitoringV3Args {
  /// Type used for App Engine services.
  final pulumi.Input<AppEngine>? appEngine;

  /// Message that contains the service type and service labels of this service if it is a basic service. Documentation and examples here (https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
  final pulumi.Input<BasicService>? basicService;

  /// Type used for Cloud Endpoints services.
  final pulumi.Input<CloudEndpoints>? cloudEndpoints;

  /// Type used for Cloud Run services.
  final pulumi.Input<CloudRunMonitoringV3>? cloudRun;

  /// Type used for Istio services that live in a Kubernetes cluster.
  final pulumi.Input<ClusterIstio>? clusterIstio;

  /// Custom service type.
  final pulumi.Input<Map<String, dynamic>>? custom;

  /// Name used for UI elements listing this Service.
  final pulumi.Input<String>? displayName;

  /// Type used for GKE Namespaces.
  final pulumi.Input<GkeNamespace>? gkeNamespace;

  /// Type used for GKE Services (the Kubernetes concept of a service).
  final pulumi.Input<GkeService>? gkeService;

  /// Type used for GKE Workloads.
  final pulumi.Input<GkeWorkload>? gkeWorkload;

  /// Type used for canonical services scoped to an Istio mesh. Metrics for Istio are documented here (https://istio.io/latest/docs/reference/config/metrics/)
  final pulumi.Input<IstioCanonicalService>? istioCanonicalService;

  /// Type used for Istio services scoped to an Istio mesh.
  final pulumi.Input<MeshIstio>? meshIstio;

  /// Resource name for this Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]
  final pulumi.Input<String>? name;

  /// Optional. The Service id to use for this Service. If omitted, an id will be generated instead. Must match the pattern [a-z0-9\-]+
  final pulumi.Input<String>? serviceId;

  /// Configuration for how to query telemetry on a Service.
  final pulumi.Input<Telemetry>? telemetry;

  /// Labels which have been used to annotate the service. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  final pulumi.Input<Map<String, String>>? userLabels;
  final pulumi.Input<String> v3Id;
  final pulumi.Input<String> v3Id1;

  ServiceMonitoringV3Args({
    this.appEngine,
    this.basicService,
    this.cloudEndpoints,
    this.cloudRun,
    this.clusterIstio,
    this.custom,
    this.displayName,
    this.gkeNamespace,
    this.gkeService,
    this.gkeWorkload,
    this.istioCanonicalService,
    this.meshIstio,
    this.name,
    this.serviceId,
    this.telemetry,
    this.userLabels,
    required this.v3Id,
    required this.v3Id1,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineValue = appEngine;
    if (appEngineValue != null) {
      map['appEngine'] =
          pulumi.Input.mapOptionalInputValue<AppEngine, Map<String, dynamic>>(
              appEngineValue, (value) => value.toMap());
    }
    final basicServiceValue = basicService;
    if (basicServiceValue != null) {
      map['basicService'] = pulumi.Input.mapOptionalInputValue<BasicService,
          Map<String, dynamic>>(basicServiceValue, (value) => value.toMap());
    }
    final cloudEndpointsValue = cloudEndpoints;
    if (cloudEndpointsValue != null) {
      map['cloudEndpoints'] = pulumi.Input.mapOptionalInputValue<CloudEndpoints,
          Map<String, dynamic>>(cloudEndpointsValue, (value) => value.toMap());
    }
    final cloudRunValue = cloudRun;
    if (cloudRunValue != null) {
      map['cloudRun'] = pulumi.Input.mapOptionalInputValue<CloudRunMonitoringV3,
          Map<String, dynamic>>(cloudRunValue, (value) => value.toMap());
    }
    final clusterIstioValue = clusterIstio;
    if (clusterIstioValue != null) {
      map['clusterIstio'] = pulumi.Input.mapOptionalInputValue<ClusterIstio,
          Map<String, dynamic>>(clusterIstioValue, (value) => value.toMap());
    }
    final customValue = custom;
    if (customValue != null) {
      map['custom'] = customValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gkeNamespaceValue = gkeNamespace;
    if (gkeNamespaceValue != null) {
      map['gkeNamespace'] = pulumi.Input.mapOptionalInputValue<GkeNamespace,
          Map<String, dynamic>>(gkeNamespaceValue, (value) => value.toMap());
    }
    final gkeServiceValue = gkeService;
    if (gkeServiceValue != null) {
      map['gkeService'] =
          pulumi.Input.mapOptionalInputValue<GkeService, Map<String, dynamic>>(
              gkeServiceValue, (value) => value.toMap());
    }
    final gkeWorkloadValue = gkeWorkload;
    if (gkeWorkloadValue != null) {
      map['gkeWorkload'] =
          pulumi.Input.mapOptionalInputValue<GkeWorkload, Map<String, dynamic>>(
              gkeWorkloadValue, (value) => value.toMap());
    }
    final istioCanonicalServiceValue = istioCanonicalService;
    if (istioCanonicalServiceValue != null) {
      map['istioCanonicalService'] = pulumi.Input.mapOptionalInputValue<
              IstioCanonicalService, Map<String, dynamic>>(
          istioCanonicalServiceValue, (value) => value.toMap());
    }
    final meshIstioValue = meshIstio;
    if (meshIstioValue != null) {
      map['meshIstio'] =
          pulumi.Input.mapOptionalInputValue<MeshIstio, Map<String, dynamic>>(
              meshIstioValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final serviceIdValue = serviceId;
    if (serviceIdValue != null) {
      map['serviceId'] = serviceIdValue;
    }
    final telemetryValue = telemetry;
    if (telemetryValue != null) {
      map['telemetry'] =
          pulumi.Input.mapOptionalInputValue<Telemetry, Map<String, dynamic>>(
              telemetryValue, (value) => value.toMap());
    }
    final userLabelsValue = userLabels;
    if (userLabelsValue != null) {
      map['userLabels'] = userLabelsValue;
    }
    map['v3Id'] = v3Id;
    map['v3Id1'] = v3Id1;
    return map;
  }

  factory ServiceMonitoringV3Args.fromMap(Map<String, dynamic> map) {
    return ServiceMonitoringV3Args(
      appEngine: pulumi.Input.asOptionalInput<AppEngine>(map['appEngine']),
      basicService:
          pulumi.Input.asOptionalInput<BasicService>(map['basicService']),
      cloudEndpoints:
          pulumi.Input.asOptionalInput<CloudEndpoints>(map['cloudEndpoints']),
      cloudRun:
          pulumi.Input.asOptionalInput<CloudRunMonitoringV3>(map['cloudRun']),
      clusterIstio:
          pulumi.Input.asOptionalInput<ClusterIstio>(map['clusterIstio']),
      custom: pulumi.Input.asOptionalInput<Map<String, dynamic>>(map['custom']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      gkeNamespace:
          pulumi.Input.asOptionalInput<GkeNamespace>(map['gkeNamespace']),
      gkeService: pulumi.Input.asOptionalInput<GkeService>(map['gkeService']),
      gkeWorkload:
          pulumi.Input.asOptionalInput<GkeWorkload>(map['gkeWorkload']),
      istioCanonicalService:
          pulumi.Input.asOptionalInput<IstioCanonicalService>(
              map['istioCanonicalService']),
      meshIstio: pulumi.Input.asOptionalInput<MeshIstio>(map['meshIstio']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      serviceId: pulumi.Input.asOptionalInput<String>(map['serviceId']),
      telemetry: pulumi.Input.asOptionalInput<Telemetry>(map['telemetry']),
      userLabels:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['userLabels']),
      v3Id: pulumi.Input.asInput<String>(map['v3Id']),
      v3Id1: pulumi.Input.asInput<String>(map['v3Id1']),
    );
  }
}
