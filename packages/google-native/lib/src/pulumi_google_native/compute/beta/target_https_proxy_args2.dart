// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'target_https_proxy_quic_override2.dart';

/// The set of arguments for TargetHttpsProxy.
class TargetHttpsProxyArgs2 {
  /// [Deprecated] Use serverTlsPolicy instead.
  final Input<String>? authentication;

  /// [Deprecated] Use authorizationPolicy instead.
  final Input<String>? authorization;

  /// Optional. A URL referring to a networksecurity.AuthorizationPolicy resource that describes how the proxy should authorize inbound traffic. If left blank, access will not be restricted by an authorization policy. Refer to the AuthorizationPolicy resource for additional details. authorizationPolicy only applies to a global TargetHttpsProxy attached to globalForwardingRules with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. Note: This field currently has no impact.
  final Input<String>? authorizationPolicy;

  /// URL of a certificate map that identifies a certificate map associated with the given target proxy. This field can only be set for global target proxies. If set, sslCertificates will be ignored. Accepted format is //certificatemanager.googleapis.com/projects/{project }/locations/{location}/certificateMaps/{resourceName}.
  final Input<String>? certificateMap;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// URLs to networkservices.HttpFilter resources enabled for xDS clients using this configuration. For example, https://networkservices.googleapis.com/beta/projects/project/locations/ locationhttpFilters/httpFilter Only filters that handle outbound connection and stream events may be specified. These filters work in conjunction with a default set of HTTP filters that may already be configured by Traffic Director. Traffic Director will determine the final location of these filters within xDS configuration based on the name of the HTTP filter. If Traffic Director positions multiple filters at the same location, those filters will be in the same order as specified in this list. httpFilters only applies for loadbalancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED. See ForwardingRule for more details.
  final Input<List<String>>? httpFilters;

  /// Specifies how long to keep a connection open, after completing a response, while there is no matching traffic (in seconds). If an HTTP keep-alive is not specified, a default value (610 seconds) will be used. For global external Application Load Balancers, the minimum allowed value is 5 seconds and the maximum allowed value is 1200 seconds. For classic Application Load Balancers, this option is not supported.
  final Input<int>? httpKeepAliveTimeoutSec;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;
  final Input<String>? project;

  /// This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  final Input<bool>? proxyBind;

  /// Specifies the QUIC override policy for this TargetHttpsProxy resource. This setting determines whether the load balancer attempts to negotiate QUIC with clients. You can specify NONE, ENABLE, or DISABLE. - When quic-override is set to NONE, Google manages whether QUIC is used. - When quic-override is set to ENABLE, the load balancer uses QUIC when possible. - When quic-override is set to DISABLE, the load balancer doesn't use QUIC. - If the quic-override flag is not specified, NONE is implied.
  final Input<TargetHttpsProxyQuicOverride2>? quicOverride;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Optional. A URL referring to a networksecurity.ServerTlsPolicy resource that describes how the proxy should authenticate inbound traffic. serverTlsPolicy only applies to a global TargetHttpsProxy attached to globalForwardingRules with the loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL or EXTERNAL_MANAGED. For details which ServerTlsPolicy resources are accepted with INTERNAL_SELF_MANAGED and which with EXTERNAL, EXTERNAL_MANAGED loadBalancingScheme consult ServerTlsPolicy documentation. If left blank, communications are not encrypted.
  final Input<String>? serverTlsPolicy;

  /// URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer. At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  final Input<List<String>>? sslCertificates;

  /// URL of SslPolicy resource that will be associated with the TargetHttpsProxy resource. If not set, the TargetHttpsProxy resource has no SSL policy configured.
  final Input<String>? sslPolicy;

  /// A fully-qualified or valid partial URL to the UrlMap resource that defines the mapping from URL to the BackendService. For example, the following are all valid URLs for specifying a URL map: - https://www.googleapis.compute/v1/projects/project/global/urlMaps/ url-map - projects/project/global/urlMaps/url-map - global/urlMaps/url-map
  final Input<String>? urlMap;

  TargetHttpsProxyArgs2({
    this.authentication,
    this.authorization,
    this.authorizationPolicy,
    this.certificateMap,
    this.description,
    this.httpFilters,
    this.httpKeepAliveTimeoutSec,
    this.name,
    this.project,
    this.proxyBind,
    this.quicOverride,
    this.requestId,
    this.serverTlsPolicy,
    this.sslCertificates,
    this.sslPolicy,
    this.urlMap,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authenticationValue = authentication;
    if (authenticationValue != null) {
      map['authentication'] = authenticationValue;
    }
    final authorizationValue = authorization;
    if (authorizationValue != null) {
      map['authorization'] = authorizationValue;
    }
    final authorizationPolicyValue = authorizationPolicy;
    if (authorizationPolicyValue != null) {
      map['authorizationPolicy'] = authorizationPolicyValue;
    }
    final certificateMapValue = certificateMap;
    if (certificateMapValue != null) {
      map['certificateMap'] = certificateMapValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final httpFiltersValue = httpFilters;
    if (httpFiltersValue != null) {
      map['httpFilters'] = httpFiltersValue;
    }
    final httpKeepAliveTimeoutSecValue = httpKeepAliveTimeoutSec;
    if (httpKeepAliveTimeoutSecValue != null) {
      map['httpKeepAliveTimeoutSec'] = httpKeepAliveTimeoutSecValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyBindValue = proxyBind;
    if (proxyBindValue != null) {
      map['proxyBind'] = proxyBindValue;
    }
    final quicOverrideValue = quicOverride;
    if (quicOverrideValue != null) {
      map['quicOverride'] =
          Input.mapOptionalInputValue<TargetHttpsProxyQuicOverride2, String>(
              quicOverrideValue, (value) => value.value);
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final serverTlsPolicyValue = serverTlsPolicy;
    if (serverTlsPolicyValue != null) {
      map['serverTlsPolicy'] = serverTlsPolicyValue;
    }
    final sslCertificatesValue = sslCertificates;
    if (sslCertificatesValue != null) {
      map['sslCertificates'] = sslCertificatesValue;
    }
    final sslPolicyValue = sslPolicy;
    if (sslPolicyValue != null) {
      map['sslPolicy'] = sslPolicyValue;
    }
    final urlMapValue = urlMap;
    if (urlMapValue != null) {
      map['urlMap'] = urlMapValue;
    }
    return map;
  }

  factory TargetHttpsProxyArgs2.fromMap(Map<String, dynamic> map) {
    return TargetHttpsProxyArgs2(
      authentication: Input.asOptionalInput<String>(map['authentication']),
      authorization: Input.asOptionalInput<String>(map['authorization']),
      authorizationPolicy:
          Input.asOptionalInput<String>(map['authorizationPolicy']),
      certificateMap: Input.asOptionalInput<String>(map['certificateMap']),
      description: Input.asOptionalInput<String>(map['description']),
      httpFilters: Input.asOptionalInput<List<String>>(map['httpFilters']),
      httpKeepAliveTimeoutSec:
          Input.asOptionalInput<int>(map['httpKeepAliveTimeoutSec']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      proxyBind: Input.asOptionalInput<bool>(map['proxyBind']),
      quicOverride: Input.asOptionalInput<TargetHttpsProxyQuicOverride2>(
          map['quicOverride']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      serverTlsPolicy: Input.asOptionalInput<String>(map['serverTlsPolicy']),
      sslCertificates:
          Input.asOptionalInput<List<String>>(map['sslCertificates']),
      sslPolicy: Input.asOptionalInput<String>(map['sslPolicy']),
      urlMap: Input.asOptionalInput<String>(map['urlMap']),
    );
  }
}
