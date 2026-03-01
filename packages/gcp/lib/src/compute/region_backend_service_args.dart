// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_backend.dart';
import 'region_backend_service_cdn_policy.dart';
import 'region_backend_service_circuit_breakers.dart';
import 'region_backend_service_connection_tracking_policy.dart';
import 'region_backend_service_consistent_hash.dart';
import 'region_backend_service_custom_metric.dart';
import 'region_backend_service_dynamic_forwarding.dart';
import 'region_backend_service_failover_policy.dart';
import 'region_backend_service_ha_policy.dart';
import 'region_backend_service_iap.dart';
import 'region_backend_service_log_config.dart';
import 'region_backend_service_network_pass_through_lb_traffic_policy.dart';
import 'region_backend_service_outlier_detection.dart';
import 'region_backend_service_params.dart';
import 'region_backend_service_strong_session_affinity_cookie.dart';
import 'region_backend_service_subsetting.dart';
import 'region_backend_service_tls_settings.dart';

/// {@template pulumi_compute_region_backend_service_region_backend_service_args_doc}
/// The set of arguments for RegionBackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_region_backend_service_region_backend_service_args_doc}
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

  /// Creates a new [RegionBackendServiceArgs].
  /// [affinityCookieTtlSec] Lifetime of cookies in seconds if session_affinity is
  /// [backends] The set of backends that serve this RegionBackendService.
  /// [cdnPolicy] Cloud CDN configuration for this BackendService.
  /// [circuitBreakers] Settings controlling the volume of connections to a backend service. This field
  /// [connectionDrainingTimeoutSec] Time for which instance will be drained (not accept new
  /// [connectionTrackingPolicy] Connection Tracking configuration for this BackendService.
  /// [consistentHash] Consistent Hash-based load balancing can be used to provide soft session
  /// [customMetrics] List of custom metrics that are used for the WEIGHTED_ROUND_ROBIN locality_lb_policy.
  /// [description] An optional description of this resource.
  /// [dynamicForwarding] Dynamic forwarding configuration. This field is used to configure the backend service with dynamic forwarding
  /// [enableCdn] If true, enable Cloud CDN for this RegionBackendService.
  /// [failoverPolicy] Policy for failovers.
  /// [haPolicy] Configures self-managed High Availability (HA) for External and Internal Protocol Forwarding.
  /// [healthChecks] The set of URLs to HealthCheck resources for health checking
  /// [iap] Settings for enabling Cloud Identity Aware Proxy.
  /// [ipAddressSelectionPolicy] Specifies preference of traffic to the backend (from the proxy and from the client for proxyless gRPC).
  /// [loadBalancingScheme] Indicates what kind of load balancing this regional backend service
  /// [localityLbPolicy] The load balancing algorithm used within the scope of the locality.
  /// [logConfig] This field denotes the logging options for the load balancer traffic served by this backend service.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [network] The URL of the network to which this backend service belongs.
  /// [networkPassThroughLbTrafficPolicy] Configures traffic steering properties of internal passthrough Network Load Balancers.
  /// [outlierDetection] Settings controlling eviction of unhealthy hosts from the load balancing pool.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [portName] A named port on a backend instance group representing the port for
  /// [project] The ID of the project in which the resource belongs.
  /// [protocol] The protocol this BackendService uses to communicate with backends.
  /// [region] The Region in which the created backend service should reside.
  /// [securityPolicy] The security policy associated with this backend service.
  /// [sessionAffinity] Type of session affinity to use. The default is NONE. Session affinity is
  /// [strongSessionAffinityCookie] Describes the HTTP cookie used for stateful session affinity. This field is applicable and required if the sessionAffinity is set to STRONG_COOKIE_AFFINITY.
  /// [subsetting] Subsetting configuration for this BackendService. Currently this is applicable only for Internal TCP/UDP load balancing and Internal HTTP(S) load balancing.
  /// [timeoutSec] The backend service timeout has a different meaning depending on the type of load balancer.
  /// [tlsSettings] Configuration for Backend Authenticated TLS and mTLS. May only be specified when the backend protocol is SSL, HTTPS or HTTP2.
  RegionBackendServiceArgs({
    int? affinityCookieTtlSec,
    List<RegionBackendServiceBackend>? backends,
    RegionBackendServiceCdnPolicy? cdnPolicy,
    RegionBackendServiceCircuitBreakers? circuitBreakers,
    int? connectionDrainingTimeoutSec,
    RegionBackendServiceConnectionTrackingPolicy? connectionTrackingPolicy,
    RegionBackendServiceConsistentHash? consistentHash,
    List<RegionBackendServiceCustomMetric>? customMetrics,
    String? description,
    RegionBackendServiceDynamicForwarding? dynamicForwarding,
    bool? enableCdn,
    RegionBackendServiceFailoverPolicy? failoverPolicy,
    RegionBackendServiceHaPolicy? haPolicy,
    String? healthChecks,
    RegionBackendServiceIap? iap,
    String? ipAddressSelectionPolicy,
    String? loadBalancingScheme,
    String? localityLbPolicy,
    RegionBackendServiceLogConfig? logConfig,
    String? name,
    String? network,
    RegionBackendServiceNetworkPassThroughLbTrafficPolicy?
    networkPassThroughLbTrafficPolicy,
    RegionBackendServiceOutlierDetection? outlierDetection,
    RegionBackendServiceParams? params,
    String? portName,
    String? project,
    String? protocol,
    String? region,
    String? securityPolicy,
    String? sessionAffinity,
    RegionBackendServiceStrongSessionAffinityCookie?
    strongSessionAffinityCookie,
    RegionBackendServiceSubsetting? subsetting,
    int? timeoutSec,
    RegionBackendServiceTlsSettings? tlsSettings,
  }) : affinityCookieTtlSec = pulumi.Input.asOptionalInput<int>(
         affinityCookieTtlSec,
       ),
       backends = pulumi
           .Input.asOptionalInput<List<RegionBackendServiceBackend>>(backends),
       cdnPolicy = pulumi.Input.asOptionalInput<RegionBackendServiceCdnPolicy>(
         cdnPolicy,
       ),
       circuitBreakers =
           pulumi.Input.asOptionalInput<RegionBackendServiceCircuitBreakers>(
             circuitBreakers,
           ),
       connectionDrainingTimeoutSec = pulumi.Input.asOptionalInput<int>(
         connectionDrainingTimeoutSec,
       ),
       connectionTrackingPolicy =
           pulumi.Input.asOptionalInput<
             RegionBackendServiceConnectionTrackingPolicy
           >(connectionTrackingPolicy),
       consistentHash =
           pulumi.Input.asOptionalInput<RegionBackendServiceConsistentHash>(
             consistentHash,
           ),
       customMetrics =
           pulumi.Input.asOptionalInput<List<RegionBackendServiceCustomMetric>>(
             customMetrics,
           ),
       description = pulumi.Input.asOptionalInput<String>(description),
       dynamicForwarding =
           pulumi.Input.asOptionalInput<RegionBackendServiceDynamicForwarding>(
             dynamicForwarding,
           ),
       enableCdn = pulumi.Input.asOptionalInput<bool>(enableCdn),
       failoverPolicy =
           pulumi.Input.asOptionalInput<RegionBackendServiceFailoverPolicy>(
             failoverPolicy,
           ),
       haPolicy = pulumi.Input.asOptionalInput<RegionBackendServiceHaPolicy>(
         haPolicy,
       ),
       healthChecks = pulumi.Input.asOptionalInput<String>(healthChecks),
       iap = pulumi.Input.asOptionalInput<RegionBackendServiceIap>(iap),
       ipAddressSelectionPolicy = pulumi.Input.asOptionalInput<String>(
         ipAddressSelectionPolicy,
       ),
       loadBalancingScheme = pulumi.Input.asOptionalInput<String>(
         loadBalancingScheme,
       ),
       localityLbPolicy = pulumi.Input.asOptionalInput<String>(
         localityLbPolicy,
       ),
       logConfig = pulumi.Input.asOptionalInput<RegionBackendServiceLogConfig>(
         logConfig,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       network = pulumi.Input.asOptionalInput<String>(network),
       networkPassThroughLbTrafficPolicy =
           pulumi.Input.asOptionalInput<
             RegionBackendServiceNetworkPassThroughLbTrafficPolicy
           >(networkPassThroughLbTrafficPolicy),
       outlierDetection =
           pulumi.Input.asOptionalInput<RegionBackendServiceOutlierDetection>(
             outlierDetection,
           ),
       params = pulumi.Input.asOptionalInput<RegionBackendServiceParams>(
         params,
       ),
       portName = pulumi.Input.asOptionalInput<String>(portName),
       project = pulumi.Input.asOptionalInput<String>(project),
       protocol = pulumi.Input.asOptionalInput<String>(protocol),
       region = pulumi.Input.asOptionalInput<String>(region),
       securityPolicy = pulumi.Input.asOptionalInput<String>(securityPolicy),
       sessionAffinity = pulumi.Input.asOptionalInput<String>(sessionAffinity),
       strongSessionAffinityCookie =
           pulumi.Input.asOptionalInput<
             RegionBackendServiceStrongSessionAffinityCookie
           >(strongSessionAffinityCookie),
       subsetting = pulumi
           .Input.asOptionalInput<RegionBackendServiceSubsetting>(subsetting),
       timeoutSec = pulumi.Input.asOptionalInput<int>(timeoutSec),
       tlsSettings = pulumi
           .Input.asOptionalInput<RegionBackendServiceTlsSettings>(tlsSettings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityCookieTtlSec': ?affinityCookieTtlSec,
      'backends':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionBackendServiceBackend>,
            List<Map<String, dynamic>>
          >(
            backends,
            (value) =>
                pulumi.Input.encodeList<
                  RegionBackendServiceBackend,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cdnPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceCdnPolicy,
            Map<String, dynamic>
          >(cdnPolicy, (value) => value.toMap()),
      'circuitBreakers':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceCircuitBreakers,
            Map<String, dynamic>
          >(circuitBreakers, (value) => value.toMap()),
      'connectionDrainingTimeoutSec': ?connectionDrainingTimeoutSec,
      'connectionTrackingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceConnectionTrackingPolicy,
            Map<String, dynamic>
          >(connectionTrackingPolicy, (value) => value.toMap()),
      'consistentHash':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceConsistentHash,
            Map<String, dynamic>
          >(consistentHash, (value) => value.toMap()),
      'customMetrics':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionBackendServiceCustomMetric>,
            List<Map<String, dynamic>>
          >(
            customMetrics,
            (value) =>
                pulumi.Input.encodeList<
                  RegionBackendServiceCustomMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'dynamicForwarding':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceDynamicForwarding,
            Map<String, dynamic>
          >(dynamicForwarding, (value) => value.toMap()),
      'enableCdn': ?enableCdn,
      'failoverPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceFailoverPolicy,
            Map<String, dynamic>
          >(failoverPolicy, (value) => value.toMap()),
      'haPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceHaPolicy,
            Map<String, dynamic>
          >(haPolicy, (value) => value.toMap()),
      'healthChecks': ?healthChecks,
      'iap':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceIap,
            Map<String, dynamic>
          >(iap, (value) => value.toMap()),
      'ipAddressSelectionPolicy': ?ipAddressSelectionPolicy,
      'loadBalancingScheme': ?loadBalancingScheme,
      'localityLbPolicy': ?localityLbPolicy,
      'logConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceLogConfig,
            Map<String, dynamic>
          >(logConfig, (value) => value.toMap()),
      'name': ?name,
      'network': ?network,
      'networkPassThroughLbTrafficPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceNetworkPassThroughLbTrafficPolicy,
            Map<String, dynamic>
          >(networkPassThroughLbTrafficPolicy, (value) => value.toMap()),
      'outlierDetection':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceOutlierDetection,
            Map<String, dynamic>
          >(outlierDetection, (value) => value.toMap()),
      'params':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceParams,
            Map<String, dynamic>
          >(params, (value) => value.toMap()),
      'portName': ?portName,
      'project': ?project,
      'protocol': ?protocol,
      'region': ?region,
      'securityPolicy': ?securityPolicy,
      'sessionAffinity': ?sessionAffinity,
      'strongSessionAffinityCookie':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceStrongSessionAffinityCookie,
            Map<String, dynamic>
          >(strongSessionAffinityCookie, (value) => value.toMap()),
      'subsetting':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceSubsetting,
            Map<String, dynamic>
          >(subsetting, (value) => value.toMap()),
      'timeoutSec': ?timeoutSec,
      'tlsSettings':
          ?pulumi.Input.mapOptionalInputValue<
            RegionBackendServiceTlsSettings,
            Map<String, dynamic>
          >(tlsSettings, (value) => value.toMap()),
    };
  }

  factory RegionBackendServiceArgs.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceArgs(
      affinityCookieTtlSec: map['affinityCookieTtlSec'] == null
          ? null
          : map['affinityCookieTtlSec'] as int,
      backends: map['backends'] == null
          ? null
          : pulumi.Input.decodeList<RegionBackendServiceBackend>(
              map['backends'],
              (value) => RegionBackendServiceBackend.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      cdnPolicy: map['cdnPolicy'] == null
          ? null
          : RegionBackendServiceCdnPolicy.fromMap(
              (map['cdnPolicy'] as Map).cast<String, dynamic>(),
            ),
      circuitBreakers: map['circuitBreakers'] == null
          ? null
          : RegionBackendServiceCircuitBreakers.fromMap(
              (map['circuitBreakers'] as Map).cast<String, dynamic>(),
            ),
      connectionDrainingTimeoutSec: map['connectionDrainingTimeoutSec'] == null
          ? null
          : map['connectionDrainingTimeoutSec'] as int,
      connectionTrackingPolicy: map['connectionTrackingPolicy'] == null
          ? null
          : RegionBackendServiceConnectionTrackingPolicy.fromMap(
              (map['connectionTrackingPolicy'] as Map).cast<String, dynamic>(),
            ),
      consistentHash: map['consistentHash'] == null
          ? null
          : RegionBackendServiceConsistentHash.fromMap(
              (map['consistentHash'] as Map).cast<String, dynamic>(),
            ),
      customMetrics: map['customMetrics'] == null
          ? null
          : pulumi.Input.decodeList<RegionBackendServiceCustomMetric>(
              map['customMetrics'],
              (value) => RegionBackendServiceCustomMetric.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      dynamicForwarding: map['dynamicForwarding'] == null
          ? null
          : RegionBackendServiceDynamicForwarding.fromMap(
              (map['dynamicForwarding'] as Map).cast<String, dynamic>(),
            ),
      enableCdn: map['enableCdn'] == null ? null : map['enableCdn'] as bool,
      failoverPolicy: map['failoverPolicy'] == null
          ? null
          : RegionBackendServiceFailoverPolicy.fromMap(
              (map['failoverPolicy'] as Map).cast<String, dynamic>(),
            ),
      haPolicy: map['haPolicy'] == null
          ? null
          : RegionBackendServiceHaPolicy.fromMap(
              (map['haPolicy'] as Map).cast<String, dynamic>(),
            ),
      healthChecks: map['healthChecks'] == null
          ? null
          : map['healthChecks'] as String,
      iap: map['iap'] == null
          ? null
          : RegionBackendServiceIap.fromMap(
              (map['iap'] as Map).cast<String, dynamic>(),
            ),
      ipAddressSelectionPolicy: map['ipAddressSelectionPolicy'] == null
          ? null
          : map['ipAddressSelectionPolicy'] as String,
      loadBalancingScheme: map['loadBalancingScheme'] == null
          ? null
          : map['loadBalancingScheme'] as String,
      localityLbPolicy: map['localityLbPolicy'] == null
          ? null
          : map['localityLbPolicy'] as String,
      logConfig: map['logConfig'] == null
          ? null
          : RegionBackendServiceLogConfig.fromMap(
              (map['logConfig'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkPassThroughLbTrafficPolicy:
          map['networkPassThroughLbTrafficPolicy'] == null
          ? null
          : RegionBackendServiceNetworkPassThroughLbTrafficPolicy.fromMap(
              (map['networkPassThroughLbTrafficPolicy'] as Map)
                  .cast<String, dynamic>(),
            ),
      outlierDetection: map['outlierDetection'] == null
          ? null
          : RegionBackendServiceOutlierDetection.fromMap(
              (map['outlierDetection'] as Map).cast<String, dynamic>(),
            ),
      params: map['params'] == null
          ? null
          : RegionBackendServiceParams.fromMap(
              (map['params'] as Map).cast<String, dynamic>(),
            ),
      portName: map['portName'] == null ? null : map['portName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityPolicy: map['securityPolicy'] == null
          ? null
          : map['securityPolicy'] as String,
      sessionAffinity: map['sessionAffinity'] == null
          ? null
          : map['sessionAffinity'] as String,
      strongSessionAffinityCookie: map['strongSessionAffinityCookie'] == null
          ? null
          : RegionBackendServiceStrongSessionAffinityCookie.fromMap(
              (map['strongSessionAffinityCookie'] as Map)
                  .cast<String, dynamic>(),
            ),
      subsetting: map['subsetting'] == null
          ? null
          : RegionBackendServiceSubsetting.fromMap(
              (map['subsetting'] as Map).cast<String, dynamic>(),
            ),
      timeoutSec: map['timeoutSec'] == null ? null : map['timeoutSec'] as int,
      tlsSettings: map['tlsSettings'] == null
          ? null
          : RegionBackendServiceTlsSettings.fromMap(
              (map['tlsSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
