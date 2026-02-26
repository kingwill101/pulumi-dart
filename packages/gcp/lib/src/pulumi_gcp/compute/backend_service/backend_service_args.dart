// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../backend_service_backend/backend_service_backend.dart';
import '../backend_service_cdn_policy/backend_service_cdn_policy.dart';
import '../backend_service_circuit_breakers/backend_service_circuit_breakers.dart';
import '../backend_service_consistent_hash/backend_service_consistent_hash.dart';
import '../backend_service_custom_metric/backend_service_custom_metric.dart';
import '../backend_service_dynamic_forwarding/backend_service_dynamic_forwarding.dart';
import '../backend_service_iap/backend_service_iap.dart';
import '../backend_service_locality_lb_policy/backend_service_locality_lb_policy.dart';
import '../backend_service_log_config/backend_service_log_config.dart';
import '../backend_service_max_stream_duration/backend_service_max_stream_duration.dart';
import '../backend_service_network_pass_through_lb_traffic_policy/backend_service_network_pass_through_lb_traffic_policy.dart';
import '../backend_service_outlier_detection/backend_service_outlier_detection.dart';
import '../backend_service_params/backend_service_params.dart';
import '../backend_service_security_settings/backend_service_security_settings.dart';
import '../backend_service_strong_session_affinity_cookie/backend_service_strong_session_affinity_cookie.dart';
import '../backend_service_tls_settings/backend_service_tls_settings.dart';

/// The set of arguments for BackendService.
class BackendServiceArgs {
  /// Lifetime of cookies in seconds if<span pulumi-lang-nodejs=" sessionAffinity " pulumi-lang-dotnet=" SessionAffinity " pulumi-lang-go=" sessionAffinity " pulumi-lang-python=" session_affinity " pulumi-lang-yaml=" sessionAffinity " pulumi-lang-java=" sessionAffinity "> session_affinity </span>is
  /// GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts
  /// only until the end of the browser session (or equivalent). The
  /// maximum allowed value for TTL is one day.
  /// When the load balancing scheme is INTERNAL, this field is not used.
  final Input<int>? affinityCookieTtlSec;

  /// The set of backends that serve this BackendService.
  /// Structure is documented below.
  final Input<List<BackendServiceBackend>>? backends;

  /// Cloud CDN configuration for this BackendService.
  /// Structure is documented below.
  final Input<BackendServiceCdnPolicy>? cdnPolicy;

  /// Settings controlling the volume of connections to a backend service. This field
  /// is applicable only when the<span pulumi-lang-nodejs=" loadBalancingScheme " pulumi-lang-dotnet=" LoadBalancingScheme " pulumi-lang-go=" loadBalancingScheme " pulumi-lang-python=" load_balancing_scheme " pulumi-lang-yaml=" loadBalancingScheme " pulumi-lang-java=" loadBalancingScheme "> load_balancing_scheme </span>is set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  final Input<BackendServiceCircuitBreakers>? circuitBreakers;

  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// Possible values are: `AUTOMATIC`, `DISABLED`.
  final Input<String>? compressionMode;

  /// Time for which instance will be drained (not accept new
  /// connections, but still work to finish started).
  final Input<int>? connectionDrainingTimeoutSec;

  /// Consistent Hash-based load balancing can be used to provide soft session
  /// affinity based on HTTP headers, cookies or other properties. This load balancing
  /// policy is applicable only for HTTP connections. The affinity to a particular
  /// destination host will be lost when one or more hosts are added/removed from the
  /// destination service. This field specifies parameters that control consistent
  /// hashing. This field only applies if the<span pulumi-lang-nodejs=" loadBalancingScheme " pulumi-lang-dotnet=" LoadBalancingScheme " pulumi-lang-go=" loadBalancingScheme " pulumi-lang-python=" load_balancing_scheme " pulumi-lang-yaml=" loadBalancingScheme " pulumi-lang-java=" loadBalancingScheme "> load_balancing_scheme </span>is set to
  /// INTERNAL_SELF_MANAGED. This field is only applicable when<span pulumi-lang-nodejs=" localityLbPolicy " pulumi-lang-dotnet=" LocalityLbPolicy " pulumi-lang-go=" localityLbPolicy " pulumi-lang-python=" locality_lb_policy " pulumi-lang-yaml=" localityLbPolicy " pulumi-lang-java=" localityLbPolicy "> locality_lb_policy </span>is
  /// set to MAGLEV or RING_HASH.
  /// Structure is documented below.
  final Input<BackendServiceConsistentHash>? consistentHash;

  /// List of custom metrics that are used for the WEIGHTED_ROUND_ROBIN locality_lb_policy.
  /// Structure is documented below.
  final Input<List<BackendServiceCustomMetric>>? customMetrics;

  /// Headers that the HTTP/S load balancer should add to proxied
  /// requests.
  final Input<List<String>>? customRequestHeaders;

  /// Headers that the HTTP/S load balancer should add to proxied
  /// responses.
  final Input<List<String>>? customResponseHeaders;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Dynamic forwarding configuration. This field is used to configure the backend service with dynamic forwarding
  /// feature which together with Service Extension allows customized and complex routing logic.
  /// Structure is documented below.
  final Input<BackendServiceDynamicForwarding>? dynamicForwarding;

  /// The resource URL for the edge security policy associated with this backend service.
  final Input<String>? edgeSecurityPolicy;

  /// If true, enable Cloud CDN for this BackendService.
  final Input<bool>? enableCdn;

  /// Specifies the canary migration state. Possible values are PREPARE, TEST_BY_PERCENTAGE, and
  /// TEST_ALL_TRAFFIC.
  /// To begin the migration from EXTERNAL to EXTERNAL_MANAGED, the state must be changed to
  /// PREPARE. The state must be changed to TEST_ALL_TRAFFIC before the loadBalancingScheme can be
  /// changed to EXTERNAL_MANAGED. Optionally, the TEST_BY_PERCENTAGE state can be used to migrate
  /// traffic by percentage using externalManagedMigrationTestingPercentage.
  /// Rolling back a migration requires the states to be set in reverse order. So changing the
  /// scheme from EXTERNAL_MANAGED to EXTERNAL requires the state to be set to TEST_ALL_TRAFFIC at
  /// the same time. Optionally, the TEST_BY_PERCENTAGE state can be used to migrate some traffic
  /// back to EXTERNAL or PREPARE can be used to migrate all traffic back to EXTERNAL.
  /// Possible values are: `PREPARE`, `TEST_BY_PERCENTAGE`, `TEST_ALL_TRAFFIC`.
  final Input<String>? externalManagedMigrationState;

  /// Determines the fraction of requests that should be processed by the Global external
  /// Application Load Balancer.
  /// The value of this field must be in the range [0, 100].
  /// Session affinity options will slightly affect this routing behavior, for more details,
  /// see: Session Affinity.
  /// This value can only be set if the loadBalancingScheme in the backend service is set to
  /// EXTERNAL (when using the Classic ALB) and the migration state is TEST_BY_PERCENTAGE.
  final Input<double>? externalManagedMigrationTestingPercentage;

  /// The set of URLs to the HttpHealthCheck or HttpsHealthCheck resource
  /// for health checking this BackendService. Currently at most one health
  /// check can be specified.
  /// A health check must be specified unless the backend service uses an internet
  /// or serverless NEG as a backend.
  /// For internal load balancing, a URL to a HealthCheck resource must be specified instead.
  final Input<String>? healthChecks;

  /// Settings for enabling Cloud Identity Aware Proxy.
  /// If OAuth client is not set, the Google-managed OAuth client is used.
  /// Structure is documented below.
  final Input<BackendServiceIap>? iap;

  /// Specifies preference of traffic to the backend (from the proxy and from the client for proxyless gRPC).
  /// Possible values are: `IPV4_ONLY`, `PREFER_IPV6`, `IPV6_ONLY`.
  final Input<String>? ipAddressSelectionPolicy;

  /// Indicates whether the backend service will be used with internal or
  /// external load balancing. A backend service created for one type of
  /// load balancing cannot be used with the other. For more information, refer to
  /// [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `INTERNAL_SELF_MANAGED`, `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  final Input<String>? loadBalancingScheme;

  /// A list of locality load balancing policies to be used in order of
  /// preference. Either the policy or the customPolicy field should be set.
  /// Overrides any value set in the localityLbPolicy field.
  /// localityLbPolicies is only supported when the BackendService is referenced
  /// by a URL Map that is referenced by a target gRPC proxy that has the
  /// validateForProxyless field set to true.
  /// Structure is documented below.
  final Input<List<BackendServiceLocalityLbPolicy>>? localityLbPolicies;

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
  /// backends[].customMetrics fields.<span pulumi-lang-nodejs="
  /// localityLbPolicy " pulumi-lang-dotnet="
  /// LocalityLbPolicy " pulumi-lang-go="
  /// localityLbPolicy " pulumi-lang-python="
  /// locality_lb_policy " pulumi-lang-yaml="
  /// localityLbPolicy " pulumi-lang-java="
  /// localityLbPolicy ">
  /// locality_lb_policy </span>is applicable to either:
  /// * A regional backend service with the<span pulumi-lang-nodejs=" serviceProtocol " pulumi-lang-dotnet=" ServiceProtocol " pulumi-lang-go=" serviceProtocol " pulumi-lang-python=" service_protocol " pulumi-lang-yaml=" serviceProtocol " pulumi-lang-java=" serviceProtocol "> service_protocol </span>set to HTTP, HTTPS, HTTP2 or H2C,
  /// and loadBalancingScheme set to INTERNAL_MANAGED.
  /// * A global backend service with the<span pulumi-lang-nodejs=" loadBalancingScheme " pulumi-lang-dotnet=" LoadBalancingScheme " pulumi-lang-go=" loadBalancingScheme " pulumi-lang-python=" load_balancing_scheme " pulumi-lang-yaml=" loadBalancingScheme " pulumi-lang-java=" loadBalancingScheme "> load_balancing_scheme </span>set to INTERNAL_SELF_MANAGED.
  /// * A regional backend service with loadBalancingScheme set to EXTERNAL (External Network
  /// Load Balancing). Only MAGLEV and WEIGHTED_MAGLEV values are possible for External
  /// Network Load Balancing. The default is MAGLEV.
  /// If<span pulumi-lang-nodejs=" sessionAffinity " pulumi-lang-dotnet=" SessionAffinity " pulumi-lang-go=" sessionAffinity " pulumi-lang-python=" session_affinity " pulumi-lang-yaml=" sessionAffinity " pulumi-lang-java=" sessionAffinity "> session_affinity </span>is not NONE, and<span pulumi-lang-nodejs=" localityLbPolicy " pulumi-lang-dotnet=" LocalityLbPolicy " pulumi-lang-go=" localityLbPolicy " pulumi-lang-python=" locality_lb_policy " pulumi-lang-yaml=" localityLbPolicy " pulumi-lang-java=" localityLbPolicy "> locality_lb_policy </span>is not set to MAGLEV, WEIGHTED_MAGLEV,
  /// or RING_HASH, session affinity settings will not take effect.
  /// Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced
  /// by a URL map that is bound to target gRPC proxy that has<span pulumi-lang-nodejs=" validateForProxyless
  /// " pulumi-lang-dotnet=" ValidateForProxyless
  /// " pulumi-lang-go=" validateForProxyless
  /// " pulumi-lang-python=" validate_for_proxyless
  /// " pulumi-lang-yaml=" validateForProxyless
  /// " pulumi-lang-java=" validateForProxyless
  /// "> validate_for_proxyless
  /// </span>field set to true.
  /// Possible values are: `ROUND_ROBIN`, `LEAST_REQUEST`, `RING_HASH`, `RANDOM`, `ORIGINAL_DESTINATION`, `MAGLEV`, `WEIGHTED_MAGLEV`, `WEIGHTED_ROUND_ROBIN`.
  final Input<String>? localityLbPolicy;

  /// This field denotes the logging options for the load balancer traffic served by this backend service.
  /// If logging is enabled, logs will be exported to Stackdriver.
  /// Structure is documented below.
  final Input<BackendServiceLogConfig>? logConfig;

  /// Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the
  /// beginning of the stream until the response has been completely processed, including all retries. A stream that
  /// does not complete in this duration is closed.
  /// If not specified, there will be no timeout limit, i.e. the maximum duration is infinite.
  /// This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service.
  /// This field is only allowed when the loadBalancingScheme of the backend service is INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  final Input<BackendServiceMaxStreamDuration>? maxStreamDuration;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final Input<String>? name;

  /// Configures traffic steering properties of internal passthrough Network Load Balancers.
  /// Structure is documented below.
  final Input<BackendServiceNetworkPassThroughLbTrafficPolicy>?
      networkPassThroughLbTrafficPolicy;

  /// Settings controlling eviction of unhealthy hosts from the load balancing pool.
  /// Applicable backend service types can be a global backend service with the
  /// loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED.
  /// Structure is documented below.
  final Input<BackendServiceOutlierDetection>? outlierDetection;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final Input<BackendServiceParams>? params;

  /// Name of backend port. The same name should appear in the instance
  /// groups referenced by this service. Required when the load balancing
  /// scheme is EXTERNAL.
  final Input<String>? portName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The protocol this BackendService uses to communicate with backends.
  /// The default is HTTP. Possible values are HTTP, HTTPS, HTTP2, H2C, TCP, SSL, UDP
  /// or GRPC. Refer to the documentation for the load balancers or for Traffic Director
  /// for more information. Must be set to GRPC when the backend service is referenced
  /// by a URL map that is bound to target gRPC proxy.
  /// Possible values are: `HTTP`, `HTTPS`, `HTTP2`, `TCP`, `SSL`, `UDP`, `GRPC`, `UNSPECIFIED`, `H2C`.
  final Input<String>? protocol;

  /// The security policy associated with this backend service.
  final Input<String>? securityPolicy;

  /// The security settings that apply to this backend service. This field is applicable to either
  /// a regional backend service with the<span pulumi-lang-nodejs=" serviceProtocol " pulumi-lang-dotnet=" ServiceProtocol " pulumi-lang-go=" serviceProtocol " pulumi-lang-python=" service_protocol " pulumi-lang-yaml=" serviceProtocol " pulumi-lang-java=" serviceProtocol "> service_protocol </span>set to HTTP, HTTPS, HTTP2 or H2C, and<span pulumi-lang-nodejs="
  /// loadBalancingScheme " pulumi-lang-dotnet="
  /// LoadBalancingScheme " pulumi-lang-go="
  /// loadBalancingScheme " pulumi-lang-python="
  /// load_balancing_scheme " pulumi-lang-yaml="
  /// loadBalancingScheme " pulumi-lang-java="
  /// loadBalancingScheme ">
  /// load_balancing_scheme </span>set to INTERNAL_MANAGED; or a global backend service with the<span pulumi-lang-nodejs="
  /// loadBalancingScheme " pulumi-lang-dotnet="
  /// LoadBalancingScheme " pulumi-lang-go="
  /// loadBalancingScheme " pulumi-lang-python="
  /// load_balancing_scheme " pulumi-lang-yaml="
  /// loadBalancingScheme " pulumi-lang-java="
  /// loadBalancingScheme ">
  /// load_balancing_scheme </span>set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  final Input<BackendServiceSecuritySettings>? securitySettings;

  /// URL to networkservices.ServiceLbPolicy resource.
  /// Can only be set if load balancing scheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED or INTERNAL_SELF_MANAGED and the scope is global.
  final Input<String>? serviceLbPolicy;

  /// Type of session affinity to use. The default is NONE. Session affinity is
  /// not applicable if the protocol is UDP.
  /// Possible values are: `NONE`, `CLIENT_IP`, `CLIENT_IP_PORT_PROTO`, `CLIENT_IP_PROTO`, `GENERATED_COOKIE`, `HEADER_FIELD`, `HTTP_COOKIE`, `STRONG_COOKIE_AFFINITY`.
  final Input<String>? sessionAffinity;

  /// Describes the HTTP cookie used for stateful session affinity. This field is applicable and required if the sessionAffinity is set to STRONG_COOKIE_AFFINITY.
  /// Structure is documented below.
  final Input<BackendServiceStrongSessionAffinityCookie>?
      strongSessionAffinityCookie;

  /// The backend service timeout has a different meaning depending on the type of load balancer.
  /// For more information see, [Backend service settings](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices).
  /// The default is 30 seconds.
  /// The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds.
  final Input<int>? timeoutSec;

  /// Configuration for Backend Authenticated TLS and mTLS. May only be specified when the backend protocol is SSL, HTTPS or HTTP2.
  /// Structure is documented below.
  final Input<BackendServiceTlsSettings>? tlsSettings;

  BackendServiceArgs({
    this.affinityCookieTtlSec,
    this.backends,
    this.cdnPolicy,
    this.circuitBreakers,
    this.compressionMode,
    this.connectionDrainingTimeoutSec,
    this.consistentHash,
    this.customMetrics,
    this.customRequestHeaders,
    this.customResponseHeaders,
    this.description,
    this.dynamicForwarding,
    this.edgeSecurityPolicy,
    this.enableCdn,
    this.externalManagedMigrationState,
    this.externalManagedMigrationTestingPercentage,
    this.healthChecks,
    this.iap,
    this.ipAddressSelectionPolicy,
    this.loadBalancingScheme,
    this.localityLbPolicies,
    this.localityLbPolicy,
    this.logConfig,
    this.maxStreamDuration,
    this.name,
    this.networkPassThroughLbTrafficPolicy,
    this.outlierDetection,
    this.params,
    this.portName,
    this.project,
    this.protocol,
    this.securityPolicy,
    this.securitySettings,
    this.serviceLbPolicy,
    this.sessionAffinity,
    this.strongSessionAffinityCookie,
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
      map['backends'] = Input.mapOptionalInputValue<List<BackendServiceBackend>,
              List<Map<String, dynamic>>>(
          backendsValue,
          (value) =>
              Input.encodeList<BackendServiceBackend, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final cdnPolicyValue = cdnPolicy;
    if (cdnPolicyValue != null) {
      map['cdnPolicy'] = Input.mapOptionalInputValue<BackendServiceCdnPolicy,
          Map<String, dynamic>>(cdnPolicyValue, (value) => value.toMap());
    }
    final circuitBreakersValue = circuitBreakers;
    if (circuitBreakersValue != null) {
      map['circuitBreakers'] = Input.mapOptionalInputValue<
          BackendServiceCircuitBreakers,
          Map<String, dynamic>>(circuitBreakersValue, (value) => value.toMap());
    }
    final compressionModeValue = compressionMode;
    if (compressionModeValue != null) {
      map['compressionMode'] = compressionModeValue;
    }
    final connectionDrainingTimeoutSecValue = connectionDrainingTimeoutSec;
    if (connectionDrainingTimeoutSecValue != null) {
      map['connectionDrainingTimeoutSec'] = connectionDrainingTimeoutSecValue;
    }
    final consistentHashValue = consistentHash;
    if (consistentHashValue != null) {
      map['consistentHash'] = Input.mapOptionalInputValue<
          BackendServiceConsistentHash,
          Map<String, dynamic>>(consistentHashValue, (value) => value.toMap());
    }
    final customMetricsValue = customMetrics;
    if (customMetricsValue != null) {
      map['customMetrics'] = Input.mapOptionalInputValue<
              List<BackendServiceCustomMetric>, List<Map<String, dynamic>>>(
          customMetricsValue,
          (value) => Input.encodeList<BackendServiceCustomMetric,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final customRequestHeadersValue = customRequestHeaders;
    if (customRequestHeadersValue != null) {
      map['customRequestHeaders'] = customRequestHeadersValue;
    }
    final customResponseHeadersValue = customResponseHeaders;
    if (customResponseHeadersValue != null) {
      map['customResponseHeaders'] = customResponseHeadersValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dynamicForwardingValue = dynamicForwarding;
    if (dynamicForwardingValue != null) {
      map['dynamicForwarding'] = Input.mapOptionalInputValue<
              BackendServiceDynamicForwarding, Map<String, dynamic>>(
          dynamicForwardingValue, (value) => value.toMap());
    }
    final edgeSecurityPolicyValue = edgeSecurityPolicy;
    if (edgeSecurityPolicyValue != null) {
      map['edgeSecurityPolicy'] = edgeSecurityPolicyValue;
    }
    final enableCdnValue = enableCdn;
    if (enableCdnValue != null) {
      map['enableCdn'] = enableCdnValue;
    }
    final externalManagedMigrationStateValue = externalManagedMigrationState;
    if (externalManagedMigrationStateValue != null) {
      map['externalManagedMigrationState'] = externalManagedMigrationStateValue;
    }
    final externalManagedMigrationTestingPercentageValue =
        externalManagedMigrationTestingPercentage;
    if (externalManagedMigrationTestingPercentageValue != null) {
      map['externalManagedMigrationTestingPercentage'] =
          externalManagedMigrationTestingPercentageValue;
    }
    final healthChecksValue = healthChecks;
    if (healthChecksValue != null) {
      map['healthChecks'] = healthChecksValue;
    }
    final iapValue = iap;
    if (iapValue != null) {
      map['iap'] =
          Input.mapOptionalInputValue<BackendServiceIap, Map<String, dynamic>>(
              iapValue, (value) => value.toMap());
    }
    final ipAddressSelectionPolicyValue = ipAddressSelectionPolicy;
    if (ipAddressSelectionPolicyValue != null) {
      map['ipAddressSelectionPolicy'] = ipAddressSelectionPolicyValue;
    }
    final loadBalancingSchemeValue = loadBalancingScheme;
    if (loadBalancingSchemeValue != null) {
      map['loadBalancingScheme'] = loadBalancingSchemeValue;
    }
    final localityLbPoliciesValue = localityLbPolicies;
    if (localityLbPoliciesValue != null) {
      map['localityLbPolicies'] = Input.mapOptionalInputValue<
              List<BackendServiceLocalityLbPolicy>, List<Map<String, dynamic>>>(
          localityLbPoliciesValue,
          (value) => Input.encodeList<BackendServiceLocalityLbPolicy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final localityLbPolicyValue = localityLbPolicy;
    if (localityLbPolicyValue != null) {
      map['localityLbPolicy'] = localityLbPolicyValue;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = Input.mapOptionalInputValue<BackendServiceLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final maxStreamDurationValue = maxStreamDuration;
    if (maxStreamDurationValue != null) {
      map['maxStreamDuration'] = Input.mapOptionalInputValue<
              BackendServiceMaxStreamDuration, Map<String, dynamic>>(
          maxStreamDurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkPassThroughLbTrafficPolicyValue =
        networkPassThroughLbTrafficPolicy;
    if (networkPassThroughLbTrafficPolicyValue != null) {
      map['networkPassThroughLbTrafficPolicy'] = Input.mapOptionalInputValue<
              BackendServiceNetworkPassThroughLbTrafficPolicy,
              Map<String, dynamic>>(
          networkPassThroughLbTrafficPolicyValue, (value) => value.toMap());
    }
    final outlierDetectionValue = outlierDetection;
    if (outlierDetectionValue != null) {
      map['outlierDetection'] = Input.mapOptionalInputValue<
              BackendServiceOutlierDetection, Map<String, dynamic>>(
          outlierDetectionValue, (value) => value.toMap());
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = Input.mapOptionalInputValue<BackendServiceParams,
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
    final securityPolicyValue = securityPolicy;
    if (securityPolicyValue != null) {
      map['securityPolicy'] = securityPolicyValue;
    }
    final securitySettingsValue = securitySettings;
    if (securitySettingsValue != null) {
      map['securitySettings'] = Input.mapOptionalInputValue<
              BackendServiceSecuritySettings, Map<String, dynamic>>(
          securitySettingsValue, (value) => value.toMap());
    }
    final serviceLbPolicyValue = serviceLbPolicy;
    if (serviceLbPolicyValue != null) {
      map['serviceLbPolicy'] = serviceLbPolicyValue;
    }
    final sessionAffinityValue = sessionAffinity;
    if (sessionAffinityValue != null) {
      map['sessionAffinity'] = sessionAffinityValue;
    }
    final strongSessionAffinityCookieValue = strongSessionAffinityCookie;
    if (strongSessionAffinityCookieValue != null) {
      map['strongSessionAffinityCookie'] = Input.mapOptionalInputValue<
              BackendServiceStrongSessionAffinityCookie, Map<String, dynamic>>(
          strongSessionAffinityCookieValue, (value) => value.toMap());
    }
    final timeoutSecValue = timeoutSec;
    if (timeoutSecValue != null) {
      map['timeoutSec'] = timeoutSecValue;
    }
    final tlsSettingsValue = tlsSettings;
    if (tlsSettingsValue != null) {
      map['tlsSettings'] = Input.mapOptionalInputValue<
          BackendServiceTlsSettings,
          Map<String, dynamic>>(tlsSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BackendServiceArgs.fromMap(Map<String, dynamic> map) {
    return BackendServiceArgs(
      affinityCookieTtlSec:
          Input.asOptionalInput<int>(map['affinityCookieTtlSec']),
      backends:
          Input.asOptionalInput<List<BackendServiceBackend>>(map['backends']),
      cdnPolicy:
          Input.asOptionalInput<BackendServiceCdnPolicy>(map['cdnPolicy']),
      circuitBreakers: Input.asOptionalInput<BackendServiceCircuitBreakers>(
          map['circuitBreakers']),
      compressionMode: Input.asOptionalInput<String>(map['compressionMode']),
      connectionDrainingTimeoutSec:
          Input.asOptionalInput<int>(map['connectionDrainingTimeoutSec']),
      consistentHash: Input.asOptionalInput<BackendServiceConsistentHash>(
          map['consistentHash']),
      customMetrics: Input.asOptionalInput<List<BackendServiceCustomMetric>>(
          map['customMetrics']),
      customRequestHeaders:
          Input.asOptionalInput<List<String>>(map['customRequestHeaders']),
      customResponseHeaders:
          Input.asOptionalInput<List<String>>(map['customResponseHeaders']),
      description: Input.asOptionalInput<String>(map['description']),
      dynamicForwarding: Input.asOptionalInput<BackendServiceDynamicForwarding>(
          map['dynamicForwarding']),
      edgeSecurityPolicy:
          Input.asOptionalInput<String>(map['edgeSecurityPolicy']),
      enableCdn: Input.asOptionalInput<bool>(map['enableCdn']),
      externalManagedMigrationState:
          Input.asOptionalInput<String>(map['externalManagedMigrationState']),
      externalManagedMigrationTestingPercentage: Input.asOptionalInput<double>(
          map['externalManagedMigrationTestingPercentage']),
      healthChecks: Input.asOptionalInput<String>(map['healthChecks']),
      iap: Input.asOptionalInput<BackendServiceIap>(map['iap']),
      ipAddressSelectionPolicy:
          Input.asOptionalInput<String>(map['ipAddressSelectionPolicy']),
      loadBalancingScheme:
          Input.asOptionalInput<String>(map['loadBalancingScheme']),
      localityLbPolicies:
          Input.asOptionalInput<List<BackendServiceLocalityLbPolicy>>(
              map['localityLbPolicies']),
      localityLbPolicy: Input.asOptionalInput<String>(map['localityLbPolicy']),
      logConfig:
          Input.asOptionalInput<BackendServiceLogConfig>(map['logConfig']),
      maxStreamDuration: Input.asOptionalInput<BackendServiceMaxStreamDuration>(
          map['maxStreamDuration']),
      name: Input.asOptionalInput<String>(map['name']),
      networkPassThroughLbTrafficPolicy: Input.asOptionalInput<
              BackendServiceNetworkPassThroughLbTrafficPolicy>(
          map['networkPassThroughLbTrafficPolicy']),
      outlierDetection: Input.asOptionalInput<BackendServiceOutlierDetection>(
          map['outlierDetection']),
      params: Input.asOptionalInput<BackendServiceParams>(map['params']),
      portName: Input.asOptionalInput<String>(map['portName']),
      project: Input.asOptionalInput<String>(map['project']),
      protocol: Input.asOptionalInput<String>(map['protocol']),
      securityPolicy: Input.asOptionalInput<String>(map['securityPolicy']),
      securitySettings: Input.asOptionalInput<BackendServiceSecuritySettings>(
          map['securitySettings']),
      serviceLbPolicy: Input.asOptionalInput<String>(map['serviceLbPolicy']),
      sessionAffinity: Input.asOptionalInput<String>(map['sessionAffinity']),
      strongSessionAffinityCookie:
          Input.asOptionalInput<BackendServiceStrongSessionAffinityCookie>(
              map['strongSessionAffinityCookie']),
      timeoutSec: Input.asOptionalInput<int>(map['timeoutSec']),
      tlsSettings:
          Input.asOptionalInput<BackendServiceTlsSettings>(map['tlsSettings']),
    );
  }
}
