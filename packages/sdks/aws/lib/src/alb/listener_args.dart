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
  /// &gt; **Note::** When a `Name` key is specified in the map, the AWS Console maps the value to the `Name Tag` column value inside the `Listener Rules` table within a specific load balancer listener page. Otherwise, the value resolves to `Default`.
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
      alpnPolicy: (() { final guardedValue = map['alpnPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultActions: pulumi.Input.fromValue(pulumi.Input.decodeList<ListenerDefaultAction>(map['defaultActions']!, (value) => ListenerDefaultAction.fromMap((value as Map).cast<String, dynamic>()))),
      loadBalancerArn: pulumi.Input.fromValue(map['loadBalancerArn'] as String),
      mutualAuthentication: (() { final guardedValue = map['mutualAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListenerMutualAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpRequestXAmznMtlsClientcertHeaderName: (() { final guardedValue = map['routingHttpRequestXAmznMtlsClientcertHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpRequestXAmznMtlsClientcertIssuerHeaderName: (() { final guardedValue = map['routingHttpRequestXAmznMtlsClientcertIssuerHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpRequestXAmznMtlsClientcertLeafHeaderName: (() { final guardedValue = map['routingHttpRequestXAmznMtlsClientcertLeafHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName: (() { final guardedValue = map['routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpRequestXAmznMtlsClientcertSubjectHeaderName: (() { final guardedValue = map['routingHttpRequestXAmznMtlsClientcertSubjectHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpRequestXAmznMtlsClientcertValidityHeaderName: (() { final guardedValue = map['routingHttpRequestXAmznMtlsClientcertValidityHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpRequestXAmznTlsCipherSuiteHeaderName: (() { final guardedValue = map['routingHttpRequestXAmznTlsCipherSuiteHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpRequestXAmznTlsVersionHeaderName: (() { final guardedValue = map['routingHttpRequestXAmznTlsVersionHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpResponseAccessControlAllowCredentialsHeaderValue: (() { final guardedValue = map['routingHttpResponseAccessControlAllowCredentialsHeaderValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpResponseAccessControlAllowHeadersHeaderValue: (() { final guardedValue = map['routingHttpResponseAccessControlAllowHeadersHeaderValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpResponseAccessControlAllowMethodsHeaderValue: (() { final guardedValue = map['routingHttpResponseAccessControlAllowMethodsHeaderValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpResponseAccessControlAllowOriginHeaderValue: (() { final guardedValue = map['routingHttpResponseAccessControlAllowOriginHeaderValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpResponseAccessControlExposeHeadersHeaderValue: (() { final guardedValue = map['routingHttpResponseAccessControlExposeHeadersHeaderValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpResponseAccessControlMaxAgeHeaderValue: (() { final guardedValue = map['routingHttpResponseAccessControlMaxAgeHeaderValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpResponseContentSecurityPolicyHeaderValue: (() { final guardedValue = map['routingHttpResponseContentSecurityPolicyHeaderValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpResponseServerEnabled: (() { final guardedValue = map['routingHttpResponseServerEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routingHttpResponseStrictTransportSecurityHeaderValue: (() { final guardedValue = map['routingHttpResponseStrictTransportSecurityHeaderValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpResponseXContentTypeOptionsHeaderValue: (() { final guardedValue = map['routingHttpResponseXContentTypeOptionsHeaderValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingHttpResponseXFrameOptionsHeaderValue: (() { final guardedValue = map['routingHttpResponseXFrameOptionsHeaderValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslPolicy: (() { final guardedValue = map['sslPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tcpIdleTimeoutSeconds: (() { final guardedValue = map['tcpIdleTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

