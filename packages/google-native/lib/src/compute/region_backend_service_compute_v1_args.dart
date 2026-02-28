// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_compute_v1.dart';
import 'backend_service_cdn_policy_compute_v1.dart';
import 'backend_service_connection_tracking_policy_compute_v1.dart';
import 'backend_service_failover_policy_compute_v1.dart';
import 'backend_service_iapcompute_v1.dart';
import 'backend_service_locality_load_balancing_policy_config_compute_v1.dart';
import 'backend_service_log_config_compute_v1.dart';
import 'backend_service_used_by_compute_v1.dart';
import 'circuit_breakers_compute_v1.dart';
import 'connection_draining_compute_v1.dart';
import 'consistent_hash_load_balancer_settings_compute_v1.dart';
import 'duration_compute_v1.dart';
import 'outlier_detection_compute_v1.dart';
import 'region_backend_service_compression_mode_compute_v1.dart';
import 'region_backend_service_load_balancing_scheme_compute_v1.dart';
import 'region_backend_service_locality_lb_policy_compute_v1.dart';
import 'region_backend_service_protocol_compute_v1.dart';
import 'region_backend_service_session_affinity_compute_v1.dart';
import 'security_settings_compute_v1.dart';
import 'subsetting_compute_v1.dart';

/// {@template pulumi_compute_v1_region_backend_service_compute_v1_args_doc}
/// The set of arguments for RegionBackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_region_backend_service_compute_v1_args_doc}
class RegionBackendServiceComputeV1Args {
  /// Lifetime of cookies in seconds. This setting is applicable to external and internal HTTP(S) load balancers and Traffic Director and requires GENERATED_COOKIE or HTTP_COOKIE session affinity. If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value is two weeks (1,209,600). Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<int>? affinityCookieTtlSec;

  /// The list of backends that serve this BackendService.
  final pulumi.Input<List<BackendComputeV1>>? backends;

  /// Cloud CDN configuration for this BackendService. Only available for specified load balancer types.
  final pulumi.Input<BackendServiceCdnPolicyComputeV1>? cdnPolicy;
  final pulumi.Input<CircuitBreakersComputeV1>? circuitBreakers;

  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  final pulumi.Input<RegionBackendServiceCompressionModeComputeV1>?
      compressionMode;
  final pulumi.Input<ConnectionDrainingComputeV1>? connectionDraining;

  /// Connection Tracking configuration for this BackendService. Connection tracking policy settings are only available for Network Load Balancing and Internal TCP/UDP Load Balancing.
  final pulumi.Input<BackendServiceConnectionTrackingPolicyComputeV1>?
      connectionTrackingPolicy;

  /// Consistent Hash-based load balancing can be used to provide soft session affinity based on HTTP headers, cookies or other properties. This load balancing policy is applicable only for HTTP connections. The affinity to a particular destination host will be lost when one or more hosts are added/removed from the destination service. This field specifies parameters that control consistent hashing. This field is only applicable when localityLbPolicy is set to MAGLEV or RING_HASH. This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<ConsistentHashLoadBalancerSettingsComputeV1>?
      consistentHash;

  /// Headers that the load balancer adds to proxied requests. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  final pulumi.Input<List<String>>? customRequestHeaders;

  /// Headers that the load balancer adds to proxied responses. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  final pulumi.Input<List<String>>? customResponseHeaders;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// If true, enables Cloud CDN for the backend service of an external HTTP(S) load balancer.
  final pulumi.Input<bool>? enableCDN;

  /// Requires at least one backend instance group to be defined as a backup (failover) backend. For load balancers that have configurable failover: [Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview).
  final pulumi.Input<BackendServiceFailoverPolicyComputeV1>? failoverPolicy;

  /// The list of URLs to the healthChecks, httpHealthChecks (legacy), or httpsHealthChecks (legacy) resource for health checking this backend service. Not all backend services support legacy health checks. See Load balancer guide. Currently, at most one health check can be specified for each backend service. Backend services with instance group or zonal NEG backends must have a health check. Backend services with internet or serverless NEG backends must not have a health check.
  final pulumi.Input<List<String>>? healthChecks;

  /// The configurations for Identity-Aware Proxy on this resource. Not available for Internal TCP/UDP Load Balancing and Network Load Balancing.
  final pulumi.Input<BackendServiceIAPComputeV1>? iap;

  /// Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
  final pulumi.Input<RegionBackendServiceLoadBalancingSchemeComputeV1>?
      loadBalancingScheme;

  /// A list of locality load-balancing policies to be used in order of preference. When you use localityLbPolicies, you must set at least one value for either the localityLbPolicies[].policy or the localityLbPolicies[].customPolicy field. localityLbPolicies overrides any value set in the localityLbPolicy field. For an example of how to use this field, see Define a list of preferred policies. Caution: This field and its children are intended for use in a service mesh that includes gRPC clients only. Envoy proxies can't use backend services that have this configuration.
  final pulumi
      .Input<List<BackendServiceLocalityLoadBalancingPolicyConfigComputeV1>>?
      localityLbPolicies;

  /// The load balancing algorithm used within the scope of the locality. The possible values are: - ROUND_ROBIN: This is a simple policy in which each healthy backend is selected in round robin order. This is the default. - LEAST_REQUEST: An O(1) algorithm which selects two random healthy hosts and picks the host which has fewer active requests. - RING_HASH: The ring/modulo hash load balancer implements consistent hashing to backends. The algorithm has the property that the addition/removal of a host from a set of N hosts only affects 1/N of the requests. - RANDOM: The load balancer selects a random healthy host. - ORIGINAL_DESTINATION: Backend host is selected based on the client connection metadata, i.e., connections are opened to the same address as the destination address of the incoming connection before the connection was redirected to the load balancer. - MAGLEV: used as a drop in replacement for the ring hash load balancer. Maglev is not as stable as ring hash but has faster table lookup build times and host selection times. For more information about Maglev, see https://ai.google/research/pubs/pub44824 This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED, INTERNAL_MANAGED, or EXTERNAL_MANAGED. If sessionAffinity is not NONE, and this field is not set to MAGLEV or RING_HASH, session affinity settings will not take effect. Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<RegionBackendServiceLocalityLbPolicyComputeV1>?
      localityLbPolicy;

  /// This field denotes the logging options for the load balancer traffic served by this backend service. If logging is enabled, logs will be exported to Stackdriver.
  final pulumi.Input<BackendServiceLogConfigComputeV1>? logConfig;

  /// Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the beginning of the stream until the response has been completely processed, including all retries. A stream that does not complete in this duration is closed. If not specified, there will be no timeout limit, i.e. the maximum duration is infinite. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. This field is only allowed when the loadBalancingScheme of the backend service is INTERNAL_SELF_MANAGED.
  final pulumi.Input<DurationComputeV1>? maxStreamDuration;

  /// Deployment metadata associated with the resource to be set by a GKE hub controller and read by the backend RCTH
  final pulumi.Input<Map<String, String>>? metadatas;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The URL of the network to which this backend service belongs. This field can only be specified when the load balancing scheme is set to INTERNAL.
  final pulumi.Input<String>? network;

  /// Settings controlling the ejection of unhealthy backend endpoints from the load balancing pool of each individual proxy instance that processes the traffic for the given backend service. If not set, this feature is considered disabled. Results of the outlier detection algorithm (ejection of endpoints from the load balancing pool and returning them back to the pool) are executed independently by each proxy instance of the load balancer. In most cases, more than one proxy instance handles the traffic received by a backend service. Thus, it is possible that an unhealthy endpoint is detected and ejected by only some of the proxies, and while this happens, other proxies may continue to send requests to the same unhealthy endpoint until they detect and eject the unhealthy endpoint. Applicable backend endpoints can be: - VM instances in an Instance Group - Endpoints in a Zonal NEG (GCE_VM_IP, GCE_VM_IP_PORT) - Endpoints in a Hybrid Connectivity NEG (NON_GCP_PRIVATE_IP_PORT) - Serverless NEGs, that resolve to Cloud Run, App Engine, or Cloud Functions Services - Private Service Connect NEGs, that resolve to Google-managed regional API endpoints or managed services published using Private Service Connect Applicable backend service types can be: - A global backend service with the loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED. - A regional backend service with the serviceProtocol set to HTTP, HTTPS, or HTTP2, and loadBalancingScheme set to INTERNAL_MANAGED or EXTERNAL_MANAGED. Not supported for Serverless NEGs. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<OutlierDetectionComputeV1>? outlierDetection;

  /// Deprecated in favor of portName. The TCP port to connect on the backend. The default value is 80. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port.
  final pulumi.Input<int>? port;

  /// A named port on a backend instance group representing the port for communication to the backend VMs in that group. The named port must be [defined on each backend instance group](https://cloud.google.com/load-balancing/docs/backend-service#named_ports). This parameter has no meaning if the backends are NEGs. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port_name.
  final pulumi.Input<String>? portName;
  final pulumi.Input<String>? project;

  /// The protocol this BackendService uses to communicate with backends. Possible values are HTTP, HTTPS, HTTP2, TCP, SSL, UDP or GRPC. depending on the chosen load balancer or Traffic Director configuration. Refer to the documentation for the load balancers or for Traffic Director for more information. Must be set to GRPC when the backend service is referenced by a URL map that is bound to target gRPC proxy.
  final pulumi.Input<RegionBackendServiceProtocolComputeV1>? protocol;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// This field specifies the security settings that apply to this backend service. This field is applicable to a global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<SecuritySettingsComputeV1>? securitySettings;

  /// URLs of networkservices.ServiceBinding resources. Can only be set if load balancing scheme is INTERNAL_SELF_MANAGED. If set, lists of backends and health checks must be both empty.
  final pulumi.Input<List<String>>? serviceBindings;

  /// Type of session affinity to use. The default is NONE. Only NONE and HEADER_FIELD are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. For more details, see: [Session Affinity](https://cloud.google.com/load-balancing/docs/backend-service#session_affinity).
  final pulumi.Input<RegionBackendServiceSessionAffinityComputeV1>?
      sessionAffinity;
  final pulumi.Input<SubsettingComputeV1>? subsetting;

  /// The backend service timeout has a different meaning depending on the type of load balancer. For more information see, Backend service settings. The default is 30 seconds. The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. Instead, use maxStreamDuration.
  final pulumi.Input<int>? timeoutSec;
  final pulumi.Input<List<BackendServiceUsedByComputeV1>>? usedBy;

  /// Creates a new [RegionBackendServiceComputeV1Args].
  /// [affinityCookieTtlSec] Lifetime of cookies in seconds. This setting is applicable to external and internal HTTP(S) load balancers and Traffic Director and requires GENERATED_COOKIE or HTTP_COOKIE session affinity. If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value is two weeks (1,209,600). Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [backends] The list of backends that serve this BackendService.
  /// [cdnPolicy] Cloud CDN configuration for this BackendService. Only available for specified load balancer types.
  /// [circuitBreakers] Optional.
  /// [compressionMode] Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// [connectionDraining] Optional.
  /// [connectionTrackingPolicy] Connection Tracking configuration for this BackendService. Connection tracking policy settings are only available for Network Load Balancing and Internal TCP/UDP Load Balancing.
  /// [consistentHash] Consistent Hash-based load balancing can be used to provide soft session affinity based on HTTP headers, cookies or other properties. This load balancing policy is applicable only for HTTP connections. The affinity to a particular destination host will be lost when one or more hosts are added/removed from the destination service. This field specifies parameters that control consistent hashing. This field is only applicable when localityLbPolicy is set to MAGLEV or RING_HASH. This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  /// [customRequestHeaders] Headers that the load balancer adds to proxied requests. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  /// [customResponseHeaders] Headers that the load balancer adds to proxied responses. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [enableCDN] If true, enables Cloud CDN for the backend service of an external HTTP(S) load balancer.
  /// [failoverPolicy] Requires at least one backend instance group to be defined as a backup (failover) backend. For load balancers that have configurable failover: [Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview).
  /// [healthChecks] The list of URLs to the healthChecks, httpHealthChecks (legacy), or httpsHealthChecks (legacy) resource for health checking this backend service. Not all backend services support legacy health checks. See Load balancer guide. Currently, at most one health check can be specified for each backend service. Backend services with instance group or zonal NEG backends must have a health check. Backend services with internet or serverless NEG backends must not have a health check.
  /// [iap] The configurations for Identity-Aware Proxy on this resource. Not available for Internal TCP/UDP Load Balancing and Network Load Balancing.
  /// [loadBalancingScheme] Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
  /// [localityLbPolicies] A list of locality load-balancing policies to be used in order of preference. When you use localityLbPolicies, you must set at least one value for either the localityLbPolicies[].policy or the localityLbPolicies[].customPolicy field. localityLbPolicies overrides any value set in the localityLbPolicy field. For an example of how to use this field, see Define a list of preferred policies. Caution: This field and its children are intended for use in a service mesh that includes gRPC clients only. Envoy proxies can't use backend services that have this configuration.
  /// [localityLbPolicy] The load balancing algorithm used within the scope of the locality. The possible values are: - ROUND_ROBIN: This is a simple policy in which each healthy backend is selected in round robin order. This is the default. - LEAST_REQUEST: An O(1) algorithm which selects two random healthy hosts and picks the host which has fewer active requests. - RING_HASH: The ring/modulo hash load balancer implements consistent hashing to backends. The algorithm has the property that the addition/removal of a host from a set of N hosts only affects 1/N of the requests. - RANDOM: The load balancer selects a random healthy host. - ORIGINAL_DESTINATION: Backend host is selected based on the client connection metadata, i.e., connections are opened to the same address as the destination address of the incoming connection before the connection was redirected to the load balancer. - MAGLEV: used as a drop in replacement for the ring hash load balancer. Maglev is not as stable as ring hash but has faster table lookup build times and host selection times. For more information about Maglev, see https://ai.google/research/pubs/pub44824 This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED, INTERNAL_MANAGED, or EXTERNAL_MANAGED. If sessionAffinity is not NONE, and this field is not set to MAGLEV or RING_HASH, session affinity settings will not take effect. Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [logConfig] This field denotes the logging options for the load balancer traffic served by this backend service. If logging is enabled, logs will be exported to Stackdriver.
  /// [maxStreamDuration] Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the beginning of the stream until the response has been completely processed, including all retries. A stream that does not complete in this duration is closed. If not specified, there will be no timeout limit, i.e. the maximum duration is infinite. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. This field is only allowed when the loadBalancingScheme of the backend service is INTERNAL_SELF_MANAGED.
  /// [metadatas] Deployment metadata associated with the resource to be set by a GKE hub controller and read by the backend RCTH
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the network to which this backend service belongs. This field can only be specified when the load balancing scheme is set to INTERNAL.
  /// [outlierDetection] Settings controlling the ejection of unhealthy backend endpoints from the load balancing pool of each individual proxy instance that processes the traffic for the given backend service. If not set, this feature is considered disabled. Results of the outlier detection algorithm (ejection of endpoints from the load balancing pool and returning them back to the pool) are executed independently by each proxy instance of the load balancer. In most cases, more than one proxy instance handles the traffic received by a backend service. Thus, it is possible that an unhealthy endpoint is detected and ejected by only some of the proxies, and while this happens, other proxies may continue to send requests to the same unhealthy endpoint until they detect and eject the unhealthy endpoint. Applicable backend endpoints can be: - VM instances in an Instance Group - Endpoints in a Zonal NEG (GCE_VM_IP, GCE_VM_IP_PORT) - Endpoints in a Hybrid Connectivity NEG (NON_GCP_PRIVATE_IP_PORT) - Serverless NEGs, that resolve to Cloud Run, App Engine, or Cloud Functions Services - Private Service Connect NEGs, that resolve to Google-managed regional API endpoints or managed services published using Private Service Connect Applicable backend service types can be: - A global backend service with the loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED. - A regional backend service with the serviceProtocol set to HTTP, HTTPS, or HTTP2, and loadBalancingScheme set to INTERNAL_MANAGED or EXTERNAL_MANAGED. Not supported for Serverless NEGs. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [port] Deprecated in favor of portName. The TCP port to connect on the backend. The default value is 80. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port.
  /// [portName] A named port on a backend instance group representing the port for communication to the backend VMs in that group. The named port must be [defined on each backend instance group](https://cloud.google.com/load-balancing/docs/backend-service#named_ports). This parameter has no meaning if the backends are NEGs. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port_name.
  /// [project] Optional.
  /// [protocol] The protocol this BackendService uses to communicate with backends. Possible values are HTTP, HTTPS, HTTP2, TCP, SSL, UDP or GRPC. depending on the chosen load balancer or Traffic Director configuration. Refer to the documentation for the load balancers or for Traffic Director for more information. Must be set to GRPC when the backend service is referenced by a URL map that is bound to target gRPC proxy.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [securitySettings] This field specifies the security settings that apply to this backend service. This field is applicable to a global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  /// [serviceBindings] URLs of networkservices.ServiceBinding resources. Can only be set if load balancing scheme is INTERNAL_SELF_MANAGED. If set, lists of backends and health checks must be both empty.
  /// [sessionAffinity] Type of session affinity to use. The default is NONE. Only NONE and HEADER_FIELD are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. For more details, see: [Session Affinity](https://cloud.google.com/load-balancing/docs/backend-service#session_affinity).
  /// [subsetting] Optional.
  /// [timeoutSec] The backend service timeout has a different meaning depending on the type of load balancer. For more information see, Backend service settings. The default is 30 seconds. The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. Instead, use maxStreamDuration.
  /// [usedBy] Optional.
  RegionBackendServiceComputeV1Args({
    int? affinityCookieTtlSec,
    List<BackendComputeV1>? backends,
    BackendServiceCdnPolicyComputeV1? cdnPolicy,
    CircuitBreakersComputeV1? circuitBreakers,
    RegionBackendServiceCompressionModeComputeV1? compressionMode,
    ConnectionDrainingComputeV1? connectionDraining,
    BackendServiceConnectionTrackingPolicyComputeV1? connectionTrackingPolicy,
    ConsistentHashLoadBalancerSettingsComputeV1? consistentHash,
    List<String>? customRequestHeaders,
    List<String>? customResponseHeaders,
    String? description,
    bool? enableCDN,
    BackendServiceFailoverPolicyComputeV1? failoverPolicy,
    List<String>? healthChecks,
    BackendServiceIAPComputeV1? iap,
    RegionBackendServiceLoadBalancingSchemeComputeV1? loadBalancingScheme,
    List<BackendServiceLocalityLoadBalancingPolicyConfigComputeV1>?
        localityLbPolicies,
    RegionBackendServiceLocalityLbPolicyComputeV1? localityLbPolicy,
    BackendServiceLogConfigComputeV1? logConfig,
    DurationComputeV1? maxStreamDuration,
    Map<String, String>? metadatas,
    String? name,
    String? network,
    OutlierDetectionComputeV1? outlierDetection,
    int? port,
    String? portName,
    String? project,
    RegionBackendServiceProtocolComputeV1? protocol,
    required String region,
    String? requestId,
    SecuritySettingsComputeV1? securitySettings,
    List<String>? serviceBindings,
    RegionBackendServiceSessionAffinityComputeV1? sessionAffinity,
    SubsettingComputeV1? subsetting,
    int? timeoutSec,
    List<BackendServiceUsedByComputeV1>? usedBy,
  })  : affinityCookieTtlSec =
            pulumi.Input.asOptionalInput<int>(affinityCookieTtlSec),
        backends =
            pulumi.Input.asOptionalInput<List<BackendComputeV1>>(backends),
        cdnPolicy =
            pulumi.Input.asOptionalInput<BackendServiceCdnPolicyComputeV1>(
                cdnPolicy),
        circuitBreakers =
            pulumi.Input.asOptionalInput<CircuitBreakersComputeV1>(
                circuitBreakers),
        compressionMode = pulumi.Input.asOptionalInput<
            RegionBackendServiceCompressionModeComputeV1>(compressionMode),
        connectionDraining =
            pulumi.Input.asOptionalInput<ConnectionDrainingComputeV1>(
                connectionDraining),
        connectionTrackingPolicy = pulumi.Input.asOptionalInput<
                BackendServiceConnectionTrackingPolicyComputeV1>(
            connectionTrackingPolicy),
        consistentHash = pulumi.Input.asOptionalInput<
            ConsistentHashLoadBalancerSettingsComputeV1>(consistentHash),
        customRequestHeaders =
            pulumi.Input.asOptionalInput<List<String>>(customRequestHeaders),
        customResponseHeaders =
            pulumi.Input.asOptionalInput<List<String>>(customResponseHeaders),
        description = pulumi.Input.asOptionalInput<String>(description),
        enableCDN = pulumi.Input.asOptionalInput<bool>(enableCDN),
        failoverPolicy =
            pulumi.Input.asOptionalInput<BackendServiceFailoverPolicyComputeV1>(
                failoverPolicy),
        healthChecks = pulumi.Input.asOptionalInput<List<String>>(healthChecks),
        iap = pulumi.Input.asOptionalInput<BackendServiceIAPComputeV1>(iap),
        loadBalancingScheme = pulumi.Input.asOptionalInput<
                RegionBackendServiceLoadBalancingSchemeComputeV1>(
            loadBalancingScheme),
        localityLbPolicies = pulumi.Input.asOptionalInput<
                List<BackendServiceLocalityLoadBalancingPolicyConfigComputeV1>>(
            localityLbPolicies),
        localityLbPolicy = pulumi.Input.asOptionalInput<
            RegionBackendServiceLocalityLbPolicyComputeV1>(localityLbPolicy),
        logConfig =
            pulumi.Input.asOptionalInput<BackendServiceLogConfigComputeV1>(
                logConfig),
        maxStreamDuration =
            pulumi.Input.asOptionalInput<DurationComputeV1>(maxStreamDuration),
        metadatas =
            pulumi.Input.asOptionalInput<Map<String, String>>(metadatas),
        name = pulumi.Input.asOptionalInput<String>(name),
        network = pulumi.Input.asOptionalInput<String>(network),
        outlierDetection =
            pulumi.Input.asOptionalInput<OutlierDetectionComputeV1>(
                outlierDetection),
        port = pulumi.Input.asOptionalInput<int>(port),
        portName = pulumi.Input.asOptionalInput<String>(portName),
        project = pulumi.Input.asOptionalInput<String>(project),
        protocol =
            pulumi.Input.asOptionalInput<RegionBackendServiceProtocolComputeV1>(
                protocol),
        region = pulumi.Input.asInput<String>(region),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        securitySettings =
            pulumi.Input.asOptionalInput<SecuritySettingsComputeV1>(
                securitySettings),
        serviceBindings =
            pulumi.Input.asOptionalInput<List<String>>(serviceBindings),
        sessionAffinity = pulumi.Input.asOptionalInput<
            RegionBackendServiceSessionAffinityComputeV1>(sessionAffinity),
        subsetting =
            pulumi.Input.asOptionalInput<SubsettingComputeV1>(subsetting),
        timeoutSec = pulumi.Input.asOptionalInput<int>(timeoutSec),
        usedBy =
            pulumi.Input.asOptionalInput<List<BackendServiceUsedByComputeV1>>(
                usedBy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final affinityCookieTtlSecValue = affinityCookieTtlSec;
    if (affinityCookieTtlSecValue != null) {
      map['affinityCookieTtlSec'] = affinityCookieTtlSecValue;
    }
    final backendsValue = backends;
    if (backendsValue != null) {
      map['backends'] = pulumi.Input.mapOptionalInputValue<
              List<BackendComputeV1>, List<Map<String, dynamic>>>(
          backendsValue,
          (value) =>
              pulumi.Input.encodeList<BackendComputeV1, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final cdnPolicyValue = cdnPolicy;
    if (cdnPolicyValue != null) {
      map['cdnPolicy'] = pulumi.Input.mapOptionalInputValue<
          BackendServiceCdnPolicyComputeV1,
          Map<String, dynamic>>(cdnPolicyValue, (value) => value.toMap());
    }
    final circuitBreakersValue = circuitBreakers;
    if (circuitBreakersValue != null) {
      map['circuitBreakers'] = pulumi.Input.mapOptionalInputValue<
          CircuitBreakersComputeV1,
          Map<String, dynamic>>(circuitBreakersValue, (value) => value.toMap());
    }
    final compressionModeValue = compressionMode;
    if (compressionModeValue != null) {
      map['compressionMode'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceCompressionModeComputeV1,
          String>(compressionModeValue, (value) => value.value);
    }
    final connectionDrainingValue = connectionDraining;
    if (connectionDrainingValue != null) {
      map['connectionDraining'] = pulumi.Input.mapOptionalInputValue<
              ConnectionDrainingComputeV1, Map<String, dynamic>>(
          connectionDrainingValue, (value) => value.toMap());
    }
    final connectionTrackingPolicyValue = connectionTrackingPolicy;
    if (connectionTrackingPolicyValue != null) {
      map['connectionTrackingPolicy'] = pulumi.Input.mapOptionalInputValue<
              BackendServiceConnectionTrackingPolicyComputeV1,
              Map<String, dynamic>>(
          connectionTrackingPolicyValue, (value) => value.toMap());
    }
    final consistentHashValue = consistentHash;
    if (consistentHashValue != null) {
      map['consistentHash'] = pulumi.Input.mapOptionalInputValue<
          ConsistentHashLoadBalancerSettingsComputeV1,
          Map<String, dynamic>>(consistentHashValue, (value) => value.toMap());
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
    final enableCDNValue = enableCDN;
    if (enableCDNValue != null) {
      map['enableCDN'] = enableCDNValue;
    }
    final failoverPolicyValue = failoverPolicy;
    if (failoverPolicyValue != null) {
      map['failoverPolicy'] = pulumi.Input.mapOptionalInputValue<
          BackendServiceFailoverPolicyComputeV1,
          Map<String, dynamic>>(failoverPolicyValue, (value) => value.toMap());
    }
    final healthChecksValue = healthChecks;
    if (healthChecksValue != null) {
      map['healthChecks'] = healthChecksValue;
    }
    final iapValue = iap;
    if (iapValue != null) {
      map['iap'] = pulumi.Input.mapOptionalInputValue<
          BackendServiceIAPComputeV1,
          Map<String, dynamic>>(iapValue, (value) => value.toMap());
    }
    final loadBalancingSchemeValue = loadBalancingScheme;
    if (loadBalancingSchemeValue != null) {
      map['loadBalancingScheme'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceLoadBalancingSchemeComputeV1,
          String>(loadBalancingSchemeValue, (value) => value.value);
    }
    final localityLbPoliciesValue = localityLbPolicies;
    if (localityLbPoliciesValue != null) {
      map['localityLbPolicies'] = pulumi.Input.mapOptionalInputValue<
              List<BackendServiceLocalityLoadBalancingPolicyConfigComputeV1>,
              List<Map<String, dynamic>>>(
          localityLbPoliciesValue,
          (value) => pulumi.Input.encodeList<
              BackendServiceLocalityLoadBalancingPolicyConfigComputeV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final localityLbPolicyValue = localityLbPolicy;
    if (localityLbPolicyValue != null) {
      map['localityLbPolicy'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceLocalityLbPolicyComputeV1,
          String>(localityLbPolicyValue, (value) => value.value);
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = pulumi.Input.mapOptionalInputValue<
          BackendServiceLogConfigComputeV1,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final maxStreamDurationValue = maxStreamDuration;
    if (maxStreamDurationValue != null) {
      map['maxStreamDuration'] = pulumi.Input.mapOptionalInputValue<
              DurationComputeV1, Map<String, dynamic>>(
          maxStreamDurationValue, (value) => value.toMap());
    }
    final metadatasValue = metadatas;
    if (metadatasValue != null) {
      map['metadatas'] = metadatasValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final outlierDetectionValue = outlierDetection;
    if (outlierDetectionValue != null) {
      map['outlierDetection'] = pulumi.Input.mapOptionalInputValue<
              OutlierDetectionComputeV1, Map<String, dynamic>>(
          outlierDetectionValue, (value) => value.toMap());
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
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
      map['protocol'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceProtocolComputeV1,
          String>(protocolValue, (value) => value.value);
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final securitySettingsValue = securitySettings;
    if (securitySettingsValue != null) {
      map['securitySettings'] = pulumi.Input.mapOptionalInputValue<
              SecuritySettingsComputeV1, Map<String, dynamic>>(
          securitySettingsValue, (value) => value.toMap());
    }
    final serviceBindingsValue = serviceBindings;
    if (serviceBindingsValue != null) {
      map['serviceBindings'] = serviceBindingsValue;
    }
    final sessionAffinityValue = sessionAffinity;
    if (sessionAffinityValue != null) {
      map['sessionAffinity'] = pulumi.Input.mapOptionalInputValue<
          RegionBackendServiceSessionAffinityComputeV1,
          String>(sessionAffinityValue, (value) => value.value);
    }
    final subsettingValue = subsetting;
    if (subsettingValue != null) {
      map['subsetting'] = pulumi.Input.mapOptionalInputValue<
          SubsettingComputeV1,
          Map<String, dynamic>>(subsettingValue, (value) => value.toMap());
    }
    final timeoutSecValue = timeoutSec;
    if (timeoutSecValue != null) {
      map['timeoutSec'] = timeoutSecValue;
    }
    final usedByValue = usedBy;
    if (usedByValue != null) {
      map['usedBy'] = pulumi.Input.mapOptionalInputValue<
              List<BackendServiceUsedByComputeV1>, List<Map<String, dynamic>>>(
          usedByValue,
          (value) => pulumi.Input.encodeList<BackendServiceUsedByComputeV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory RegionBackendServiceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceComputeV1Args(
      affinityCookieTtlSec: map['affinityCookieTtlSec'] == null
          ? null
          : map['affinityCookieTtlSec'] as int,
      backends: map['backends'] == null
          ? null
          : pulumi.Input.decodeList<BackendComputeV1>(
              map['backends'],
              (value) => BackendComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      cdnPolicy: map['cdnPolicy'] == null
          ? null
          : BackendServiceCdnPolicyComputeV1.fromMap(
              (map['cdnPolicy'] as Map).cast<String, dynamic>()),
      circuitBreakers: map['circuitBreakers'] == null
          ? null
          : CircuitBreakersComputeV1.fromMap(
              (map['circuitBreakers'] as Map).cast<String, dynamic>()),
      compressionMode: map['compressionMode'] == null
          ? null
          : RegionBackendServiceCompressionModeComputeV1.fromValue(
              map['compressionMode'] as String),
      connectionDraining: map['connectionDraining'] == null
          ? null
          : ConnectionDrainingComputeV1.fromMap(
              (map['connectionDraining'] as Map).cast<String, dynamic>()),
      connectionTrackingPolicy: map['connectionTrackingPolicy'] == null
          ? null
          : BackendServiceConnectionTrackingPolicyComputeV1.fromMap(
              (map['connectionTrackingPolicy'] as Map).cast<String, dynamic>()),
      consistentHash: map['consistentHash'] == null
          ? null
          : ConsistentHashLoadBalancerSettingsComputeV1.fromMap(
              (map['consistentHash'] as Map).cast<String, dynamic>()),
      customRequestHeaders: map['customRequestHeaders'] == null
          ? null
          : (map['customRequestHeaders'] as List).cast<String>(),
      customResponseHeaders: map['customResponseHeaders'] == null
          ? null
          : (map['customResponseHeaders'] as List).cast<String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      enableCDN: map['enableCDN'] == null ? null : map['enableCDN'] as bool,
      failoverPolicy: map['failoverPolicy'] == null
          ? null
          : BackendServiceFailoverPolicyComputeV1.fromMap(
              (map['failoverPolicy'] as Map).cast<String, dynamic>()),
      healthChecks: map['healthChecks'] == null
          ? null
          : (map['healthChecks'] as List).cast<String>(),
      iap: map['iap'] == null
          ? null
          : BackendServiceIAPComputeV1.fromMap(
              (map['iap'] as Map).cast<String, dynamic>()),
      loadBalancingScheme: map['loadBalancingScheme'] == null
          ? null
          : RegionBackendServiceLoadBalancingSchemeComputeV1.fromValue(
              map['loadBalancingScheme'] as String),
      localityLbPolicies: map['localityLbPolicies'] == null
          ? null
          : pulumi.Input.decodeList<
                  BackendServiceLocalityLoadBalancingPolicyConfigComputeV1>(
              map['localityLbPolicies'],
              (value) =>
                  BackendServiceLocalityLoadBalancingPolicyConfigComputeV1
                      .fromMap((value as Map).cast<String, dynamic>())),
      localityLbPolicy: map['localityLbPolicy'] == null
          ? null
          : RegionBackendServiceLocalityLbPolicyComputeV1.fromValue(
              map['localityLbPolicy'] as String),
      logConfig: map['logConfig'] == null
          ? null
          : BackendServiceLogConfigComputeV1.fromMap(
              (map['logConfig'] as Map).cast<String, dynamic>()),
      maxStreamDuration: map['maxStreamDuration'] == null
          ? null
          : DurationComputeV1.fromMap(
              (map['maxStreamDuration'] as Map).cast<String, dynamic>()),
      metadatas: map['metadatas'] == null
          ? null
          : (map['metadatas'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      outlierDetection: map['outlierDetection'] == null
          ? null
          : OutlierDetectionComputeV1.fromMap(
              (map['outlierDetection'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
      portName: map['portName'] == null ? null : map['portName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      protocol: map['protocol'] == null
          ? null
          : RegionBackendServiceProtocolComputeV1.fromValue(
              map['protocol'] as String),
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      securitySettings: map['securitySettings'] == null
          ? null
          : SecuritySettingsComputeV1.fromMap(
              (map['securitySettings'] as Map).cast<String, dynamic>()),
      serviceBindings: map['serviceBindings'] == null
          ? null
          : (map['serviceBindings'] as List).cast<String>(),
      sessionAffinity: map['sessionAffinity'] == null
          ? null
          : RegionBackendServiceSessionAffinityComputeV1.fromValue(
              map['sessionAffinity'] as String),
      subsetting: map['subsetting'] == null
          ? null
          : SubsettingComputeV1.fromMap(
              (map['subsetting'] as Map).cast<String, dynamic>()),
      timeoutSec: map['timeoutSec'] == null ? null : map['timeoutSec'] as int,
      usedBy: map['usedBy'] == null
          ? null
          : pulumi.Input.decodeList<BackendServiceUsedByComputeV1>(
              map['usedBy'],
              (value) => BackendServiceUsedByComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
