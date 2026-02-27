// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_backend_service_backend/region_backend_service_backend.dart';
import '../region_backend_service_cdn_policy/region_backend_service_cdn_policy.dart';
import '../region_backend_service_circuit_breakers/region_backend_service_circuit_breakers.dart';
import '../region_backend_service_connection_tracking_policy/region_backend_service_connection_tracking_policy.dart';
import '../region_backend_service_consistent_hash/region_backend_service_consistent_hash.dart';
import '../region_backend_service_custom_metric/region_backend_service_custom_metric.dart';
import '../region_backend_service_dynamic_forwarding/region_backend_service_dynamic_forwarding.dart';
import '../region_backend_service_failover_policy/region_backend_service_failover_policy.dart';
import '../region_backend_service_ha_policy/region_backend_service_ha_policy.dart';
import '../region_backend_service_iap/region_backend_service_iap.dart';
import '../region_backend_service_log_config/region_backend_service_log_config.dart';
import '../region_backend_service_network_pass_through_lb_traffic_policy/region_backend_service_network_pass_through_lb_traffic_policy.dart';
import '../region_backend_service_outlier_detection/region_backend_service_outlier_detection.dart';
import '../region_backend_service_params/region_backend_service_params.dart';
import '../region_backend_service_strong_session_affinity_cookie/region_backend_service_strong_session_affinity_cookie.dart';
import '../region_backend_service_subsetting/region_backend_service_subsetting.dart';
import '../region_backend_service_tls_settings/region_backend_service_tls_settings.dart';

/// The set of arguments for RegionBackendService.
class RegionBackendServiceArgs {
  /// Lifetime of cookies in seconds if session_affinity is
  /// GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts
  /// only until the end of the browser session (or equivalent). The
  /// maximum allowed value for TTL is one day.
  /// When the load balancing scheme is INTERNAL, this field is not used.
  final pulumi.Input<int>? affinityCookieTtlSec;

  /// The set of backends that serve this RegionBackendService.
  /// Structure is documented below.
  final pulumi.Input<List<RegionBackendServiceBackend>>? backends;

  /// Cloud CDN configuration for this BackendService.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceCdnPolicy>? cdnPolicy;

  /// Settings controlling the volume of connections to a backend service. This field
  /// is applicable only when the `load_balancing_scheme` is set to INTERNAL_MANAGED
  /// and the `protocol` is set to HTTP, HTTPS, HTTP2 or H2C.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceCircuitBreakers>? circuitBreakers;

  /// Time for which instance will be drained (not accept new
  /// connections, but still work to finish started).
  final pulumi.Input<int>? connectionDrainingTimeoutSec;

  /// Connection Tracking configuration for this BackendService.
  /// This is available only for Layer 4 Internal Load Balancing and
  /// Network Load Balancing.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceConnectionTrackingPolicy>?
      connectionTrackingPolicy;

  /// Consistent Hash-based load balancing can be used to provide soft session
  /// affinity based on HTTP headers, cookies or other properties. This load balancing
  /// policy is applicable only for HTTP connections. The affinity to a particular
  /// destination host will be lost when one or more hosts are added/removed from the
  /// destination service. This field specifies parameters that control consistent
  /// hashing.
  /// This field only applies when all of the following are true -
  final pulumi.Input<RegionBackendServiceConsistentHash>? consistentHash;

  /// List of custom metrics that are used for the WEIGHTED_ROUND_ROBIN locality_lb_policy.
  /// Structure is documented below.
  final pulumi.Input<List<RegionBackendServiceCustomMetric>>? customMetrics;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Dynamic forwarding configuration. This field is used to configure the backend service with dynamic forwarding
  /// feature which together with Service Extension allows customized and complex routing logic.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceDynamicForwarding>? dynamicForwarding;

  /// If true, enable Cloud CDN for this RegionBackendService.
  final pulumi.Input<bool>? enableCdn;

  /// Policy for failovers.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceFailoverPolicy>? failoverPolicy;

  /// Configures self-managed High Availability (HA) for External and Internal Protocol Forwarding.
  /// The backends of this regional backend service must only specify zonal network endpoint groups
  /// (NEGs) of type GCE_VM_IP. Note that haPolicy is not for load balancing, and therefore cannot
  /// be specified with sessionAffinity, connectionTrackingPolicy, and failoverPolicy. haPolicy
  /// requires customers to be responsible for tracking backend endpoint health and electing a
  /// leader among the healthy endpoints. Therefore, haPolicy cannot be specified with healthChecks.
  /// haPolicy can only be specified for External Passthrough Network Load Balancers and Internal
  /// Passthrough Network Load Balancers.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceHaPolicy>? haPolicy;

  /// The set of URLs to HealthCheck resources for health checking
  /// this RegionBackendService. Currently at most one health
  /// check can be specified.
  /// A health check must be specified unless the backend service uses an internet
  /// or serverless NEG as a backend.
  final pulumi.Input<String>? healthChecks;

  /// Settings for enabling Cloud Identity Aware Proxy.
  /// If OAuth client is not set, Google-managed OAuth client is used.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceIap>? iap;

  /// Specifies preference of traffic to the backend (from the proxy and from the client for proxyless gRPC).
  /// Possible values are: `IPV4_ONLY`, `PREFER_IPV6`, `IPV6_ONLY`.
  final pulumi.Input<String>? ipAddressSelectionPolicy;

  /// Indicates what kind of load balancing this regional backend service
  /// will be used for. A backend service created for one type of load
  /// balancing cannot be used with the other(s). For more information, refer to
  /// [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  /// Default value is `INTERNAL`.
  /// Possible values are: `EXTERNAL`, `EXTERNAL_MANAGED`, `INTERNAL`, `INTERNAL_MANAGED`.
  final pulumi.Input<String>? loadBalancingScheme;

  /// The load balancing algorithm used within the scope of the locality.
  /// The possible values are:
  /// * `ROUND_ROBIN`: This is a simple policy in which each healthy backend
  /// is selected in round robin order.
  /// * `LEAST_REQUEST`: An O(1) algorithm which selects two random healthy
  /// hosts and picks the host which has fewer active requests.
  /// * `RING_HASH`: The ring/modulo hash load balancer implements consistent
  /// hashing to backends. The algorithm has the property that the
  /// addition/removal of a host from a set of N hosts only affects
  /// 1/N of the requests.
  /// * `RANDOM`: The load balancer selects a random healthy host.
  /// * `ORIGINAL_DESTINATION`: Backend host is selected based on the client
  /// connection metadata, i.e., connections are opened
  /// to the same address as the destination address of
  /// the incoming connection before the connection
  /// was redirected to the load balancer.
  /// * `MAGLEV`: used as a drop in replacement for the ring hash load balancer.
  /// Maglev is not as stable as ring hash but has faster table lookup
  /// build times and host selection times. For more information about
  /// Maglev, refer to https://ai.google/research/pubs/pub44824
  /// * `WEIGHTED_MAGLEV`: Per-instance weighted Load Balancing via health check
  /// reported weights. Only applicable to loadBalancingScheme
  /// EXTERNAL. If set, the Backend Service must
  /// configure a non legacy HTTP-based Health Check, and
  /// health check replies are expected to contain
  /// non-standard HTTP response header field
  /// X-Load-Balancing-Endpoint-Weight to specify the
  /// per-instance weights. If set, Load Balancing is weight
  /// based on the per-instance weights reported in the last
  /// processed health check replies, as long as every
  /// instance either reported a valid weight or had
  /// UNAVAILABLE_WEIGHT. Otherwise, Load Balancing remains
  /// equal-weight.
  /// * `WEIGHTED_ROUND_ROBIN`: Per-endpoint weighted round-robin Load Balancing using weights computed
  /// from Backend reported Custom Metrics. If set, the Backend Service
  /// responses are expected to contain non-standard HTTP response header field
  /// X-Endpoint-Load-Metrics. The reported metrics
  /// to use for computing the weights are specified via the
  /// backends[].customMetrics fields.
  /// locality_lb_policy is applicable to either:
  /// * A regional backend service with the service_protocol set to HTTP, HTTPS, HTTP2 or H2C,
  /// and loadBalancingScheme set to INTERNAL_MANAGED.
  /// * A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  /// * A regional backend service with loadBalancingScheme set to EXTERNAL (External Network
  /// Load Balancing). Only MAGLEV and WEIGHTED_MAGLEV values are possible for External
  /// Network Load Balancing. The default is MAGLEV.
  /// If session_affinity is not NONE, and locality_lb_policy is not set to MAGLEV, WEIGHTED_MAGLEV,
  /// or RING_HASH, session affinity settings will not take effect.
  /// Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced
  /// by a URL map that is bound to target gRPC proxy that has validate_for_proxyless
  /// field set to true.
  /// Possible values are: `ROUND_ROBIN`, `LEAST_REQUEST`, `RING_HASH`, `RANDOM`, `ORIGINAL_DESTINATION`, `MAGLEV`, `WEIGHTED_MAGLEV`, `WEIGHTED_ROUND_ROBIN`.
  final pulumi.Input<String>? localityLbPolicy;

  /// This field denotes the logging options for the load balancer traffic served by this backend service.
  /// If logging is enabled, logs will be exported to Stackdriver.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceLogConfig>? logConfig;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The URL of the network to which this backend service belongs.
  /// This field must be set for Internal Passthrough Network Load Balancers when the haPolicy is enabled, and for External Passthrough Network Load Balancers when the haPolicy fastIpMove is enabled.
  /// This field can only be specified when the load balancing scheme is set to INTERNAL, or when the load balancing scheme is set to EXTERNAL and haPolicy fastIpMove is enabled.
  /// Changes to this field force recreation of the resource.
  final pulumi.Input<String>? network;

  /// Configures traffic steering properties of internal passthrough Network Load Balancers.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceNetworkPassThroughLbTrafficPolicy>?
      networkPassThroughLbTrafficPolicy;

  /// Settings controlling eviction of unhealthy hosts from the load balancing pool.
  /// This field is applicable only when the `load_balancing_scheme` is set
  /// to INTERNAL_MANAGED and the `protocol` is set to HTTP, HTTPS, HTTP2 or H2C.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceOutlierDetection>? outlierDetection;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceParams>? params;

  /// A named port on a backend instance group representing the port for
  /// communication to the backend VMs in that group. Required when the
  /// loadBalancingScheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED, or INTERNAL_SELF_MANAGED
  /// and the backends are instance groups. The named port must be defined on each
  /// backend instance group. This parameter has no meaning if the backends are NEGs. API sets a
  /// default of "http" if not given.
  /// Must be omitted when the loadBalancingScheme is INTERNAL (Internal TCP/UDP Load Balancing).
  final pulumi.Input<String>? portName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The protocol this BackendService uses to communicate with backends.
  /// The default is HTTP. Possible values are HTTP, HTTPS, HTTP2, H2C, TCP, SSL, UDP
  /// or GRPC. Refer to the documentation for the load balancers or for Traffic Director
  /// for more information.
  /// Possible values are: `HTTP`, `HTTPS`, `HTTP2`, `TCP`, `SSL`, `UDP`, `GRPC`, `UNSPECIFIED`, `H2C`.
  final pulumi.Input<String>? protocol;

  /// The Region in which the created backend service should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// The security policy associated with this backend service.
  final pulumi.Input<String>? securityPolicy;

  /// Type of session affinity to use. The default is NONE. Session affinity is
  /// not applicable if the protocol is UDP.
  /// Possible values are: `NONE`, `CLIENT_IP`, `CLIENT_IP_PORT_PROTO`, `CLIENT_IP_PROTO`, `GENERATED_COOKIE`, `HEADER_FIELD`, `HTTP_COOKIE`, `CLIENT_IP_NO_DESTINATION`, `STRONG_COOKIE_AFFINITY`.
  final pulumi.Input<String>? sessionAffinity;

  /// Describes the HTTP cookie used for stateful session affinity. This field is applicable and required if the sessionAffinity is set to STRONG_COOKIE_AFFINITY.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceStrongSessionAffinityCookie>?
      strongSessionAffinityCookie;

  /// Subsetting configuration for this BackendService. Currently this is applicable only for Internal TCP/UDP load balancing and Internal HTTP(S) load balancing.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceSubsetting>? subsetting;

  /// The backend service timeout has a different meaning depending on the type of load balancer.
  /// For more information see, [Backend service settings](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices).
  /// The default is 30 seconds.
  /// The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds.
  final pulumi.Input<int>? timeoutSec;

  /// Configuration for Backend Authenticated TLS and mTLS. May only be specified when the backend protocol is SSL, HTTPS or HTTP2.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceTlsSettings>? tlsSettings;

  RegionBackendServiceArgs({
    this.affinityCookieTtlSec,
    this.backends,
    this.cdnPolicy,
    this.circuitBreakers,
    this.connectionDrainingTimeoutSec,
    this.connectionTrackingPolicy,
    this.consistentHash,
    this.customMetrics,
    this.description,
    this.dynamicForwarding,
    this.enableCdn,
    this.failoverPolicy,
    this.haPolicy,
    this.healthChecks,
    this.iap,
    this.ipAddressSelectionPolicy,
    this.loadBalancingScheme,
    this.localityLbPolicy,
    this.logConfig,
    this.name,
    this.network,
    this.networkPassThroughLbTrafficPolicy,
    this.outlierDetection,
    this.params,
    this.portName,
    this.project,
    this.protocol,
    this.region,
    this.securityPolicy,
    this.sessionAffinity,
    this.strongSessionAffinityCookie,
    this.subsetting,
    this.timeoutSec,
    this.tlsSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final affinityCookieTtlSecValue = affinityCookieTtlSec;
    if (affinityCookieTtlSecValue != null) {
      map['affinityCookieTtlSec'] = affinityCookieTtlSecValue;
    }
    final backendsValue = backends;
    if (backendsValue != null) {
      map['backends'] = pulumi.Input.mapOptionalInputValue<
              List<RegionBackendServiceBackend>, List<Map<String, dynamic>>>(
          backendsValue,
          (value) => pulumi.Input.encodeList<RegionBackendServiceBackend,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final cdnPolicyValue = cdnPolicy;
    if (cdnPolicyValue != null) {
      map['cdnPolicy'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceCdnPolicy,
          Map<String, dynamic>>(cdnPolicyValue, (value) => value.toMap());
    }
    final circuitBreakersValue = circuitBreakers;
    if (circuitBreakersValue != null) {
      map['circuitBreakers'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceCircuitBreakers,
          Map<String, dynamic>>(circuitBreakersValue, (value) => value.toMap());
    }
    final connectionDrainingTimeoutSecValue = connectionDrainingTimeoutSec;
    if (connectionDrainingTimeoutSecValue != null) {
      map['connectionDrainingTimeoutSec'] = connectionDrainingTimeoutSecValue;
    }
    final connectionTrackingPolicyValue = connectionTrackingPolicy;
    if (connectionTrackingPolicyValue != null) {
      map['connectionTrackingPolicy'] = pulumi.Input.mapOptionalInputValue<
              RegionBackendServiceConnectionTrackingPolicy,
              Map<String, dynamic>>(
          connectionTrackingPolicyValue, (value) => value.toMap());
    }
    final consistentHashValue = consistentHash;
    if (consistentHashValue != null) {
      map['consistentHash'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceConsistentHash,
          Map<String, dynamic>>(consistentHashValue, (value) => value.toMap());
    }
    final customMetricsValue = customMetrics;
    if (customMetricsValue != null) {
      map['customMetrics'] = pulumi.Input.mapOptionalInputValue<
              List<RegionBackendServiceCustomMetric>,
              List<Map<String, dynamic>>>(
          customMetricsValue,
          (value) => pulumi.Input.encodeList<RegionBackendServiceCustomMetric,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dynamicForwardingValue = dynamicForwarding;
    if (dynamicForwardingValue != null) {
      map['dynamicForwarding'] = pulumi.Input.mapOptionalInputValue<
              RegionBackendServiceDynamicForwarding, Map<String, dynamic>>(
          dynamicForwardingValue, (value) => value.toMap());
    }
    final enableCdnValue = enableCdn;
    if (enableCdnValue != null) {
      map['enableCdn'] = enableCdnValue;
    }
    final failoverPolicyValue = failoverPolicy;
    if (failoverPolicyValue != null) {
      map['failoverPolicy'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceFailoverPolicy,
          Map<String, dynamic>>(failoverPolicyValue, (value) => value.toMap());
    }
    final haPolicyValue = haPolicy;
    if (haPolicyValue != null) {
      map['haPolicy'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceHaPolicy,
          Map<String, dynamic>>(haPolicyValue, (value) => value.toMap());
    }
    final healthChecksValue = healthChecks;
    if (healthChecksValue != null) {
      map['healthChecks'] = healthChecksValue;
    }
    final iapValue = iap;
    if (iapValue != null) {
      map['iap'] = pulumi.Input.mapOptionalInputValue<RegionBackendServiceIap,
          Map<String, dynamic>>(iapValue, (value) => value.toMap());
    }
    final ipAddressSelectionPolicyValue = ipAddressSelectionPolicy;
    if (ipAddressSelectionPolicyValue != null) {
      map['ipAddressSelectionPolicy'] = ipAddressSelectionPolicyValue;
    }
    final loadBalancingSchemeValue = loadBalancingScheme;
    if (loadBalancingSchemeValue != null) {
      map['loadBalancingScheme'] = loadBalancingSchemeValue;
    }
    final localityLbPolicyValue = localityLbPolicy;
    if (localityLbPolicyValue != null) {
      map['localityLbPolicy'] = localityLbPolicyValue;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final networkPassThroughLbTrafficPolicyValue =
        networkPassThroughLbTrafficPolicy;
    if (networkPassThroughLbTrafficPolicyValue != null) {
      map['networkPassThroughLbTrafficPolicy'] =
          pulumi.Input.mapOptionalInputValue<
                  RegionBackendServiceNetworkPassThroughLbTrafficPolicy,
                  Map<String, dynamic>>(
              networkPassThroughLbTrafficPolicyValue, (value) => value.toMap());
    }
    final outlierDetectionValue = outlierDetection;
    if (outlierDetectionValue != null) {
      map['outlierDetection'] = pulumi.Input.mapOptionalInputValue<
              RegionBackendServiceOutlierDetection, Map<String, dynamic>>(
          outlierDetectionValue, (value) => value.toMap());
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceParams,
          Map<String, dynamic>>(paramsValue, (value) => value.toMap());
    }
    final portNameValue = portName;
    if (portNameValue != null) {
      map['portName'] = portNameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityPolicyValue = securityPolicy;
    if (securityPolicyValue != null) {
      map['securityPolicy'] = securityPolicyValue;
    }
    final sessionAffinityValue = sessionAffinity;
    if (sessionAffinityValue != null) {
      map['sessionAffinity'] = sessionAffinityValue;
    }
    final strongSessionAffinityCookieValue = strongSessionAffinityCookie;
    if (strongSessionAffinityCookieValue != null) {
      map['strongSessionAffinityCookie'] = pulumi.Input.mapOptionalInputValue<
              RegionBackendServiceStrongSessionAffinityCookie,
              Map<String, dynamic>>(
          strongSessionAffinityCookieValue, (value) => value.toMap());
    }
    final subsettingValue = subsetting;
    if (subsettingValue != null) {
      map['subsetting'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceSubsetting,
          Map<String, dynamic>>(subsettingValue, (value) => value.toMap());
    }
    final timeoutSecValue = timeoutSec;
    if (timeoutSecValue != null) {
      map['timeoutSec'] = timeoutSecValue;
    }
    final tlsSettingsValue = tlsSettings;
    if (tlsSettingsValue != null) {
      map['tlsSettings'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceTlsSettings,
          Map<String, dynamic>>(tlsSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegionBackendServiceArgs.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceArgs(
      affinityCookieTtlSec:
          pulumi.Input.asOptionalInput<int>(map['affinityCookieTtlSec']),
      backends: pulumi.Input.asOptionalInput<List<RegionBackendServiceBackend>>(
          map['backends']),
      cdnPolicy: pulumi.Input.asOptionalInput<RegionBackendServiceCdnPolicy>(
          map['cdnPolicy']),
      circuitBreakers:
          pulumi.Input.asOptionalInput<RegionBackendServiceCircuitBreakers>(
              map['circuitBreakers']),
      connectionDrainingTimeoutSec: pulumi.Input.asOptionalInput<int>(
          map['connectionDrainingTimeoutSec']),
      connectionTrackingPolicy: pulumi.Input.asOptionalInput<
              RegionBackendServiceConnectionTrackingPolicy>(
          map['connectionTrackingPolicy']),
      consistentHash:
          pulumi.Input.asOptionalInput<RegionBackendServiceConsistentHash>(
              map['consistentHash']),
      customMetrics:
          pulumi.Input.asOptionalInput<List<RegionBackendServiceCustomMetric>>(
              map['customMetrics']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dynamicForwarding:
          pulumi.Input.asOptionalInput<RegionBackendServiceDynamicForwarding>(
              map['dynamicForwarding']),
      enableCdn: pulumi.Input.asOptionalInput<bool>(map['enableCdn']),
      failoverPolicy:
          pulumi.Input.asOptionalInput<RegionBackendServiceFailoverPolicy>(
              map['failoverPolicy']),
      haPolicy: pulumi.Input.asOptionalInput<RegionBackendServiceHaPolicy>(
          map['haPolicy']),
      healthChecks: pulumi.Input.asOptionalInput<String>(map['healthChecks']),
      iap: pulumi.Input.asOptionalInput<RegionBackendServiceIap>(map['iap']),
      ipAddressSelectionPolicy:
          pulumi.Input.asOptionalInput<String>(map['ipAddressSelectionPolicy']),
      loadBalancingScheme:
          pulumi.Input.asOptionalInput<String>(map['loadBalancingScheme']),
      localityLbPolicy:
          pulumi.Input.asOptionalInput<String>(map['localityLbPolicy']),
      logConfig: pulumi.Input.asOptionalInput<RegionBackendServiceLogConfig>(
          map['logConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      networkPassThroughLbTrafficPolicy: pulumi.Input.asOptionalInput<
              RegionBackendServiceNetworkPassThroughLbTrafficPolicy>(
          map['networkPassThroughLbTrafficPolicy']),
      outlierDetection:
          pulumi.Input.asOptionalInput<RegionBackendServiceOutlierDetection>(
              map['outlierDetection']),
      params: pulumi.Input.asOptionalInput<RegionBackendServiceParams>(
          map['params']),
      portName: pulumi.Input.asOptionalInput<String>(map['portName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      protocol: pulumi.Input.asOptionalInput<String>(map['protocol']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityPolicy:
          pulumi.Input.asOptionalInput<String>(map['securityPolicy']),
      sessionAffinity:
          pulumi.Input.asOptionalInput<String>(map['sessionAffinity']),
      strongSessionAffinityCookie: pulumi.Input.asOptionalInput<
              RegionBackendServiceStrongSessionAffinityCookie>(
          map['strongSessionAffinityCookie']),
      subsetting: pulumi.Input.asOptionalInput<RegionBackendServiceSubsetting>(
          map['subsetting']),
      timeoutSec: pulumi.Input.asOptionalInput<int>(map['timeoutSec']),
      tlsSettings:
          pulumi.Input.asOptionalInput<RegionBackendServiceTlsSettings>(
              map['tlsSettings']),
    );
  }
}
