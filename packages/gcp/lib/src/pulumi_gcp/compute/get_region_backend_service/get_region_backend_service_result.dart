// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_region_backend_service_backend/get_region_backend_service_backend.dart';
import '../get_region_backend_service_cdn_policy/get_region_backend_service_cdn_policy.dart';
import '../get_region_backend_service_circuit_breaker/get_region_backend_service_circuit_breaker.dart';
import '../get_region_backend_service_connection_tracking_policy/get_region_backend_service_connection_tracking_policy.dart';
import '../get_region_backend_service_consistent_hash/get_region_backend_service_consistent_hash.dart';
import '../get_region_backend_service_custom_metric/get_region_backend_service_custom_metric.dart';
import '../get_region_backend_service_dynamic_forwarding/get_region_backend_service_dynamic_forwarding.dart';
import '../get_region_backend_service_failover_policy/get_region_backend_service_failover_policy.dart';
import '../get_region_backend_service_ha_policy/get_region_backend_service_ha_policy.dart';
import '../get_region_backend_service_iap/get_region_backend_service_iap.dart';
import '../get_region_backend_service_log_config/get_region_backend_service_log_config.dart';
import '../get_region_backend_service_network_pass_through_lb_traffic_policy/get_region_backend_service_network_pass_through_lb_traffic_policy.dart';
import '../get_region_backend_service_outlier_detection/get_region_backend_service_outlier_detection.dart';
import '../get_region_backend_service_param/get_region_backend_service_param.dart';
import '../get_region_backend_service_strong_session_affinity_cooky/get_region_backend_service_strong_session_affinity_cooky.dart';
import '../get_region_backend_service_subsetting/get_region_backend_service_subsetting.dart';
import '../get_region_backend_service_tls_setting/get_region_backend_service_tls_setting.dart';

/// Result data returned by getRegionBackendService.
class GetRegionBackendServiceResult {
  final int affinityCookieTtlSec;
  final List<GetRegionBackendServiceBackend> backends;
  final List<GetRegionBackendServiceCdnPolicy> cdnPolicies;
  final List<GetRegionBackendServiceCircuitBreaker> circuitBreakers;
  final int connectionDrainingTimeoutSec;
  final List<GetRegionBackendServiceConnectionTrackingPolicy>
      connectionTrackingPolicies;
  final List<GetRegionBackendServiceConsistentHash> consistentHashes;
  final String creationTimestamp;
  final List<GetRegionBackendServiceCustomMetric> customMetrics;
  final String description;
  final List<GetRegionBackendServiceDynamicForwarding> dynamicForwardings;
  final bool enableCdn;
  final List<GetRegionBackendServiceFailoverPolicy> failoverPolicies;
  final String fingerprint;
  final int generatedId;
  final List<GetRegionBackendServiceHaPolicy> haPolicies;
  final List<String> healthChecks;
  final List<GetRegionBackendServiceIap> iaps;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipAddressSelectionPolicy;
  final String loadBalancingScheme;
  final String localityLbPolicy;
  final List<GetRegionBackendServiceLogConfig> logConfigs;
  final String name;
  final String network;
  final List<GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy>
      networkPassThroughLbTrafficPolicies;
  final List<GetRegionBackendServiceOutlierDetection> outlierDetections;
  final List<GetRegionBackendServiceParam> params;
  final String portName;
  final String? project;
  final String protocol;
  final String? region;
  final String securityPolicy;
  final String selfLink;
  final String sessionAffinity;
  final List<GetRegionBackendServiceStrongSessionAffinityCooky>
      strongSessionAffinityCookies;
  final List<GetRegionBackendServiceSubsetting> subsettings;
  final int timeoutSec;
  final List<GetRegionBackendServiceTlsSetting> tlsSettings;

  GetRegionBackendServiceResult({
    required this.affinityCookieTtlSec,
    required this.backends,
    required this.cdnPolicies,
    required this.circuitBreakers,
    required this.connectionDrainingTimeoutSec,
    required this.connectionTrackingPolicies,
    required this.consistentHashes,
    required this.creationTimestamp,
    required this.customMetrics,
    required this.description,
    required this.dynamicForwardings,
    required this.enableCdn,
    required this.failoverPolicies,
    required this.fingerprint,
    required this.generatedId,
    required this.haPolicies,
    required this.healthChecks,
    required this.iaps,
    required this.id,
    required this.ipAddressSelectionPolicy,
    required this.loadBalancingScheme,
    required this.localityLbPolicy,
    required this.logConfigs,
    required this.name,
    required this.network,
    required this.networkPassThroughLbTrafficPolicies,
    required this.outlierDetections,
    required this.params,
    required this.portName,
    this.project,
    required this.protocol,
    this.region,
    required this.securityPolicy,
    required this.selfLink,
    required this.sessionAffinity,
    required this.strongSessionAffinityCookies,
    required this.subsettings,
    required this.timeoutSec,
    required this.tlsSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['affinityCookieTtlSec'] = affinityCookieTtlSec;
    map['backends'] =
        Input.encodeList<GetRegionBackendServiceBackend, Map<String, dynamic>>(
            backends, (value) => value.toMap());
    map['cdnPolicies'] = Input.encodeList<GetRegionBackendServiceCdnPolicy,
        Map<String, dynamic>>(cdnPolicies, (value) => value.toMap());
    map['circuitBreakers'] = Input.encodeList<
        GetRegionBackendServiceCircuitBreaker,
        Map<String, dynamic>>(circuitBreakers, (value) => value.toMap());
    map['connectionDrainingTimeoutSec'] = connectionDrainingTimeoutSec;
    map['connectionTrackingPolicies'] = Input.encodeList<
            GetRegionBackendServiceConnectionTrackingPolicy,
            Map<String, dynamic>>(
        connectionTrackingPolicies, (value) => value.toMap());
    map['consistentHashes'] = Input.encodeList<
        GetRegionBackendServiceConsistentHash,
        Map<String, dynamic>>(consistentHashes, (value) => value.toMap());
    map['creationTimestamp'] = creationTimestamp;
    map['customMetrics'] = Input.encodeList<GetRegionBackendServiceCustomMetric,
        Map<String, dynamic>>(customMetrics, (value) => value.toMap());
    map['description'] = description;
    map['dynamicForwardings'] = Input.encodeList<
        GetRegionBackendServiceDynamicForwarding,
        Map<String, dynamic>>(dynamicForwardings, (value) => value.toMap());
    map['enableCdn'] = enableCdn;
    map['failoverPolicies'] = Input.encodeList<
        GetRegionBackendServiceFailoverPolicy,
        Map<String, dynamic>>(failoverPolicies, (value) => value.toMap());
    map['fingerprint'] = fingerprint;
    map['generatedId'] = generatedId;
    map['haPolicies'] =
        Input.encodeList<GetRegionBackendServiceHaPolicy, Map<String, dynamic>>(
            haPolicies, (value) => value.toMap());
    map['healthChecks'] = healthChecks;
    map['iaps'] =
        Input.encodeList<GetRegionBackendServiceIap, Map<String, dynamic>>(
            iaps, (value) => value.toMap());
    map['id'] = id;
    map['ipAddressSelectionPolicy'] = ipAddressSelectionPolicy;
    map['loadBalancingScheme'] = loadBalancingScheme;
    map['localityLbPolicy'] = localityLbPolicy;
    map['logConfigs'] = Input.encodeList<GetRegionBackendServiceLogConfig,
        Map<String, dynamic>>(logConfigs, (value) => value.toMap());
    map['name'] = name;
    map['network'] = network;
    map['networkPassThroughLbTrafficPolicies'] = Input.encodeList<
            GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy,
            Map<String, dynamic>>(
        networkPassThroughLbTrafficPolicies, (value) => value.toMap());
    map['outlierDetections'] = Input.encodeList<
        GetRegionBackendServiceOutlierDetection,
        Map<String, dynamic>>(outlierDetections, (value) => value.toMap());
    map['params'] =
        Input.encodeList<GetRegionBackendServiceParam, Map<String, dynamic>>(
            params, (value) => value.toMap());
    map['portName'] = portName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['protocol'] = protocol;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityPolicy'] = securityPolicy;
    map['selfLink'] = selfLink;
    map['sessionAffinity'] = sessionAffinity;
    map['strongSessionAffinityCookies'] = Input.encodeList<
            GetRegionBackendServiceStrongSessionAffinityCooky,
            Map<String, dynamic>>(
        strongSessionAffinityCookies, (value) => value.toMap());
    map['subsettings'] = Input.encodeList<GetRegionBackendServiceSubsetting,
        Map<String, dynamic>>(subsettings, (value) => value.toMap());
    map['timeoutSec'] = timeoutSec;
    map['tlsSettings'] = Input.encodeList<GetRegionBackendServiceTlsSetting,
        Map<String, dynamic>>(tlsSettings, (value) => value.toMap());
    return map;
  }

  factory GetRegionBackendServiceResult.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceResult(
      affinityCookieTtlSec: map['affinityCookieTtlSec'] as int,
      backends: Input.decodeList<GetRegionBackendServiceBackend>(
          map['backends'],
          (value) => GetRegionBackendServiceBackend.fromMap(
              (value as Map).cast<String, dynamic>())),
      cdnPolicies: Input.decodeList<GetRegionBackendServiceCdnPolicy>(
          map['cdnPolicies'],
          (value) => GetRegionBackendServiceCdnPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      circuitBreakers: Input.decodeList<GetRegionBackendServiceCircuitBreaker>(
          map['circuitBreakers'],
          (value) => GetRegionBackendServiceCircuitBreaker.fromMap(
              (value as Map).cast<String, dynamic>())),
      connectionDrainingTimeoutSec: map['connectionDrainingTimeoutSec'] as int,
      connectionTrackingPolicies:
          Input.decodeList<GetRegionBackendServiceConnectionTrackingPolicy>(
              map['connectionTrackingPolicies'],
              (value) =>
                  GetRegionBackendServiceConnectionTrackingPolicy.fromMap(
                      (value as Map).cast<String, dynamic>())),
      consistentHashes: Input.decodeList<GetRegionBackendServiceConsistentHash>(
          map['consistentHashes'],
          (value) => GetRegionBackendServiceConsistentHash.fromMap(
              (value as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] as String,
      customMetrics: Input.decodeList<GetRegionBackendServiceCustomMetric>(
          map['customMetrics'],
          (value) => GetRegionBackendServiceCustomMetric.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      dynamicForwardings:
          Input.decodeList<GetRegionBackendServiceDynamicForwarding>(
              map['dynamicForwardings'],
              (value) => GetRegionBackendServiceDynamicForwarding.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enableCdn: map['enableCdn'] as bool,
      failoverPolicies: Input.decodeList<GetRegionBackendServiceFailoverPolicy>(
          map['failoverPolicies'],
          (value) => GetRegionBackendServiceFailoverPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      fingerprint: map['fingerprint'] as String,
      generatedId: map['generatedId'] as int,
      haPolicies: Input.decodeList<GetRegionBackendServiceHaPolicy>(
          map['haPolicies'],
          (value) => GetRegionBackendServiceHaPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      healthChecks: (map['healthChecks'] as List).cast<String>(),
      iaps: Input.decodeList<GetRegionBackendServiceIap>(
          map['iaps'],
          (value) => GetRegionBackendServiceIap.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipAddressSelectionPolicy: map['ipAddressSelectionPolicy'] as String,
      loadBalancingScheme: map['loadBalancingScheme'] as String,
      localityLbPolicy: map['localityLbPolicy'] as String,
      logConfigs: Input.decodeList<GetRegionBackendServiceLogConfig>(
          map['logConfigs'],
          (value) => GetRegionBackendServiceLogConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      network: map['network'] as String,
      networkPassThroughLbTrafficPolicies: Input.decodeList<
              GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy>(
          map['networkPassThroughLbTrafficPolicies'],
          (value) =>
              GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      outlierDetections:
          Input.decodeList<GetRegionBackendServiceOutlierDetection>(
              map['outlierDetections'],
              (value) => GetRegionBackendServiceOutlierDetection.fromMap(
                  (value as Map).cast<String, dynamic>())),
      params: Input.decodeList<GetRegionBackendServiceParam>(
          map['params'],
          (value) => GetRegionBackendServiceParam.fromMap(
              (value as Map).cast<String, dynamic>())),
      portName: map['portName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      protocol: map['protocol'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityPolicy: map['securityPolicy'] as String,
      selfLink: map['selfLink'] as String,
      sessionAffinity: map['sessionAffinity'] as String,
      strongSessionAffinityCookies:
          Input.decodeList<GetRegionBackendServiceStrongSessionAffinityCooky>(
              map['strongSessionAffinityCookies'],
              (value) =>
                  GetRegionBackendServiceStrongSessionAffinityCooky.fromMap(
                      (value as Map).cast<String, dynamic>())),
      subsettings: Input.decodeList<GetRegionBackendServiceSubsetting>(
          map['subsettings'],
          (value) => GetRegionBackendServiceSubsetting.fromMap(
              (value as Map).cast<String, dynamic>())),
      timeoutSec: map['timeoutSec'] as int,
      tlsSettings: Input.decodeList<GetRegionBackendServiceTlsSetting>(
          map['tlsSettings'],
          (value) => GetRegionBackendServiceTlsSetting.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
