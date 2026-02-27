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
import 'backend_service_args.dart';

/// A Backend Service defines a group of virtual machines that will serve
/// traffic for load balancing. This resource is a global backend service,
/// appropriate for external load balancing or self-managed internal load balancing.
/// For managed internal load balancing, use a regional backend service instead.
///
/// Currently self-managed internal load balancing is only available in beta.
///
/// > **Note:** Recreating a `gcp.compute.BackendService` that references other dependent resources like `gcp.compute.URLMap` will give a `resourceInUseByAnotherResource` error, when modifying the number of other dependent resources.
/// Use `lifecycle.create_before_destroy` on the dependent resources to avoid this type of error as shown in the Dynamic Backends example.
///
///
/// To get more information about BackendService, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/backendServices)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/load-balancing/http/backend-service)
///
/// > **Warning:** All arguments including the following potentially sensitive
/// values will be stored in the raw state as plain text: `iap.oauth2_client_secret`, `iap.oauth2_client_secret_sha256`, `security_settings.aws_v4_authentication.access_key`.
///
/// ## Example Usage
///
/// ### Backend Service Basic
///
///
///
/// ### Backend Service External Iap
///
///
///
/// ### Backend Service Cache Simple
///
///
///
/// ### Backend Service Cache Include Http Headers
///
///
///
/// ### Backend Service Cache Include Named Cookies
///
///
///
/// ### Backend Service Cache
///
///
///
/// ### Backend Service Cache Bypass Cache On Request Headers
///
///
///
/// ### Backend Service Traffic Director Round Robin
///
///
///
/// ### Backend Service Traffic Director Ring Hash
///
///
///
/// ### Backend Service Stateful Session Affinity
///
///
///
/// ### Backend Service Network Endpoint
///
///
///
/// ### Backend Service In Flight
///
///
///
/// ### Backend Service External Managed
///
///
///
/// ### Backend Service Ip Address Selection Policy
///
///
///
/// ### Backend Service Custom Metrics
///
///
///
/// ### Backend Service Tls Settings
///
///
///
/// ### Backend Service Dynamic Forwarding
///
///
///
///
/// ## Import
///
/// BackendService can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/backendServices/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, BackendService can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/backendService:BackendService default projects/{{project}}/global/backendServices/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/backendService:BackendService default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/backendService:BackendService default {{name}}
/// ```
class BackendService extends CustomResource {
  /// Lifetime of cookies in seconds if session_affinity is
  /// GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts
  /// only until the end of the browser session (or equivalent). The
  /// maximum allowed value for TTL is one day.
  /// When the load balancing scheme is INTERNAL, this field is not used.
  late final Output<int?> affinityCookieTtlSec;

  /// The set of backends that serve this BackendService.
  /// Structure is documented below.
  late final Output<List<BackendServiceBackend>?> backends;

  /// Cloud CDN configuration for this BackendService.
  /// Structure is documented below.
  late final Output<BackendServiceCdnPolicy> cdnPolicy;

  /// Settings controlling the volume of connections to a backend service. This field
  /// is applicable only when the load_balancing_scheme is set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  late final Output<BackendServiceCircuitBreakers?> circuitBreakers;

  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// Possible values are: `AUTOMATIC`, `DISABLED`.
  late final Output<String?> compressionMode;

  /// Time for which instance will be drained (not accept new
  /// connections, but still work to finish started).
  late final Output<int?> connectionDrainingTimeoutSec;

  /// Consistent Hash-based load balancing can be used to provide soft session
  /// affinity based on HTTP headers, cookies or other properties. This load balancing
  /// policy is applicable only for HTTP connections. The affinity to a particular
  /// destination host will be lost when one or more hosts are added/removed from the
  /// destination service. This field specifies parameters that control consistent
  /// hashing. This field only applies if the load_balancing_scheme is set to
  /// INTERNAL_SELF_MANAGED. This field is only applicable when locality_lb_policy is
  /// set to MAGLEV or RING_HASH.
  /// Structure is documented below.
  late final Output<BackendServiceConsistentHash?> consistentHash;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// List of custom metrics that are used for the WEIGHTED_ROUND_ROBIN locality_lb_policy.
  /// Structure is documented below.
  late final Output<List<BackendServiceCustomMetric>?> customMetrics;

  /// Headers that the HTTP/S load balancer should add to proxied
  /// requests.
  late final Output<List<String>?> customRequestHeaders;

  /// Headers that the HTTP/S load balancer should add to proxied
  /// responses.
  late final Output<List<String>?> customResponseHeaders;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Dynamic forwarding configuration. This field is used to configure the backend service with dynamic forwarding
  /// feature which together with Service Extension allows customized and complex routing logic.
  /// Structure is documented below.
  late final Output<BackendServiceDynamicForwarding?> dynamicForwarding;

  /// The resource URL for the edge security policy associated with this backend service.
  late final Output<String?> edgeSecurityPolicy;

  /// If true, enable Cloud CDN for this BackendService.
  late final Output<bool?> enableCdn;

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
  late final Output<String?> externalManagedMigrationState;

  /// Determines the fraction of requests that should be processed by the Global external
  /// Application Load Balancer.
  /// The value of this field must be in the range [0, 100].
  /// Session affinity options will slightly affect this routing behavior, for more details,
  /// see: Session Affinity.
  /// This value can only be set if the loadBalancingScheme in the backend service is set to
  /// EXTERNAL (when using the Classic ALB) and the migration state is TEST_BY_PERCENTAGE.
  late final Output<double?> externalManagedMigrationTestingPercentage;

  /// Fingerprint of this resource. A hash of the contents stored in this
  /// object. This field is used in optimistic locking.
  late final Output<String> fingerprint;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final Output<int> generatedId;

  /// The set of URLs to the HttpHealthCheck or HttpsHealthCheck resource
  /// for health checking this BackendService. Currently at most one health
  /// check can be specified.
  /// A health check must be specified unless the backend service uses an internet
  /// or serverless NEG as a backend.
  /// For internal load balancing, a URL to a HealthCheck resource must be specified instead.
  late final Output<String?> healthChecks;

  /// Settings for enabling Cloud Identity Aware Proxy.
  /// If OAuth client is not set, the Google-managed OAuth client is used.
  /// Structure is documented below.
  late final Output<BackendServiceIap> iap;

  /// Specifies preference of traffic to the backend (from the proxy and from the client for proxyless gRPC).
  /// Possible values are: `IPV4_ONLY`, `PREFER_IPV6`, `IPV6_ONLY`.
  late final Output<String?> ipAddressSelectionPolicy;

  /// Indicates whether the backend service will be used with internal or
  /// external load balancing. A backend service created for one type of
  /// load balancing cannot be used with the other. For more information, refer to
  /// [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `INTERNAL_SELF_MANAGED`, `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  late final Output<String?> loadBalancingScheme;

  /// A list of locality load balancing policies to be used in order of
  /// preference. Either the policy or the customPolicy field should be set.
  /// Overrides any value set in the localityLbPolicy field.
  /// localityLbPolicies is only supported when the BackendService is referenced
  /// by a URL Map that is referenced by a target gRPC proxy that has the
  /// validateForProxyless field set to true.
  /// Structure is documented below.
  late final Output<List<BackendServiceLocalityLbPolicy>?> localityLbPolicies;

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
  late final Output<String?> localityLbPolicy;

  /// This field denotes the logging options for the load balancer traffic served by this backend service.
  /// If logging is enabled, logs will be exported to Stackdriver.
  /// Structure is documented below.
  late final Output<BackendServiceLogConfig> logConfig;

  /// Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the
  /// beginning of the stream until the response has been completely processed, including all retries. A stream that
  /// does not complete in this duration is closed.
  /// If not specified, there will be no timeout limit, i.e. the maximum duration is infinite.
  /// This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service.
  /// This field is only allowed when the loadBalancingScheme of the backend service is INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  late final Output<BackendServiceMaxStreamDuration?> maxStreamDuration;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// Configures traffic steering properties of internal passthrough Network Load Balancers.
  /// Structure is documented below.
  late final Output<BackendServiceNetworkPassThroughLbTrafficPolicy?>
      networkPassThroughLbTrafficPolicy;

  /// Settings controlling eviction of unhealthy hosts from the load balancing pool.
  /// Applicable backend service types can be a global backend service with the
  /// loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED.
  /// Structure is documented below.
  late final Output<BackendServiceOutlierDetection?> outlierDetection;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final Output<BackendServiceParams?> params;

  /// Name of backend port. The same name should appear in the instance
  /// groups referenced by this service. Required when the load balancing
  /// scheme is EXTERNAL.
  late final Output<String> portName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The protocol this BackendService uses to communicate with backends.
  /// The default is HTTP. Possible values are HTTP, HTTPS, HTTP2, H2C, TCP, SSL, UDP
  /// or GRPC. Refer to the documentation for the load balancers or for Traffic Director
  /// for more information. Must be set to GRPC when the backend service is referenced
  /// by a URL map that is bound to target gRPC proxy.
  /// Possible values are: `HTTP`, `HTTPS`, `HTTP2`, `TCP`, `SSL`, `UDP`, `GRPC`, `UNSPECIFIED`, `H2C`.
  late final Output<String> protocol;

  /// The security policy associated with this backend service.
  late final Output<String?> securityPolicy;

  /// The security settings that apply to this backend service. This field is applicable to either
  /// a regional backend service with the service_protocol set to HTTP, HTTPS, HTTP2 or H2C, and
  /// load_balancing_scheme set to INTERNAL_MANAGED; or a global backend service with the
  /// load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  late final Output<BackendServiceSecuritySettings?> securitySettings;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// URL to networkservices.ServiceLbPolicy resource.
  /// Can only be set if load balancing scheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED or INTERNAL_SELF_MANAGED and the scope is global.
  late final Output<String?> serviceLbPolicy;

  /// Type of session affinity to use. The default is NONE. Session affinity is
  /// not applicable if the protocol is UDP.
  /// Possible values are: `NONE`, `CLIENT_IP`, `CLIENT_IP_PORT_PROTO`, `CLIENT_IP_PROTO`, `GENERATED_COOKIE`, `HEADER_FIELD`, `HTTP_COOKIE`, `STRONG_COOKIE_AFFINITY`.
  late final Output<String> sessionAffinity;

  /// Describes the HTTP cookie used for stateful session affinity. This field is applicable and required if the sessionAffinity is set to STRONG_COOKIE_AFFINITY.
  /// Structure is documented below.
  late final Output<BackendServiceStrongSessionAffinityCookie?>
      strongSessionAffinityCookie;

  /// The backend service timeout has a different meaning depending on the type of load balancer.
  /// For more information see, [Backend service settings](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices).
  /// The default is 30 seconds.
  /// The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds.
  late final Output<int> timeoutSec;

  /// Configuration for Backend Authenticated TLS and mTLS. May only be specified when the backend protocol is SSL, HTTPS or HTTP2.
  /// Structure is documented below.
  late final Output<BackendServiceTlsSettings?> tlsSettings;

  BackendService(
    String name, {
    BackendServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendService:BackendService',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.affinityCookieTtlSec = registerOutput<int?>('affinityCookieTtlSec');
    this.backends = registerOutput<List<BackendServiceBackend>?>('backends');
    this.cdnPolicy = registerOutput<BackendServiceCdnPolicy>('cdnPolicy');
    this.circuitBreakers =
        registerOutput<BackendServiceCircuitBreakers?>('circuitBreakers');
    this.compressionMode = registerOutput<String?>('compressionMode');
    this.connectionDrainingTimeoutSec =
        registerOutput<int?>('connectionDrainingTimeoutSec');
    this.consistentHash =
        registerOutput<BackendServiceConsistentHash?>('consistentHash');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customMetrics =
        registerOutput<List<BackendServiceCustomMetric>?>('customMetrics');
    this.customRequestHeaders =
        registerOutput<List<String>?>('customRequestHeaders');
    this.customResponseHeaders =
        registerOutput<List<String>?>('customResponseHeaders');
    this.description = registerOutput<String?>('description');
    this.dynamicForwarding =
        registerOutput<BackendServiceDynamicForwarding?>('dynamicForwarding');
    this.edgeSecurityPolicy = registerOutput<String?>('edgeSecurityPolicy');
    this.enableCdn = registerOutput<bool?>('enableCdn');
    this.externalManagedMigrationState =
        registerOutput<String?>('externalManagedMigrationState');
    this.externalManagedMigrationTestingPercentage =
        registerOutput<double?>('externalManagedMigrationTestingPercentage');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.generatedId = registerOutput<int>('generatedId');
    this.healthChecks = registerOutput<String?>('healthChecks');
    this.iap = registerOutput<BackendServiceIap>('iap');
    this.ipAddressSelectionPolicy =
        registerOutput<String?>('ipAddressSelectionPolicy');
    this.loadBalancingScheme = registerOutput<String?>('loadBalancingScheme');
    this.localityLbPolicies =
        registerOutput<List<BackendServiceLocalityLbPolicy>?>(
            'localityLbPolicies');
    this.localityLbPolicy = registerOutput<String?>('localityLbPolicy');
    this.logConfig = registerOutput<BackendServiceLogConfig>('logConfig');
    this.maxStreamDuration =
        registerOutput<BackendServiceMaxStreamDuration?>('maxStreamDuration');
    this.name = registerOutput<String>('name');
    this.networkPassThroughLbTrafficPolicy =
        registerOutput<BackendServiceNetworkPassThroughLbTrafficPolicy?>(
            'networkPassThroughLbTrafficPolicy');
    this.outlierDetection =
        registerOutput<BackendServiceOutlierDetection?>('outlierDetection');
    this.params = registerOutput<BackendServiceParams?>('params');
    this.portName = registerOutput<String>('portName');
    this.project = registerOutput<String>('project');
    this.protocol = registerOutput<String>('protocol');
    this.securityPolicy = registerOutput<String?>('securityPolicy');
    this.securitySettings =
        registerOutput<BackendServiceSecuritySettings?>('securitySettings');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceLbPolicy = registerOutput<String?>('serviceLbPolicy');
    this.sessionAffinity = registerOutput<String>('sessionAffinity');
    this.strongSessionAffinityCookie =
        registerOutput<BackendServiceStrongSessionAffinityCookie?>(
            'strongSessionAffinityCookie');
    this.timeoutSec = registerOutput<int>('timeoutSec');
    this.tlsSettings =
        registerOutput<BackendServiceTlsSettings?>('tlsSettings');
  }
}
