// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action.dart';
import 'listener_mutual_authentication.dart';

/// {@template pulumi_alb_listener_listener_args_doc}
/// The set of arguments for Listener.
/// {@endtemplate}
/// {@macro pulumi_alb_listener_listener_args_doc}
class ListenerArgs {
  /// Name of the Application-Layer Protocol Negotiation (ALPN) policy. Can be set if `protocol` is `TLS`. Valid values are `HTTP1Only`, `HTTP2Only`, `HTTP2Optional`, `HTTP2Preferred`, and `None`.
  final pulumi.Input<String>? alpnPolicy;
  /// ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS. For adding additional SSL certificates, see the `aws.lb.ListenerCertificate` resource.
  final pulumi.Input<String>? certificateArn;
  /// Configuration block for default actions. See below.
  final pulumi.Input<List<ListenerDefaultAction>> defaultActions;
  /// ARN of the load balancer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> loadBalancerArn;
  /// The mutual authentication configuration information. See below.
  final pulumi.Input<ListenerMutualAuthentication>? mutualAuthentication;
  /// Port on which the load balancer is listening. Not valid for Gateway Load Balancers.
  final pulumi.Input<int>? port;
  /// Protocol for connections from clients to the load balancer. For Application Load Balancers, valid values are `HTTP` and `HTTPS`, with a default of `HTTP`. For Network Load Balancers, valid values are `TCP`, `TLS`, `UDP`, `TCP_UDP`, `QUIC`, and `TCP_QUIC`. Not valid to use `UDP` or `TCP_UDP` if dual-stack mode is enabled. Not valid to use `QUIC` or `TCP_QUIC` if security groups are configured or dual-stack mode is enabled. Not valid for Gateway Load Balancers.
  final pulumi.Input<String>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final pulumi.Input<String>? routingHttpRequestXAmznMtlsClientcertHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Issuer` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final pulumi.Input<String>? routingHttpRequestXAmznMtlsClientcertIssuerHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Leaf` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final pulumi.Input<String>? routingHttpRequestXAmznMtlsClientcertLeafHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Serial-Number` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final pulumi.Input<String>? routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Subject` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final pulumi.Input<String>? routingHttpRequestXAmznMtlsClientcertSubjectHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Validity` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final pulumi.Input<String>? routingHttpRequestXAmznMtlsClientcertValidityHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Tls-Cipher-Suite` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final pulumi.Input<String>? routingHttpRequestXAmznTlsCipherSuiteHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Tls-Version` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final pulumi.Input<String>? routingHttpRequestXAmznTlsVersionHeaderName;
  /// Specifies which headers the browser can expose to the requesting client. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `true`.
  final pulumi.Input<String>? routingHttpResponseAccessControlAllowCredentialsHeaderValue;
  /// Specifies which headers can be used during the request. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Accept`, `Accept-Language`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, `Pragma`. Dependent on your use-case other headers can be exposed and then set as a value consult the Access-Control-Allow-Headers documentation.
  final pulumi.Input<String>? routingHttpResponseAccessControlAllowHeadersHeaderValue;
  /// Set which HTTP methods are allowed when accessing the server from a different origin. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `GET`, `HEAD`, `POST`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE` or `PATCH`.
  final pulumi.Input<String>? routingHttpResponseAccessControlAllowMethodsHeaderValue;
  /// Specifies which origins are allowed to access the server. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. A valid value is a URI, eg: `https://example.com`.
  final pulumi.Input<String>? routingHttpResponseAccessControlAllowOriginHeaderValue;
  /// Specifies whether the browser should include credentials such as cookies or authentication when making requests. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, or `Pragma`. Dependent on your use-case other headers can be exposed, consult the Access-Control-Expose-Headers documentation.
  final pulumi.Input<String>? routingHttpResponseAccessControlExposeHeadersHeaderValue;
  /// Specifies how long the results of a preflight request can be cached, in seconds. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are between `0` and `86400`. This value is browser specific, consult the Access-Control-Max-Age documentation.
  final pulumi.Input<String>? routingHttpResponseAccessControlMaxAgeHeaderValue;
  /// Specifies restrictions enforced by the browser to help minimize the risk of certain types of security threats. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Values for this are extensive, and can be impactful when set, consult Content-Security-Policy documentation.
  final pulumi.Input<String>? routingHttpResponseContentSecurityPolicyHeaderValue;
  /// Enables you to allow or remove the HTTP response server header. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `true` or `false`.
  final pulumi.Input<bool>? routingHttpResponseServerEnabled;
  /// Informs browsers that the site should only be accessed using HTTPS, and that any future attempts to access it using HTTP should automatically be converted to HTTPS. Default values are `max-age=31536000; includeSubDomains; preload` consult the Strict-Transport-Security documentation for further details.
  final pulumi.Input<String>? routingHttpResponseStrictTransportSecurityHeaderValue;
  /// Indicates whether the MIME types advertised in the Content-Type headers should be followed and not be changed. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `nosniff`.
  final pulumi.Input<String>? routingHttpResponseXContentTypeOptionsHeaderValue;
  /// Indicates whether the browser is allowed to render a page in a frame, iframe, embed or object. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid values are `DENY`, `SAMEORIGIN`, or `ALLOW-FROM https://example.com`.
  final pulumi.Input<String>? routingHttpResponseXFrameOptionsHeaderValue;
  /// Name of the SSL Policy for the listener. Required if `protocol` is `HTTPS` or `TLS`. Default is `ELBSecurityPolicy-2016-08`.
  final pulumi.Input<String>? sslPolicy;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note::** When a `Name` key is specified in the map, the AWS Console maps the value to the `Name Tag` column value inside the `Listener Rules` table within a specific load balancer listener page. Otherwise, the value resolves to `Default`.
  final pulumi.Input<Map<String, String>>? tags;
  /// TCP idle timeout value in seconds. Can only be set if protocol is `TCP` on Network Load Balancer, or with a Gateway Load Balancer. Not supported for Application Load Balancers. Valid values are between `60` and `6000` inclusive. Default: `350`.
  final pulumi.Input<int>? tcpIdleTimeoutSeconds;

  /// Creates a new [ListenerArgs].
  /// [alpnPolicy] Name of the Application-Layer Protocol Negotiation (ALPN) policy. Can be set if `protocol` is `TLS`. Valid values are `HTTP1Only`, `HTTP2Only`, `HTTP2Optional`, `HTTP2Preferred`, and `None`.
  /// [certificateArn] ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS. For adding additional SSL certificates, see the `aws.lb.ListenerCertificate` resource.
  /// [defaultActions] Configuration block for default actions. See below.
  /// [loadBalancerArn] ARN of the load balancer.
  /// [mutualAuthentication] The mutual authentication configuration information. See below.
  /// [port] Port on which the load balancer is listening. Not valid for Gateway Load Balancers.
  /// [protocol] Protocol for connections from clients to the load balancer. For Application Load Balancers, valid values are `HTTP` and `HTTPS`, with a default of `HTTP`. For Network Load Balancers, valid values are `TCP`, `TLS`, `UDP`, `TCP_UDP`, `QUIC`, and `TCP_QUIC`. Not valid to use `UDP` or `TCP_UDP` if dual-stack mode is enabled. Not valid to use `QUIC` or `TCP_QUIC` if security groups are configured or dual-stack mode is enabled. Not valid for Gateway Load Balancers.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingHttpRequestXAmznMtlsClientcertHeaderName] Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznMtlsClientcertIssuerHeaderName] Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Issuer` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznMtlsClientcertLeafHeaderName] Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Leaf` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName] Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Serial-Number` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznMtlsClientcertSubjectHeaderName] Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Subject` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznMtlsClientcertValidityHeaderName] Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Validity` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznTlsCipherSuiteHeaderName] Enables you to modify the header name of the `X-Amzn-Tls-Cipher-Suite` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznTlsVersionHeaderName] Enables you to modify the header name of the `X-Amzn-Tls-Version` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpResponseAccessControlAllowCredentialsHeaderValue] Specifies which headers the browser can expose to the requesting client. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `true`.
  /// [routingHttpResponseAccessControlAllowHeadersHeaderValue] Specifies which headers can be used during the request. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Accept`, `Accept-Language`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, `Pragma`. Dependent on your use-case other headers can be exposed and then set as a value consult the Access-Control-Allow-Headers documentation.
  /// [routingHttpResponseAccessControlAllowMethodsHeaderValue] Set which HTTP methods are allowed when accessing the server from a different origin. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `GET`, `HEAD`, `POST`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE` or `PATCH`.
  /// [routingHttpResponseAccessControlAllowOriginHeaderValue] Specifies which origins are allowed to access the server. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. A valid value is a URI, eg: `https://example.com`.
  /// [routingHttpResponseAccessControlExposeHeadersHeaderValue] Specifies whether the browser should include credentials such as cookies or authentication when making requests. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, or `Pragma`. Dependent on your use-case other headers can be exposed, consult the Access-Control-Expose-Headers documentation.
  /// [routingHttpResponseAccessControlMaxAgeHeaderValue] Specifies how long the results of a preflight request can be cached, in seconds. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are between `0` and `86400`. This value is browser specific, consult the Access-Control-Max-Age documentation.
  /// [routingHttpResponseContentSecurityPolicyHeaderValue] Specifies restrictions enforced by the browser to help minimize the risk of certain types of security threats. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Values for this are extensive, and can be impactful when set, consult Content-Security-Policy documentation.
  /// [routingHttpResponseServerEnabled] Enables you to allow or remove the HTTP response server header. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `true` or `false`.
  /// [routingHttpResponseStrictTransportSecurityHeaderValue] Informs browsers that the site should only be accessed using HTTPS, and that any future attempts to access it using HTTP should automatically be converted to HTTPS. Default values are `max-age=31536000; includeSubDomains; preload` consult the Strict-Transport-Security documentation for further details.
  /// [routingHttpResponseXContentTypeOptionsHeaderValue] Indicates whether the MIME types advertised in the Content-Type headers should be followed and not be changed. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `nosniff`.
  /// [routingHttpResponseXFrameOptionsHeaderValue] Indicates whether the browser is allowed to render a page in a frame, iframe, embed or object. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid values are `DENY`, `SAMEORIGIN`, or `ALLOW-FROM https://example.com`.
  /// [sslPolicy] Name of the SSL Policy for the listener. Required if `protocol` is `HTTPS` or `TLS`. Default is `ELBSecurityPolicy-2016-08`.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tcpIdleTimeoutSeconds] TCP idle timeout value in seconds. Can only be set if protocol is `TCP` on Network Load Balancer, or with a Gateway Load Balancer. Not supported for Application Load Balancers. Valid values are between `60` and `6000` inclusive. Default: `350`.
  ListenerArgs({
    this.alpnPolicy,
    this.certificateArn,
    required this.defaultActions,
    required this.loadBalancerArn,
    this.mutualAuthentication,
    this.port,
    this.protocol,
    this.region,
    this.routingHttpRequestXAmznMtlsClientcertHeaderName,
    this.routingHttpRequestXAmznMtlsClientcertIssuerHeaderName,
    this.routingHttpRequestXAmznMtlsClientcertLeafHeaderName,
    this.routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName,
    this.routingHttpRequestXAmznMtlsClientcertSubjectHeaderName,
    this.routingHttpRequestXAmznMtlsClientcertValidityHeaderName,
    this.routingHttpRequestXAmznTlsCipherSuiteHeaderName,
    this.routingHttpRequestXAmznTlsVersionHeaderName,
    this.routingHttpResponseAccessControlAllowCredentialsHeaderValue,
    this.routingHttpResponseAccessControlAllowHeadersHeaderValue,
    this.routingHttpResponseAccessControlAllowMethodsHeaderValue,
    this.routingHttpResponseAccessControlAllowOriginHeaderValue,
    this.routingHttpResponseAccessControlExposeHeadersHeaderValue,
    this.routingHttpResponseAccessControlMaxAgeHeaderValue,
    this.routingHttpResponseContentSecurityPolicyHeaderValue,
    this.routingHttpResponseServerEnabled,
    this.routingHttpResponseStrictTransportSecurityHeaderValue,
    this.routingHttpResponseXContentTypeOptionsHeaderValue,
    this.routingHttpResponseXFrameOptionsHeaderValue,
    this.sslPolicy,
    this.tags,
    this.tcpIdleTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alpnPolicy': ?alpnPolicy,
      'certificateArn': ?certificateArn,
      'defaultActions': pulumi.Input.mapInputValue<List<ListenerDefaultAction>, List<Map<String, dynamic>>>(defaultActions, (value) => pulumi.Input.encodeList<ListenerDefaultAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerArn': loadBalancerArn,
      'mutualAuthentication': ?pulumi.Input.mapOptionalInputValue<ListenerMutualAuthentication, Map<String, dynamic>>(mutualAuthentication, (value) => value.toMap()),
      'port': ?port,
      'protocol': ?protocol,
      'region': ?region,
      'routingHttpRequestXAmznMtlsClientcertHeaderName': ?routingHttpRequestXAmznMtlsClientcertHeaderName,
      'routingHttpRequestXAmznMtlsClientcertIssuerHeaderName': ?routingHttpRequestXAmznMtlsClientcertIssuerHeaderName,
      'routingHttpRequestXAmznMtlsClientcertLeafHeaderName': ?routingHttpRequestXAmznMtlsClientcertLeafHeaderName,
      'routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName': ?routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName,
      'routingHttpRequestXAmznMtlsClientcertSubjectHeaderName': ?routingHttpRequestXAmznMtlsClientcertSubjectHeaderName,
      'routingHttpRequestXAmznMtlsClientcertValidityHeaderName': ?routingHttpRequestXAmznMtlsClientcertValidityHeaderName,
      'routingHttpRequestXAmznTlsCipherSuiteHeaderName': ?routingHttpRequestXAmznTlsCipherSuiteHeaderName,
      'routingHttpRequestXAmznTlsVersionHeaderName': ?routingHttpRequestXAmznTlsVersionHeaderName,
      'routingHttpResponseAccessControlAllowCredentialsHeaderValue': ?routingHttpResponseAccessControlAllowCredentialsHeaderValue,
      'routingHttpResponseAccessControlAllowHeadersHeaderValue': ?routingHttpResponseAccessControlAllowHeadersHeaderValue,
      'routingHttpResponseAccessControlAllowMethodsHeaderValue': ?routingHttpResponseAccessControlAllowMethodsHeaderValue,
      'routingHttpResponseAccessControlAllowOriginHeaderValue': ?routingHttpResponseAccessControlAllowOriginHeaderValue,
      'routingHttpResponseAccessControlExposeHeadersHeaderValue': ?routingHttpResponseAccessControlExposeHeadersHeaderValue,
      'routingHttpResponseAccessControlMaxAgeHeaderValue': ?routingHttpResponseAccessControlMaxAgeHeaderValue,
      'routingHttpResponseContentSecurityPolicyHeaderValue': ?routingHttpResponseContentSecurityPolicyHeaderValue,
      'routingHttpResponseServerEnabled': ?routingHttpResponseServerEnabled,
      'routingHttpResponseStrictTransportSecurityHeaderValue': ?routingHttpResponseStrictTransportSecurityHeaderValue,
      'routingHttpResponseXContentTypeOptionsHeaderValue': ?routingHttpResponseXContentTypeOptionsHeaderValue,
      'routingHttpResponseXFrameOptionsHeaderValue': ?routingHttpResponseXFrameOptionsHeaderValue,
      'sslPolicy': ?sslPolicy,
      'tags': ?tags,
      'tcpIdleTimeoutSeconds': ?tcpIdleTimeoutSeconds,
    };
  }

  factory ListenerArgs.fromMap(Map<String, dynamic> map) {
    return ListenerArgs(
      alpnPolicy: map['alpnPolicy'] == null ? null : ((map['alpnPolicy'] as String).input()).input(),
      certificateArn: map['certificateArn'] == null ? null : ((map['certificateArn'] as String).input()).input(),
      defaultActions: (pulumi.Input.decodeList<ListenerDefaultAction>(map['defaultActions']!, (value) => ListenerDefaultAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerArn: (map['loadBalancerArn'] as String).input(),
      mutualAuthentication: map['mutualAuthentication'] == null ? null : ((ListenerMutualAuthentication.fromMap((map['mutualAuthentication']! as Map).cast<String, dynamic>())).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      protocol: map['protocol'] == null ? null : ((map['protocol'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      routingHttpRequestXAmznMtlsClientcertHeaderName: map['routingHttpRequestXAmznMtlsClientcertHeaderName'] == null ? null : ((map['routingHttpRequestXAmznMtlsClientcertHeaderName'] as String).input()).input(),
      routingHttpRequestXAmznMtlsClientcertIssuerHeaderName: map['routingHttpRequestXAmznMtlsClientcertIssuerHeaderName'] == null ? null : ((map['routingHttpRequestXAmznMtlsClientcertIssuerHeaderName'] as String).input()).input(),
      routingHttpRequestXAmznMtlsClientcertLeafHeaderName: map['routingHttpRequestXAmznMtlsClientcertLeafHeaderName'] == null ? null : ((map['routingHttpRequestXAmznMtlsClientcertLeafHeaderName'] as String).input()).input(),
      routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName: map['routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName'] == null ? null : ((map['routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName'] as String).input()).input(),
      routingHttpRequestXAmznMtlsClientcertSubjectHeaderName: map['routingHttpRequestXAmznMtlsClientcertSubjectHeaderName'] == null ? null : ((map['routingHttpRequestXAmznMtlsClientcertSubjectHeaderName'] as String).input()).input(),
      routingHttpRequestXAmznMtlsClientcertValidityHeaderName: map['routingHttpRequestXAmznMtlsClientcertValidityHeaderName'] == null ? null : ((map['routingHttpRequestXAmznMtlsClientcertValidityHeaderName'] as String).input()).input(),
      routingHttpRequestXAmznTlsCipherSuiteHeaderName: map['routingHttpRequestXAmznTlsCipherSuiteHeaderName'] == null ? null : ((map['routingHttpRequestXAmznTlsCipherSuiteHeaderName'] as String).input()).input(),
      routingHttpRequestXAmznTlsVersionHeaderName: map['routingHttpRequestXAmznTlsVersionHeaderName'] == null ? null : ((map['routingHttpRequestXAmznTlsVersionHeaderName'] as String).input()).input(),
      routingHttpResponseAccessControlAllowCredentialsHeaderValue: map['routingHttpResponseAccessControlAllowCredentialsHeaderValue'] == null ? null : ((map['routingHttpResponseAccessControlAllowCredentialsHeaderValue'] as String).input()).input(),
      routingHttpResponseAccessControlAllowHeadersHeaderValue: map['routingHttpResponseAccessControlAllowHeadersHeaderValue'] == null ? null : ((map['routingHttpResponseAccessControlAllowHeadersHeaderValue'] as String).input()).input(),
      routingHttpResponseAccessControlAllowMethodsHeaderValue: map['routingHttpResponseAccessControlAllowMethodsHeaderValue'] == null ? null : ((map['routingHttpResponseAccessControlAllowMethodsHeaderValue'] as String).input()).input(),
      routingHttpResponseAccessControlAllowOriginHeaderValue: map['routingHttpResponseAccessControlAllowOriginHeaderValue'] == null ? null : ((map['routingHttpResponseAccessControlAllowOriginHeaderValue'] as String).input()).input(),
      routingHttpResponseAccessControlExposeHeadersHeaderValue: map['routingHttpResponseAccessControlExposeHeadersHeaderValue'] == null ? null : ((map['routingHttpResponseAccessControlExposeHeadersHeaderValue'] as String).input()).input(),
      routingHttpResponseAccessControlMaxAgeHeaderValue: map['routingHttpResponseAccessControlMaxAgeHeaderValue'] == null ? null : ((map['routingHttpResponseAccessControlMaxAgeHeaderValue'] as String).input()).input(),
      routingHttpResponseContentSecurityPolicyHeaderValue: map['routingHttpResponseContentSecurityPolicyHeaderValue'] == null ? null : ((map['routingHttpResponseContentSecurityPolicyHeaderValue'] as String).input()).input(),
      routingHttpResponseServerEnabled: map['routingHttpResponseServerEnabled'] == null ? null : ((map['routingHttpResponseServerEnabled'] as bool).input()).input(),
      routingHttpResponseStrictTransportSecurityHeaderValue: map['routingHttpResponseStrictTransportSecurityHeaderValue'] == null ? null : ((map['routingHttpResponseStrictTransportSecurityHeaderValue'] as String).input()).input(),
      routingHttpResponseXContentTypeOptionsHeaderValue: map['routingHttpResponseXContentTypeOptionsHeaderValue'] == null ? null : ((map['routingHttpResponseXContentTypeOptionsHeaderValue'] as String).input()).input(),
      routingHttpResponseXFrameOptionsHeaderValue: map['routingHttpResponseXFrameOptionsHeaderValue'] == null ? null : ((map['routingHttpResponseXFrameOptionsHeaderValue'] as String).input()).input(),
      sslPolicy: map['sslPolicy'] == null ? null : ((map['sslPolicy'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tcpIdleTimeoutSeconds: map['tcpIdleTimeoutSeconds'] == null ? null : ((map['tcpIdleTimeoutSeconds'] as int).input()).input(),
    );
  }
}

