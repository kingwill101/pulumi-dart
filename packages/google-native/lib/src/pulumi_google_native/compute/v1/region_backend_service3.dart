import 'package:pulumi/pulumi.dart';
import 'backend_response3.dart';
import 'backend_service_cdn_policy_response3.dart';
import 'backend_service_connection_tracking_policy_response3.dart';
import 'backend_service_failover_policy_response3.dart';
import 'backend_service_iapresponse3.dart';
import 'backend_service_locality_load_balancing_policy_config_response3.dart';
import 'backend_service_log_config_response3.dart';
import 'backend_service_used_by_response3.dart';
import 'circuit_breakers_response3.dart';
import 'connection_draining_response3.dart';
import 'consistent_hash_load_balancer_settings_response3.dart';
import 'duration_response3.dart';
import 'outlier_detection_response3.dart';
import 'region_backend_service_args3.dart';
import 'security_settings_response3.dart';
import 'subsetting_response3.dart';

/// Creates a regional BackendService resource in the specified project using the data included in the request. For more information, see Backend services overview.
class RegionBackendService3 extends CustomResource {
  /// Lifetime of cookies in seconds. This setting is applicable to external and internal HTTP(S) load balancers and Traffic Director and requires GENERATED_COOKIE or HTTP_COOKIE session affinity. If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value is two weeks (1,209,600). Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  late final Output<int> affinityCookieTtlSec;

  /// The list of backends that serve this BackendService.
  late final Output<List<BackendResponse3>> backends;

  /// Cloud CDN configuration for this BackendService. Only available for specified load balancer types.
  late final Output<BackendServiceCdnPolicyResponse3> cdnPolicy;
  late final Output<CircuitBreakersResponse3> circuitBreakers;

  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  late final Output<String> compressionMode;
  late final Output<ConnectionDrainingResponse3> connectionDraining;

  /// Connection Tracking configuration for this BackendService. Connection tracking policy settings are only available for Network Load Balancing and Internal TCP/UDP Load Balancing.
  late final Output<BackendServiceConnectionTrackingPolicyResponse3>
      connectionTrackingPolicy;

  /// Consistent Hash-based load balancing can be used to provide soft session affinity based on HTTP headers, cookies or other properties. This load balancing policy is applicable only for HTTP connections. The affinity to a particular destination host will be lost when one or more hosts are added/removed from the destination service. This field specifies parameters that control consistent hashing. This field is only applicable when localityLbPolicy is set to MAGLEV or RING_HASH. This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  late final Output<ConsistentHashLoadBalancerSettingsResponse3> consistentHash;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// Headers that the load balancer adds to proxied requests. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  late final Output<List<String>> customRequestHeaders;

  /// Headers that the load balancer adds to proxied responses. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  late final Output<List<String>> customResponseHeaders;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// The resource URL for the edge security policy associated with this backend service.
  late final Output<String> edgeSecurityPolicy;

  /// If true, enables Cloud CDN for the backend service of an external HTTP(S) load balancer.
  late final Output<bool> enableCDN;

  /// Requires at least one backend instance group to be defined as a backup (failover) backend. For load balancers that have configurable failover: [Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview).
  late final Output<BackendServiceFailoverPolicyResponse3> failoverPolicy;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a BackendService. An up-to-date fingerprint must be provided in order to update the BackendService, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a BackendService.
  late final Output<String> fingerprint;

  /// The list of URLs to the healthChecks, httpHealthChecks (legacy), or httpsHealthChecks (legacy) resource for health checking this backend service. Not all backend services support legacy health checks. See Load balancer guide. Currently, at most one health check can be specified for each backend service. Backend services with instance group or zonal NEG backends must have a health check. Backend services with internet or serverless NEG backends must not have a health check.
  late final Output<List<String>> healthChecks;

  /// The configurations for Identity-Aware Proxy on this resource. Not available for Internal TCP/UDP Load Balancing and Network Load Balancing.
  late final Output<BackendServiceIAPResponse3> iap;

  /// Type of resource. Always compute#backendService for backend services.
  late final Output<String> kind;

  /// Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
  late final Output<String> loadBalancingScheme;

  /// A list of locality load-balancing policies to be used in order of preference. When you use localityLbPolicies, you must set at least one value for either the localityLbPolicies[].policy or the localityLbPolicies[].customPolicy field. localityLbPolicies overrides any value set in the localityLbPolicy field. For an example of how to use this field, see Define a list of preferred policies. Caution: This field and its children are intended for use in a service mesh that includes gRPC clients only. Envoy proxies can't use backend services that have this configuration.
  late final Output<
          List<BackendServiceLocalityLoadBalancingPolicyConfigResponse3>>
      localityLbPolicies;

  /// The load balancing algorithm used within the scope of the locality. The possible values are: - ROUND_ROBIN: This is a simple policy in which each healthy backend is selected in round robin order. This is the default. - LEAST_REQUEST: An O(1) algorithm which selects two random healthy hosts and picks the host which has fewer active requests. - RING_HASH: The ring/modulo hash load balancer implements consistent hashing to backends. The algorithm has the property that the addition/removal of a host from a set of N hosts only affects 1/N of the requests. - RANDOM: The load balancer selects a random healthy host. - ORIGINAL_DESTINATION: Backend host is selected based on the client connection metadata, i.e., connections are opened to the same address as the destination address of the incoming connection before the connection was redirected to the load balancer. - MAGLEV: used as a drop in replacement for the ring hash load balancer. Maglev is not as stable as ring hash but has faster table lookup build times and host selection times. For more information about Maglev, see https://ai.google/research/pubs/pub44824 This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED, INTERNAL_MANAGED, or EXTERNAL_MANAGED. If sessionAffinity is not NONE, and this field is not set to MAGLEV or RING_HASH, session affinity settings will not take effect. Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  late final Output<String> localityLbPolicy;

  /// This field denotes the logging options for the load balancer traffic served by this backend service. If logging is enabled, logs will be exported to Stackdriver.
  late final Output<BackendServiceLogConfigResponse3> logConfig;

  /// Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the beginning of the stream until the response has been completely processed, including all retries. A stream that does not complete in this duration is closed. If not specified, there will be no timeout limit, i.e. the maximum duration is infinite. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. This field is only allowed when the loadBalancingScheme of the backend service is INTERNAL_SELF_MANAGED.
  late final Output<DurationResponse3> maxStreamDuration;

  /// Deployment metadata associated with the resource to be set by a GKE hub controller and read by the backend RCTH
  late final Output<Map<String, String>> metadatas;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The URL of the network to which this backend service belongs. This field can only be specified when the load balancing scheme is set to INTERNAL.
  late final Output<String> network;

  /// Settings controlling the ejection of unhealthy backend endpoints from the load balancing pool of each individual proxy instance that processes the traffic for the given backend service. If not set, this feature is considered disabled. Results of the outlier detection algorithm (ejection of endpoints from the load balancing pool and returning them back to the pool) are executed independently by each proxy instance of the load balancer. In most cases, more than one proxy instance handles the traffic received by a backend service. Thus, it is possible that an unhealthy endpoint is detected and ejected by only some of the proxies, and while this happens, other proxies may continue to send requests to the same unhealthy endpoint until they detect and eject the unhealthy endpoint. Applicable backend endpoints can be: - VM instances in an Instance Group - Endpoints in a Zonal NEG (GCE_VM_IP, GCE_VM_IP_PORT) - Endpoints in a Hybrid Connectivity NEG (NON_GCP_PRIVATE_IP_PORT) - Serverless NEGs, that resolve to Cloud Run, App Engine, or Cloud Functions Services - Private Service Connect NEGs, that resolve to Google-managed regional API endpoints or managed services published using Private Service Connect Applicable backend service types can be: - A global backend service with the loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED. - A regional backend service with the serviceProtocol set to HTTP, HTTPS, or HTTP2, and loadBalancingScheme set to INTERNAL_MANAGED or EXTERNAL_MANAGED. Not supported for Serverless NEGs. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  late final Output<OutlierDetectionResponse3> outlierDetection;

  /// Deprecated in favor of portName. The TCP port to connect on the backend. The default value is 80. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port.
  late final Output<int> port;

  /// A named port on a backend instance group representing the port for communication to the backend VMs in that group. The named port must be [defined on each backend instance group](https://cloud.google.com/load-balancing/docs/backend-service#named_ports). This parameter has no meaning if the backends are NEGs. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port_name.
  late final Output<String> portName;
  late final Output<String> project;

  /// The protocol this BackendService uses to communicate with backends. Possible values are HTTP, HTTPS, HTTP2, TCP, SSL, UDP or GRPC. depending on the chosen load balancer or Traffic Director configuration. Refer to the documentation for the load balancers or for Traffic Director for more information. Must be set to GRPC when the backend service is referenced by a URL map that is bound to target gRPC proxy.
  late final Output<String> protocol;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The resource URL for the security policy associated with this backend service.
  late final Output<String> securityPolicy;

  /// This field specifies the security settings that apply to this backend service. This field is applicable to a global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  late final Output<SecuritySettingsResponse3> securitySettings;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// URLs of networkservices.ServiceBinding resources. Can only be set if load balancing scheme is INTERNAL_SELF_MANAGED. If set, lists of backends and health checks must be both empty.
  late final Output<List<String>> serviceBindings;

  /// Type of session affinity to use. The default is NONE. Only NONE and HEADER_FIELD are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. For more details, see: [Session Affinity](https://cloud.google.com/load-balancing/docs/backend-service#session_affinity).
  late final Output<String> sessionAffinity;
  late final Output<SubsettingResponse3> subsetting;

  /// The backend service timeout has a different meaning depending on the type of load balancer. For more information see, Backend service settings. The default is 30 seconds. The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. Instead, use maxStreamDuration.
  late final Output<int> timeoutSec;
  late final Output<List<BackendServiceUsedByResponse3>> usedBy;

  RegionBackendService3(
    String name, {
    RegionBackendServiceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:RegionBackendService',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.affinityCookieTtlSec = registerOutput<int>('affinityCookieTtlSec');
    this.backends = registerOutput<List<BackendResponse3>>('backends');
    this.cdnPolicy =
        registerOutput<BackendServiceCdnPolicyResponse3>('cdnPolicy');
    this.circuitBreakers =
        registerOutput<CircuitBreakersResponse3>('circuitBreakers');
    this.compressionMode = registerOutput<String>('compressionMode');
    this.connectionDraining =
        registerOutput<ConnectionDrainingResponse3>('connectionDraining');
    this.connectionTrackingPolicy =
        registerOutput<BackendServiceConnectionTrackingPolicyResponse3>(
            'connectionTrackingPolicy');
    this.consistentHash =
        registerOutput<ConsistentHashLoadBalancerSettingsResponse3>(
            'consistentHash');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customRequestHeaders =
        registerOutput<List<String>>('customRequestHeaders');
    this.customResponseHeaders =
        registerOutput<List<String>>('customResponseHeaders');
    this.description = registerOutput<String>('description');
    this.edgeSecurityPolicy = registerOutput<String>('edgeSecurityPolicy');
    this.enableCDN = registerOutput<bool>('enableCDN');
    this.failoverPolicy =
        registerOutput<BackendServiceFailoverPolicyResponse3>('failoverPolicy');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.healthChecks = registerOutput<List<String>>('healthChecks');
    this.iap = registerOutput<BackendServiceIAPResponse3>('iap');
    this.kind = registerOutput<String>('kind');
    this.loadBalancingScheme = registerOutput<String>('loadBalancingScheme');
    this.localityLbPolicies = registerOutput<
            List<BackendServiceLocalityLoadBalancingPolicyConfigResponse3>>(
        'localityLbPolicies');
    this.localityLbPolicy = registerOutput<String>('localityLbPolicy');
    this.logConfig =
        registerOutput<BackendServiceLogConfigResponse3>('logConfig');
    this.maxStreamDuration =
        registerOutput<DurationResponse3>('maxStreamDuration');
    this.metadatas = registerOutput<Map<String, String>>('metadatas');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.outlierDetection =
        registerOutput<OutlierDetectionResponse3>('outlierDetection');
    this.port = registerOutput<int>('port');
    this.portName = registerOutput<String>('portName');
    this.project = registerOutput<String>('project');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.securityPolicy = registerOutput<String>('securityPolicy');
    this.securitySettings =
        registerOutput<SecuritySettingsResponse3>('securitySettings');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceBindings = registerOutput<List<String>>('serviceBindings');
    this.sessionAffinity = registerOutput<String>('sessionAffinity');
    this.subsetting = registerOutput<SubsettingResponse3>('subsetting');
    this.timeoutSec = registerOutput<int>('timeoutSec');
    this.usedBy = registerOutput<List<BackendServiceUsedByResponse3>>('usedBy');
  }
}
