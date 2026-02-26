// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_backend_service_backend/get_backend_service_backend.dart';
import '../get_backend_service_cdn_policy/get_backend_service_cdn_policy.dart';
import '../get_backend_service_circuit_breaker/get_backend_service_circuit_breaker.dart';
import '../get_backend_service_consistent_hash/get_backend_service_consistent_hash.dart';
import '../get_backend_service_custom_metric/get_backend_service_custom_metric.dart';
import '../get_backend_service_dynamic_forwarding/get_backend_service_dynamic_forwarding.dart';
import '../get_backend_service_iap/get_backend_service_iap.dart';
import '../get_backend_service_locality_lb_policy/get_backend_service_locality_lb_policy.dart';
import '../get_backend_service_log_config/get_backend_service_log_config.dart';
import '../get_backend_service_max_stream_duration/get_backend_service_max_stream_duration.dart';
import '../get_backend_service_network_pass_through_lb_traffic_policy/get_backend_service_network_pass_through_lb_traffic_policy.dart';
import '../get_backend_service_outlier_detection/get_backend_service_outlier_detection.dart';
import '../get_backend_service_param/get_backend_service_param.dart';
import '../get_backend_service_security_setting/get_backend_service_security_setting.dart';
import '../get_backend_service_strong_session_affinity_cooky/get_backend_service_strong_session_affinity_cooky.dart';
import '../get_backend_service_tls_setting/get_backend_service_tls_setting.dart';

/// Result data returned by getBackendService.
class GetBackendServiceResult {
  final int affinityCookieTtlSec;

  /// The set of backends that serve this Backend Service.
  final List<GetBackendServiceBackend> backends;
  final List<GetBackendServiceCdnPolicy> cdnPolicies;
  final List<GetBackendServiceCircuitBreaker> circuitBreakers;
  final String compressionMode;

  /// Time for which instance will be drained (not accept new connections, but still work to finish started ones).
  final int connectionDrainingTimeoutSec;
  final List<GetBackendServiceConsistentHash> consistentHash;
  final String creationTimestamp;
  final List<GetBackendServiceCustomMetric> customMetrics;
  final List<String> customRequestHeaders;
  final List<String> customResponseHeaders;

  /// Textual description for the Backend Service.
  final String description;
  final List<GetBackendServiceDynamicForwarding> dynamicForwardings;
  final String edgeSecurityPolicy;

  /// Whether or not Cloud CDN is enabled on the Backend Service.
  final bool enableCdn;
  final String externalManagedMigrationState;
  final double externalManagedMigrationTestingPercentage;

  /// The fingerprint of the Backend Service.
  final String fingerprint;

  /// The unique identifier for the resource. This identifier is defined by the server.
  final int generatedId;

  /// The set of HTTP/HTTPS health checks used by the Backend Service.
  final List<String> healthChecks;
  final List<GetBackendServiceIap> iaps;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipAddressSelectionPolicy;
  final String loadBalancingScheme;
  final List<GetBackendServiceLocalityLbPolicy> localityLbPolicies;
  final String localityLbPolicy;
  final List<GetBackendServiceLogConfig> logConfigs;
  final List<GetBackendServiceMaxStreamDuration> maxStreamDurations;
  final String name;
  final List<GetBackendServiceNetworkPassThroughLbTrafficPolicy>
      networkPassThroughLbTrafficPolicies;
  final List<GetBackendServiceOutlierDetection> outlierDetections;
  final List<GetBackendServiceParam> params;

  /// The name of a service that has been added to an instance group in this backend.
  final String portName;
  final String? project;

  /// The protocol for incoming requests.
  final String protocol;
  final String securityPolicy;
  final List<GetBackendServiceSecuritySetting> securitySettings;

  /// The URI of the Backend Service.
  final String selfLink;
  final String serviceLbPolicy;

  /// The Backend Service session stickiness configuration.
  final String sessionAffinity;
  final List<GetBackendServiceStrongSessionAffinityCooky>
      strongSessionAffinityCookies;

  /// The number of seconds to wait for a backend to respond to a request before considering the request failed.
  final int timeoutSec;
  final List<GetBackendServiceTlsSetting> tlsSettings;

  GetBackendServiceResult({
    required this.affinityCookieTtlSec,
    required this.backends,
    required this.cdnPolicies,
    required this.circuitBreakers,
    required this.compressionMode,
    required this.connectionDrainingTimeoutSec,
    required this.consistentHash,
    required this.creationTimestamp,
    required this.customMetrics,
    required this.customRequestHeaders,
    required this.customResponseHeaders,
    required this.description,
    required this.dynamicForwardings,
    required this.edgeSecurityPolicy,
    required this.enableCdn,
    required this.externalManagedMigrationState,
    required this.externalManagedMigrationTestingPercentage,
    required this.fingerprint,
    required this.generatedId,
    required this.healthChecks,
    required this.iaps,
    required this.id,
    required this.ipAddressSelectionPolicy,
    required this.loadBalancingScheme,
    required this.localityLbPolicies,
    required this.localityLbPolicy,
    required this.logConfigs,
    required this.maxStreamDurations,
    required this.name,
    required this.networkPassThroughLbTrafficPolicies,
    required this.outlierDetections,
    required this.params,
    required this.portName,
    this.project,
    required this.protocol,
    required this.securityPolicy,
    required this.securitySettings,
    required this.selfLink,
    required this.serviceLbPolicy,
    required this.sessionAffinity,
    required this.strongSessionAffinityCookies,
    required this.timeoutSec,
    required this.tlsSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['affinityCookieTtlSec'] = affinityCookieTtlSec;
    map['backends'] =
        Input.encodeList<GetBackendServiceBackend, Map<String, dynamic>>(
            backends, (value) => value.toMap());
    map['cdnPolicies'] =
        Input.encodeList<GetBackendServiceCdnPolicy, Map<String, dynamic>>(
            cdnPolicies, (value) => value.toMap());
    map['circuitBreakers'] =
        Input.encodeList<GetBackendServiceCircuitBreaker, Map<String, dynamic>>(
            circuitBreakers, (value) => value.toMap());
    map['compressionMode'] = compressionMode;
    map['connectionDrainingTimeoutSec'] = connectionDrainingTimeoutSec;
    map['consistentHash'] =
        Input.encodeList<GetBackendServiceConsistentHash, Map<String, dynamic>>(
            consistentHash, (value) => value.toMap());
    map['creationTimestamp'] = creationTimestamp;
    map['customMetrics'] =
        Input.encodeList<GetBackendServiceCustomMetric, Map<String, dynamic>>(
            customMetrics, (value) => value.toMap());
    map['customRequestHeaders'] = customRequestHeaders;
    map['customResponseHeaders'] = customResponseHeaders;
    map['description'] = description;
    map['dynamicForwardings'] = Input.encodeList<
        GetBackendServiceDynamicForwarding,
        Map<String, dynamic>>(dynamicForwardings, (value) => value.toMap());
    map['edgeSecurityPolicy'] = edgeSecurityPolicy;
    map['enableCdn'] = enableCdn;
    map['externalManagedMigrationState'] = externalManagedMigrationState;
    map['externalManagedMigrationTestingPercentage'] =
        externalManagedMigrationTestingPercentage;
    map['fingerprint'] = fingerprint;
    map['generatedId'] = generatedId;
    map['healthChecks'] = healthChecks;
    map['iaps'] = Input.encodeList<GetBackendServiceIap, Map<String, dynamic>>(
        iaps, (value) => value.toMap());
    map['id'] = id;
    map['ipAddressSelectionPolicy'] = ipAddressSelectionPolicy;
    map['loadBalancingScheme'] = loadBalancingScheme;
    map['localityLbPolicies'] = Input.encodeList<
        GetBackendServiceLocalityLbPolicy,
        Map<String, dynamic>>(localityLbPolicies, (value) => value.toMap());
    map['localityLbPolicy'] = localityLbPolicy;
    map['logConfigs'] =
        Input.encodeList<GetBackendServiceLogConfig, Map<String, dynamic>>(
            logConfigs, (value) => value.toMap());
    map['maxStreamDurations'] = Input.encodeList<
        GetBackendServiceMaxStreamDuration,
        Map<String, dynamic>>(maxStreamDurations, (value) => value.toMap());
    map['name'] = name;
    map['networkPassThroughLbTrafficPolicies'] = Input.encodeList<
            GetBackendServiceNetworkPassThroughLbTrafficPolicy,
            Map<String, dynamic>>(
        networkPassThroughLbTrafficPolicies, (value) => value.toMap());
    map['outlierDetections'] = Input.encodeList<
        GetBackendServiceOutlierDetection,
        Map<String, dynamic>>(outlierDetections, (value) => value.toMap());
    map['params'] =
        Input.encodeList<GetBackendServiceParam, Map<String, dynamic>>(
            params, (value) => value.toMap());
    map['portName'] = portName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['protocol'] = protocol;
    map['securityPolicy'] = securityPolicy;
    map['securitySettings'] = Input.encodeList<GetBackendServiceSecuritySetting,
        Map<String, dynamic>>(securitySettings, (value) => value.toMap());
    map['selfLink'] = selfLink;
    map['serviceLbPolicy'] = serviceLbPolicy;
    map['sessionAffinity'] = sessionAffinity;
    map['strongSessionAffinityCookies'] = Input.encodeList<
            GetBackendServiceStrongSessionAffinityCooky, Map<String, dynamic>>(
        strongSessionAffinityCookies, (value) => value.toMap());
    map['timeoutSec'] = timeoutSec;
    map['tlsSettings'] =
        Input.encodeList<GetBackendServiceTlsSetting, Map<String, dynamic>>(
            tlsSettings, (value) => value.toMap());
    return map;
  }

  factory GetBackendServiceResult.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceResult(
      affinityCookieTtlSec: map['affinityCookieTtlSec'] as int,
      backends: Input.decodeList<GetBackendServiceBackend>(
          map['backends'],
          (value) => GetBackendServiceBackend.fromMap(
              (value as Map).cast<String, dynamic>())),
      cdnPolicies: Input.decodeList<GetBackendServiceCdnPolicy>(
          map['cdnPolicies'],
          (value) => GetBackendServiceCdnPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      circuitBreakers: Input.decodeList<GetBackendServiceCircuitBreaker>(
          map['circuitBreakers'],
          (value) => GetBackendServiceCircuitBreaker.fromMap(
              (value as Map).cast<String, dynamic>())),
      compressionMode: map['compressionMode'] as String,
      connectionDrainingTimeoutSec: map['connectionDrainingTimeoutSec'] as int,
      consistentHash: Input.decodeList<GetBackendServiceConsistentHash>(
          map['consistentHash'],
          (value) => GetBackendServiceConsistentHash.fromMap(
              (value as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] as String,
      customMetrics: Input.decodeList<GetBackendServiceCustomMetric>(
          map['customMetrics'],
          (value) => GetBackendServiceCustomMetric.fromMap(
              (value as Map).cast<String, dynamic>())),
      customRequestHeaders:
          (map['customRequestHeaders'] as List).cast<String>(),
      customResponseHeaders:
          (map['customResponseHeaders'] as List).cast<String>(),
      description: map['description'] as String,
      dynamicForwardings: Input.decodeList<GetBackendServiceDynamicForwarding>(
          map['dynamicForwardings'],
          (value) => GetBackendServiceDynamicForwarding.fromMap(
              (value as Map).cast<String, dynamic>())),
      edgeSecurityPolicy: map['edgeSecurityPolicy'] as String,
      enableCdn: map['enableCdn'] as bool,
      externalManagedMigrationState:
          map['externalManagedMigrationState'] as String,
      externalManagedMigrationTestingPercentage:
          map['externalManagedMigrationTestingPercentage'] as double,
      fingerprint: map['fingerprint'] as String,
      generatedId: map['generatedId'] as int,
      healthChecks: (map['healthChecks'] as List).cast<String>(),
      iaps: Input.decodeList<GetBackendServiceIap>(
          map['iaps'],
          (value) => GetBackendServiceIap.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipAddressSelectionPolicy: map['ipAddressSelectionPolicy'] as String,
      loadBalancingScheme: map['loadBalancingScheme'] as String,
      localityLbPolicies: Input.decodeList<GetBackendServiceLocalityLbPolicy>(
          map['localityLbPolicies'],
          (value) => GetBackendServiceLocalityLbPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      localityLbPolicy: map['localityLbPolicy'] as String,
      logConfigs: Input.decodeList<GetBackendServiceLogConfig>(
          map['logConfigs'],
          (value) => GetBackendServiceLogConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      maxStreamDurations: Input.decodeList<GetBackendServiceMaxStreamDuration>(
          map['maxStreamDurations'],
          (value) => GetBackendServiceMaxStreamDuration.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkPassThroughLbTrafficPolicies:
          Input.decodeList<GetBackendServiceNetworkPassThroughLbTrafficPolicy>(
              map['networkPassThroughLbTrafficPolicies'],
              (value) =>
                  GetBackendServiceNetworkPassThroughLbTrafficPolicy.fromMap(
                      (value as Map).cast<String, dynamic>())),
      outlierDetections: Input.decodeList<GetBackendServiceOutlierDetection>(
          map['outlierDetections'],
          (value) => GetBackendServiceOutlierDetection.fromMap(
              (value as Map).cast<String, dynamic>())),
      params: Input.decodeList<GetBackendServiceParam>(
          map['params'],
          (value) => GetBackendServiceParam.fromMap(
              (value as Map).cast<String, dynamic>())),
      portName: map['portName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      protocol: map['protocol'] as String,
      securityPolicy: map['securityPolicy'] as String,
      securitySettings: Input.decodeList<GetBackendServiceSecuritySetting>(
          map['securitySettings'],
          (value) => GetBackendServiceSecuritySetting.fromMap(
              (value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      serviceLbPolicy: map['serviceLbPolicy'] as String,
      sessionAffinity: map['sessionAffinity'] as String,
      strongSessionAffinityCookies:
          Input.decodeList<GetBackendServiceStrongSessionAffinityCooky>(
              map['strongSessionAffinityCookies'],
              (value) => GetBackendServiceStrongSessionAffinityCooky.fromMap(
                  (value as Map).cast<String, dynamic>())),
      timeoutSec: map['timeoutSec'] as int,
      tlsSettings: Input.decodeList<GetBackendServiceTlsSetting>(
          map['tlsSettings'],
          (value) => GetBackendServiceTlsSetting.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
