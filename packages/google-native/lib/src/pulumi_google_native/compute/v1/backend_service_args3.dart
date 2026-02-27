// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'backend3.dart';
import 'backend_service_cdn_policy3.dart';
import 'backend_service_compression_mode3.dart';
import 'backend_service_connection_tracking_policy3.dart';
import 'backend_service_failover_policy3.dart';
import 'backend_service_iap3.dart';
import 'backend_service_load_balancing_scheme3.dart';
import 'backend_service_locality_lb_policy3.dart';
import 'backend_service_locality_load_balancing_policy_config3.dart';
import 'backend_service_log_config3.dart';
import 'backend_service_protocol3.dart';
import 'backend_service_session_affinity3.dart';
import 'backend_service_used_by3.dart';
import 'circuit_breakers3.dart';
import 'connection_draining3.dart';
import 'consistent_hash_load_balancer_settings3.dart';
import 'duration3.dart';
import 'outlier_detection3.dart';
import 'security_settings3.dart';
import 'subsetting3.dart';

/// The set of arguments for BackendService.
class BackendServiceArgs3 {
  /// Lifetime of cookies in seconds. This setting is applicable to external and internal HTTP(S) load balancers and Traffic Director and requires GENERATED_COOKIE or HTTP_COOKIE session affinity. If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value is two weeks (1,209,600). Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final Input<int>? affinityCookieTtlSec;

  /// The list of backends that serve this BackendService.
  final Input<List<Backend3>>? backends;

  /// Cloud CDN configuration for this BackendService. Only available for specified load balancer types.
  final Input<BackendServiceCdnPolicy3>? cdnPolicy;
  final Input<CircuitBreakers3>? circuitBreakers;

  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  final Input<BackendServiceCompressionMode3>? compressionMode;
  final Input<ConnectionDraining3>? connectionDraining;

  /// Connection Tracking configuration for this BackendService. Connection tracking policy settings are only available for Network Load Balancing and Internal TCP/UDP Load Balancing.
  final Input<BackendServiceConnectionTrackingPolicy3>?
      connectionTrackingPolicy;

  /// Consistent Hash-based load balancing can be used to provide soft session affinity based on HTTP headers, cookies or other properties. This load balancing policy is applicable only for HTTP connections. The affinity to a particular destination host will be lost when one or more hosts are added/removed from the destination service. This field specifies parameters that control consistent hashing. This field is only applicable when localityLbPolicy is set to MAGLEV or RING_HASH. This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  final Input<ConsistentHashLoadBalancerSettings3>? consistentHash;

  /// Headers that the load balancer adds to proxied requests. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  final Input<List<String>>? customRequestHeaders;

  /// Headers that the load balancer adds to proxied responses. See [Creating custom headers](https://cloud.google.com/load-balancing/docs/custom-headers).
  final Input<List<String>>? customResponseHeaders;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// If true, enables Cloud CDN for the backend service of an external HTTP(S) load balancer.
  final Input<bool>? enableCDN;

  /// Requires at least one backend instance group to be defined as a backup (failover) backend. For load balancers that have configurable failover: [Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview).
  final Input<BackendServiceFailoverPolicy3>? failoverPolicy;

  /// The list of URLs to the healthChecks, httpHealthChecks (legacy), or httpsHealthChecks (legacy) resource for health checking this backend service. Not all backend services support legacy health checks. See Load balancer guide. Currently, at most one health check can be specified for each backend service. Backend services with instance group or zonal NEG backends must have a health check. Backend services with internet or serverless NEG backends must not have a health check.
  final Input<List<String>>? healthChecks;

  /// The configurations for Identity-Aware Proxy on this resource. Not available for Internal TCP/UDP Load Balancing and Network Load Balancing.
  final Input<BackendServiceIAP3>? iap;

  /// Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
  final Input<BackendServiceLoadBalancingScheme3>? loadBalancingScheme;

  /// A list of locality load-balancing policies to be used in order of preference. When you use localityLbPolicies, you must set at least one value for either the localityLbPolicies[].policy or the localityLbPolicies[].customPolicy field. localityLbPolicies overrides any value set in the localityLbPolicy field. For an example of how to use this field, see Define a list of preferred policies. Caution: This field and its children are intended for use in a service mesh that includes gRPC clients only. Envoy proxies can't use backend services that have this configuration.
  final Input<List<BackendServiceLocalityLoadBalancingPolicyConfig3>>?
      localityLbPolicies;

  /// The load balancing algorithm used within the scope of the locality. The possible values are: - ROUND_ROBIN: This is a simple policy in which each healthy backend is selected in round robin order. This is the default. - LEAST_REQUEST: An O(1) algorithm which selects two random healthy hosts and picks the host which has fewer active requests. - RING_HASH: The ring/modulo hash load balancer implements consistent hashing to backends. The algorithm has the property that the addition/removal of a host from a set of N hosts only affects 1/N of the requests. - RANDOM: The load balancer selects a random healthy host. - ORIGINAL_DESTINATION: Backend host is selected based on the client connection metadata, i.e., connections are opened to the same address as the destination address of the incoming connection before the connection was redirected to the load balancer. - MAGLEV: used as a drop in replacement for the ring hash load balancer. Maglev is not as stable as ring hash but has faster table lookup build times and host selection times. For more information about Maglev, see https://ai.google/research/pubs/pub44824 This field is applicable to either: - A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and load_balancing_scheme set to INTERNAL_MANAGED. - A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED, INTERNAL_MANAGED, or EXTERNAL_MANAGED. If sessionAffinity is not NONE, and this field is not set to MAGLEV or RING_HASH, session affinity settings will not take effect. Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final Input<BackendServiceLocalityLbPolicy3>? localityLbPolicy;

  /// This field denotes the logging options for the load balancer traffic served by this backend service. If logging is enabled, logs will be exported to Stackdriver.
  final Input<BackendServiceLogConfig3>? logConfig;

  /// Specifies the default maximum duration (timeout) for streams to this service. Duration is computed from the beginning of the stream until the response has been completely processed, including all retries. A stream that does not complete in this duration is closed. If not specified, there will be no timeout limit, i.e. the maximum duration is infinite. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. This field is only allowed when the loadBalancingScheme of the backend service is INTERNAL_SELF_MANAGED.
  final Input<Duration3>? maxStreamDuration;

  /// Deployment metadata associated with the resource to be set by a GKE hub controller and read by the backend RCTH
  final Input<Map<String, String>>? metadatas;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The URL of the network to which this backend service belongs. This field can only be specified when the load balancing scheme is set to INTERNAL.
  final Input<String>? network;

  /// Settings controlling the ejection of unhealthy backend endpoints from the load balancing pool of each individual proxy instance that processes the traffic for the given backend service. If not set, this feature is considered disabled. Results of the outlier detection algorithm (ejection of endpoints from the load balancing pool and returning them back to the pool) are executed independently by each proxy instance of the load balancer. In most cases, more than one proxy instance handles the traffic received by a backend service. Thus, it is possible that an unhealthy endpoint is detected and ejected by only some of the proxies, and while this happens, other proxies may continue to send requests to the same unhealthy endpoint until they detect and eject the unhealthy endpoint. Applicable backend endpoints can be: - VM instances in an Instance Group - Endpoints in a Zonal NEG (GCE_VM_IP, GCE_VM_IP_PORT) - Endpoints in a Hybrid Connectivity NEG (NON_GCP_PRIVATE_IP_PORT) - Serverless NEGs, that resolve to Cloud Run, App Engine, or Cloud Functions Services - Private Service Connect NEGs, that resolve to Google-managed regional API endpoints or managed services published using Private Service Connect Applicable backend service types can be: - A global backend service with the loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED. - A regional backend service with the serviceProtocol set to HTTP, HTTPS, or HTTP2, and loadBalancingScheme set to INTERNAL_MANAGED or EXTERNAL_MANAGED. Not supported for Serverless NEGs. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final Input<OutlierDetection3>? outlierDetection;

  /// Deprecated in favor of portName. The TCP port to connect on the backend. The default value is 80. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port.
  final Input<int>? port;

  /// A named port on a backend instance group representing the port for communication to the backend VMs in that group. The named port must be [defined on each backend instance group](https://cloud.google.com/load-balancing/docs/backend-service#named_ports). This parameter has no meaning if the backends are NEGs. For Internal TCP/UDP Load Balancing and Network Load Balancing, omit port_name.
  final Input<String>? portName;
  final Input<String>? project;

  /// The protocol this BackendService uses to communicate with backends. Possible values are HTTP, HTTPS, HTTP2, TCP, SSL, UDP or GRPC. depending on the chosen load balancer or Traffic Director configuration. Refer to the documentation for the load balancers or for Traffic Director for more information. Must be set to GRPC when the backend service is referenced by a URL map that is bound to target gRPC proxy.
  final Input<BackendServiceProtocol3>? protocol;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// This field specifies the security settings that apply to this backend service. This field is applicable to a global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
  final Input<SecuritySettings3>? securitySettings;

  /// URLs of networkservices.ServiceBinding resources. Can only be set if load balancing scheme is INTERNAL_SELF_MANAGED. If set, lists of backends and health checks must be both empty.
  final Input<List<String>>? serviceBindings;

  /// Type of session affinity to use. The default is NONE. Only NONE and HEADER_FIELD are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. For more details, see: [Session Affinity](https://cloud.google.com/load-balancing/docs/backend-service#session_affinity).
  final Input<BackendServiceSessionAffinity3>? sessionAffinity;
  final Input<Subsetting3>? subsetting;

  /// The backend service timeout has a different meaning depending on the type of load balancer. For more information see, Backend service settings. The default is 30 seconds. The full range of timeout values allowed goes from 1 through 2,147,483,647 seconds. This value can be overridden in the PathMatcher configuration of the UrlMap that references this backend service. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. Instead, use maxStreamDuration.
  final Input<int>? timeoutSec;
  final Input<List<BackendServiceUsedBy3>>? usedBy;

  BackendServiceArgs3({
    this.affinityCookieTtlSec,
    this.backends,
    this.cdnPolicy,
    this.circuitBreakers,
    this.compressionMode,
    this.connectionDraining,
    this.connectionTrackingPolicy,
    this.consistentHash,
    this.customRequestHeaders,
    this.customResponseHeaders,
    this.description,
    this.enableCDN,
    this.failoverPolicy,
    this.healthChecks,
    this.iap,
    this.loadBalancingScheme,
    this.localityLbPolicies,
    this.localityLbPolicy,
    this.logConfig,
    this.maxStreamDuration,
    this.metadatas,
    this.name,
    this.network,
    this.outlierDetection,
    this.port,
    this.portName,
    this.project,
    this.protocol,
    this.requestId,
    this.securitySettings,
    this.serviceBindings,
    this.sessionAffinity,
    this.subsetting,
    this.timeoutSec,
    this.usedBy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final affinityCookieTtlSecValue = affinityCookieTtlSec;
    if (affinityCookieTtlSecValue != null) {
      map['affinityCookieTtlSec'] = affinityCookieTtlSecValue;
    }
    final backendsValue = backends;
    if (backendsValue != null) {
      map['backends'] = Input.mapOptionalInputValue<List<Backend3>,
              List<Map<String, dynamic>>>(
          backendsValue,
          (value) => Input.encodeList<Backend3, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final cdnPolicyValue = cdnPolicy;
    if (cdnPolicyValue != null) {
      map['cdnPolicy'] = Input.mapOptionalInputValue<BackendServiceCdnPolicy3,
          Map<String, dynamic>>(cdnPolicyValue, (value) => value.toMap());
    }
    final circuitBreakersValue = circuitBreakers;
    if (circuitBreakersValue != null) {
      map['circuitBreakers'] =
          Input.mapOptionalInputValue<CircuitBreakers3, Map<String, dynamic>>(
              circuitBreakersValue, (value) => value.toMap());
    }
    final compressionModeValue = compressionMode;
    if (compressionModeValue != null) {
      map['compressionMode'] =
          Input.mapOptionalInputValue<BackendServiceCompressionMode3, String>(
              compressionModeValue, (value) => value.value);
    }
    final connectionDrainingValue = connectionDraining;
    if (connectionDrainingValue != null) {
      map['connectionDraining'] = Input.mapOptionalInputValue<
              ConnectionDraining3, Map<String, dynamic>>(
          connectionDrainingValue, (value) => value.toMap());
    }
    final connectionTrackingPolicyValue = connectionTrackingPolicy;
    if (connectionTrackingPolicyValue != null) {
      map['connectionTrackingPolicy'] = Input.mapOptionalInputValue<
              BackendServiceConnectionTrackingPolicy3, Map<String, dynamic>>(
          connectionTrackingPolicyValue, (value) => value.toMap());
    }
    final consistentHashValue = consistentHash;
    if (consistentHashValue != null) {
      map['consistentHash'] = Input.mapOptionalInputValue<
          ConsistentHashLoadBalancerSettings3,
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
      map['failoverPolicy'] = Input.mapOptionalInputValue<
          BackendServiceFailoverPolicy3,
          Map<String, dynamic>>(failoverPolicyValue, (value) => value.toMap());
    }
    final healthChecksValue = healthChecks;
    if (healthChecksValue != null) {
      map['healthChecks'] = healthChecksValue;
    }
    final iapValue = iap;
    if (iapValue != null) {
      map['iap'] =
          Input.mapOptionalInputValue<BackendServiceIAP3, Map<String, dynamic>>(
              iapValue, (value) => value.toMap());
    }
    final loadBalancingSchemeValue = loadBalancingScheme;
    if (loadBalancingSchemeValue != null) {
      map['loadBalancingScheme'] = Input.mapOptionalInputValue<
          BackendServiceLoadBalancingScheme3,
          String>(loadBalancingSchemeValue, (value) => value.value);
    }
    final localityLbPoliciesValue = localityLbPolicies;
    if (localityLbPoliciesValue != null) {
      map['localityLbPolicies'] = Input.mapOptionalInputValue<
              List<BackendServiceLocalityLoadBalancingPolicyConfig3>,
              List<Map<String, dynamic>>>(
          localityLbPoliciesValue,
          (value) => Input.encodeList<
              BackendServiceLocalityLoadBalancingPolicyConfig3,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final localityLbPolicyValue = localityLbPolicy;
    if (localityLbPolicyValue != null) {
      map['localityLbPolicy'] =
          Input.mapOptionalInputValue<BackendServiceLocalityLbPolicy3, String>(
              localityLbPolicyValue, (value) => value.value);
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = Input.mapOptionalInputValue<BackendServiceLogConfig3,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final maxStreamDurationValue = maxStreamDuration;
    if (maxStreamDurationValue != null) {
      map['maxStreamDuration'] =
          Input.mapOptionalInputValue<Duration3, Map<String, dynamic>>(
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
      map['outlierDetection'] =
          Input.mapOptionalInputValue<OutlierDetection3, Map<String, dynamic>>(
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
      map['protocol'] =
          Input.mapOptionalInputValue<BackendServiceProtocol3, String>(
              protocolValue, (value) => value.value);
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final securitySettingsValue = securitySettings;
    if (securitySettingsValue != null) {
      map['securitySettings'] =
          Input.mapOptionalInputValue<SecuritySettings3, Map<String, dynamic>>(
              securitySettingsValue, (value) => value.toMap());
    }
    final serviceBindingsValue = serviceBindings;
    if (serviceBindingsValue != null) {
      map['serviceBindings'] = serviceBindingsValue;
    }
    final sessionAffinityValue = sessionAffinity;
    if (sessionAffinityValue != null) {
      map['sessionAffinity'] =
          Input.mapOptionalInputValue<BackendServiceSessionAffinity3, String>(
              sessionAffinityValue, (value) => value.value);
    }
    final subsettingValue = subsetting;
    if (subsettingValue != null) {
      map['subsetting'] =
          Input.mapOptionalInputValue<Subsetting3, Map<String, dynamic>>(
              subsettingValue, (value) => value.toMap());
    }
    final timeoutSecValue = timeoutSec;
    if (timeoutSecValue != null) {
      map['timeoutSec'] = timeoutSecValue;
    }
    final usedByValue = usedBy;
    if (usedByValue != null) {
      map['usedBy'] = Input.mapOptionalInputValue<List<BackendServiceUsedBy3>,
              List<Map<String, dynamic>>>(
          usedByValue,
          (value) =>
              Input.encodeList<BackendServiceUsedBy3, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory BackendServiceArgs3.fromMap(Map<String, dynamic> map) {
    return BackendServiceArgs3(
      affinityCookieTtlSec:
          Input.asOptionalInput<int>(map['affinityCookieTtlSec']),
      backends: Input.asOptionalInput<List<Backend3>>(map['backends']),
      cdnPolicy:
          Input.asOptionalInput<BackendServiceCdnPolicy3>(map['cdnPolicy']),
      circuitBreakers:
          Input.asOptionalInput<CircuitBreakers3>(map['circuitBreakers']),
      compressionMode: Input.asOptionalInput<BackendServiceCompressionMode3>(
          map['compressionMode']),
      connectionDraining:
          Input.asOptionalInput<ConnectionDraining3>(map['connectionDraining']),
      connectionTrackingPolicy:
          Input.asOptionalInput<BackendServiceConnectionTrackingPolicy3>(
              map['connectionTrackingPolicy']),
      consistentHash:
          Input.asOptionalInput<ConsistentHashLoadBalancerSettings3>(
              map['consistentHash']),
      customRequestHeaders:
          Input.asOptionalInput<List<String>>(map['customRequestHeaders']),
      customResponseHeaders:
          Input.asOptionalInput<List<String>>(map['customResponseHeaders']),
      description: Input.asOptionalInput<String>(map['description']),
      enableCDN: Input.asOptionalInput<bool>(map['enableCDN']),
      failoverPolicy: Input.asOptionalInput<BackendServiceFailoverPolicy3>(
          map['failoverPolicy']),
      healthChecks: Input.asOptionalInput<List<String>>(map['healthChecks']),
      iap: Input.asOptionalInput<BackendServiceIAP3>(map['iap']),
      loadBalancingScheme:
          Input.asOptionalInput<BackendServiceLoadBalancingScheme3>(
              map['loadBalancingScheme']),
      localityLbPolicies: Input.asOptionalInput<
              List<BackendServiceLocalityLoadBalancingPolicyConfig3>>(
          map['localityLbPolicies']),
      localityLbPolicy: Input.asOptionalInput<BackendServiceLocalityLbPolicy3>(
          map['localityLbPolicy']),
      logConfig:
          Input.asOptionalInput<BackendServiceLogConfig3>(map['logConfig']),
      maxStreamDuration:
          Input.asOptionalInput<Duration3>(map['maxStreamDuration']),
      metadatas: Input.asOptionalInput<Map<String, String>>(map['metadatas']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      outlierDetection:
          Input.asOptionalInput<OutlierDetection3>(map['outlierDetection']),
      port: Input.asOptionalInput<int>(map['port']),
      portName: Input.asOptionalInput<String>(map['portName']),
      project: Input.asOptionalInput<String>(map['project']),
      protocol: Input.asOptionalInput<BackendServiceProtocol3>(map['protocol']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      securitySettings:
          Input.asOptionalInput<SecuritySettings3>(map['securitySettings']),
      serviceBindings:
          Input.asOptionalInput<List<String>>(map['serviceBindings']),
      sessionAffinity: Input.asOptionalInput<BackendServiceSessionAffinity3>(
          map['sessionAffinity']),
      subsetting: Input.asOptionalInput<Subsetting3>(map['subsetting']),
      timeoutSec: Input.asOptionalInput<int>(map['timeoutSec']),
      usedBy: Input.asOptionalInput<List<BackendServiceUsedBy3>>(map['usedBy']),
    );
  }
}
