// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTargetHttpsProxy.
class GetTargetHttpsProxyComputeBetaResult {
  /// [Deprecated] Use serverTlsPolicy instead.
  final String authentication;

  /// [Deprecated] Use authorizationPolicy instead.
  final String authorization;

  /// Optional. A URL referring to a networksecurity.AuthorizationPolicy resource that describes how the proxy should authorize inbound traffic. If left blank, access will not be restricted by an authorization policy. Refer to the AuthorizationPolicy resource for additional details. authorizationPolicy only applies to a global TargetHttpsProxy attached to globalForwardingRules with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. Note: This field currently has no impact.
  final String authorizationPolicy;

  /// URL of a certificate map that identifies a certificate map associated with the given target proxy. This field can only be set for global target proxies. If set, sslCertificates will be ignored. Accepted format is //certificatemanager.googleapis.com/projects/{project }/locations/{location}/certificateMaps/{resourceName}.
  final String certificateMap;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a TargetHttpsProxy. An up-to-date fingerprint must be provided in order to patch the TargetHttpsProxy; otherwise, the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve the TargetHttpsProxy.
  final String fingerprint;

  /// URLs to networkservices.HttpFilter resources enabled for xDS clients using this configuration. For example, https://networkservices.googleapis.com/beta/projects/project/locations/ locationhttpFilters/httpFilter Only filters that handle outbound connection and stream events may be specified. These filters work in conjunction with a default set of HTTP filters that may already be configured by Traffic Director. Traffic Director will determine the final location of these filters within xDS configuration based on the name of the HTTP filter. If Traffic Director positions multiple filters at the same location, those filters will be in the same order as specified in this list. httpFilters only applies for loadbalancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED. See ForwardingRule for more details.
  final List<String> httpFilters;

  /// Specifies how long to keep a connection open, after completing a response, while there is no matching traffic (in seconds). If an HTTP keep-alive is not specified, a default value (610 seconds) will be used. For global external Application Load Balancers, the minimum allowed value is 5 seconds and the maximum allowed value is 1200 seconds. For classic Application Load Balancers, this option is not supported.
  final int httpKeepAliveTimeoutSec;

  /// Type of resource. Always compute#targetHttpsProxy for target HTTPS proxies.
  final String kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  final bool proxyBind;

  /// Specifies the QUIC override policy for this TargetHttpsProxy resource. This setting determines whether the load balancer attempts to negotiate QUIC with clients. You can specify NONE, ENABLE, or DISABLE. - When quic-override is set to NONE, Google manages whether QUIC is used. - When quic-override is set to ENABLE, the load balancer uses QUIC when possible. - When quic-override is set to DISABLE, the load balancer doesn't use QUIC. - If the quic-override flag is not specified, NONE is implied.
  final String quicOverride;

  /// URL of the region where the regional TargetHttpsProxy resides. This field is not applicable to global TargetHttpsProxies.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Optional. A URL referring to a networksecurity.ServerTlsPolicy resource that describes how the proxy should authenticate inbound traffic. serverTlsPolicy only applies to a global TargetHttpsProxy attached to globalForwardingRules with the loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL or EXTERNAL_MANAGED. For details which ServerTlsPolicy resources are accepted with INTERNAL_SELF_MANAGED and which with EXTERNAL, EXTERNAL_MANAGED loadBalancingScheme consult ServerTlsPolicy documentation. If left blank, communications are not encrypted.
  final String serverTlsPolicy;

  /// URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer. At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  final List<String> sslCertificates;

  /// URL of SslPolicy resource that will be associated with the TargetHttpsProxy resource. If not set, the TargetHttpsProxy resource has no SSL policy configured.
  final String sslPolicy;

  /// A fully-qualified or valid partial URL to the UrlMap resource that defines the mapping from URL to the BackendService. For example, the following are all valid URLs for specifying a URL map: - https://www.googleapis.compute/v1/projects/project/global/urlMaps/ url-map - projects/project/global/urlMaps/url-map - global/urlMaps/url-map
  final String urlMap;

  GetTargetHttpsProxyComputeBetaResult({
    required this.authentication,
    required this.authorization,
    required this.authorizationPolicy,
    required this.certificateMap,
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.httpFilters,
    required this.httpKeepAliveTimeoutSec,
    required this.kind,
    required this.name,
    required this.proxyBind,
    required this.quicOverride,
    required this.region,
    required this.selfLink,
    required this.serverTlsPolicy,
    required this.sslCertificates,
    required this.sslPolicy,
    required this.urlMap,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authentication'] = authentication;
    map['authorization'] = authorization;
    map['authorizationPolicy'] = authorizationPolicy;
    map['certificateMap'] = certificateMap;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['fingerprint'] = fingerprint;
    map['httpFilters'] = httpFilters;
    map['httpKeepAliveTimeoutSec'] = httpKeepAliveTimeoutSec;
    map['kind'] = kind;
    map['name'] = name;
    map['proxyBind'] = proxyBind;
    map['quicOverride'] = quicOverride;
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['serverTlsPolicy'] = serverTlsPolicy;
    map['sslCertificates'] = sslCertificates;
    map['sslPolicy'] = sslPolicy;
    map['urlMap'] = urlMap;
    return map;
  }

  factory GetTargetHttpsProxyComputeBetaResult.fromMap(
      Map<String, dynamic> map) {
    return GetTargetHttpsProxyComputeBetaResult(
      authentication: map['authentication'] as String,
      authorization: map['authorization'] as String,
      authorizationPolicy: map['authorizationPolicy'] as String,
      certificateMap: map['certificateMap'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      httpFilters: (map['httpFilters'] as List).cast<String>(),
      httpKeepAliveTimeoutSec: map['httpKeepAliveTimeoutSec'] as int,
      kind: map['kind'] as String,
      name: map['name'] as String,
      proxyBind: map['proxyBind'] as bool,
      quicOverride: map['quicOverride'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      serverTlsPolicy: map['serverTlsPolicy'] as String,
      sslCertificates: (map['sslCertificates'] as List).cast<String>(),
      sslPolicy: map['sslPolicy'] as String,
      urlMap: map['urlMap'] as String,
    );
  }
}
