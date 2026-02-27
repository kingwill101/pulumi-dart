// ignore_for_file: unused_element, unnecessary_cast

/// Provides a Load Balancer Listener resource.
///
/// > **Note:** `aws.alb.Listener` is known as `aws.lb.Listener`. The functionality is identical.
///
/// ## Example Usage
///
/// ### Forward Action
///
///
///
/// With weighted target groups:
///
///
///
/// To a NLB:
///
///
///
/// ### Redirect Action
///
///
///
/// ### Fixed-response Action
///
///
///
/// ### Authenticate-cognito Action
///
///
///
/// ### Authenticate-OIDC Action
///
///
///
/// ### JWT Validation Action
///
///
///
/// ### Gateway Load Balancer Listener
///
///
///
/// ### Mutual TLS Authentication
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the load balancer listener.
///
/// Using `pulumi import`, import listeners using their ARN. For example:
///
/// % pulumi import aws_lb_listener.front_end arn:aws:elasticloadbalancing:us-west-2:187416307283:listener/app/front-end-alb/8e4497da625e2d8a/9ab28ade35828f96
class Listener {
  /// Name of the Application-Layer Protocol Negotiation (ALPN) policy. Can be set if `protocol` is `TLS`. Valid values are `HTTP1Only`, `HTTP2Only`, `HTTP2Optional`, `HTTP2Preferred`, and `None`.
  final String? alpnPolicy;

  /// ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS. For adding additional SSL certificates, see the `aws.lb.ListenerCertificate` resource.
  final String? certificateArn;

  /// Configuration block for default actions. See below.
  final List<Map<String, dynamic>>? defaultActions;

  /// The mutual authentication configuration information. See below.
  final Map<String, dynamic>? mutualAuthentication;

  /// Port on which the load balancer is listening. Not valid for Gateway Load Balancers.
  final int? port;

  /// Protocol for connections from clients to the load balancer. For Application Load Balancers, valid values are `HTTP` and `HTTPS`, with a default of `HTTP`. For Network Load Balancers, valid values are `TCP`, `TLS`, `UDP`, and `TCP_UDP`. Not valid to use `UDP` or `TCP_UDP` if dual-stack mode is enabled. Not valid for Gateway Load Balancers.
  final String? protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznMtlsClientcertHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Issuer` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznMtlsClientcertIssuerHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Leaf` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznMtlsClientcertLeafHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Serial-Number` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Subject` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznMtlsClientcertSubjectHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Validity` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznMtlsClientcertValidityHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Tls-Cipher-Suite` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznTlsCipherSuiteHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Tls-Version` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznTlsVersionHeaderName;

  /// Specifies which headers the browser can expose to the requesting client. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `true`.
  final String? routingHttpResponseAccessControlAllowCredentialsHeaderValue;

  /// Specifies which headers can be used during the request. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Accept`, `Accept-Language`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, `Pragma`. Dependent on your use-case other headers can be exposed and then set as a value consult the Access-Control-Allow-Headers documentation.
  final String? routingHttpResponseAccessControlAllowHeadersHeaderValue;

  /// Set which HTTP methods are allowed when accessing the server from a different origin. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `GET`, `HEAD`, `POST`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE` or `PATCH`.
  final String? routingHttpResponseAccessControlAllowMethodsHeaderValue;

  /// Specifies which origins are allowed to access the server. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. A valid value is a URI, eg: `https://example.com`.
  final String? routingHttpResponseAccessControlAllowOriginHeaderValue;

  /// Specifies whether the browser should include credentials such as cookies or authentication when making requests. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, or `Pragma`. Dependent on your use-case other headers can be exposed, consult the Access-Control-Expose-Headers documentation.
  final String? routingHttpResponseAccessControlExposeHeadersHeaderValue;

  /// Specifies how long the results of a preflight request can be cached, in seconds. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are between `0` and `86400`. This value is browser specific, consult the Access-Control-Max-Age documentation.
  final String? routingHttpResponseAccessControlMaxAgeHeaderValue;

  /// Specifies restrictions enforced by the browser to help minimize the risk of certain types of security threats. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Values for this are extensive, and can be impactful when set, consult Content-Security-Policy documentation.
  final String? routingHttpResponseContentSecurityPolicyHeaderValue;

  /// Enables you to allow or remove the HTTP response server header. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `true` or `false`.
  final bool? routingHttpResponseServerEnabled;

  /// Informs browsers that the site should only be accessed using HTTPS, and that any future attempts to access it using HTTP should automatically be converted to HTTPS. Default values are `max-age=31536000; includeSubDomains; preload` consult the Strict-Transport-Security documentation for further details.
  final String? routingHttpResponseStrictTransportSecurityHeaderValue;

  /// Indicates whether the MIME types advertised in the Content-Type headers should be followed and not be changed. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `nosniff`.
  final String? routingHttpResponseXContentTypeOptionsHeaderValue;

  /// Indicates whether the browser is allowed to render a page in a frame, iframe, embed or object. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid values are `DENY`, `SAMEORIGIN`, or `ALLOW-FROM https://example.com`.
  final String? routingHttpResponseXFrameOptionsHeaderValue;

  /// Name of the SSL Policy for the listener. Required if `protocol` is `HTTPS` or `TLS`. Default is `ELBSecurityPolicy-2016-08`.
  final String? sslPolicy;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note::** When a `Name` key is specified in the map, the AWS Console maps the value to the `Name Tag` column value inside the `Listener Rules` table within a specific load balancer listener page. Otherwise, the value resolves to `Default`.
  final Map<String, String>? tags;

  /// TCP idle timeout value in seconds. Can only be set if protocol is `TCP` on Network Load Balancer, or with a Gateway Load Balancer. Not supported for Application Load Balancers. Valid values are between `60` and `6000` inclusive. Default: `350`.
  final int? tcpIdleTimeoutSeconds;

  Listener({
    this.alpnPolicy,
    this.certificateArn,
    this.defaultActions,
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
    final map = <String, dynamic>{};
    final alpnPolicyValue = alpnPolicy;
    if (alpnPolicyValue != null) {
      map['alpnPolicy'] = alpnPolicyValue;
    }
    final certificateArnValue = certificateArn;
    if (certificateArnValue != null) {
      map['certificateArn'] = certificateArnValue;
    }
    final defaultActionsValue = defaultActions;
    if (defaultActionsValue != null) {
      map['defaultActions'] = defaultActionsValue;
    }
    final mutualAuthenticationValue = mutualAuthentication;
    if (mutualAuthenticationValue != null) {
      map['mutualAuthentication'] = mutualAuthenticationValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final routingHttpRequestXAmznMtlsClientcertHeaderNameValue =
        routingHttpRequestXAmznMtlsClientcertHeaderName;
    if (routingHttpRequestXAmznMtlsClientcertHeaderNameValue != null) {
      map['routingHttpRequestXAmznMtlsClientcertHeaderName'] =
          routingHttpRequestXAmznMtlsClientcertHeaderNameValue;
    }
    final routingHttpRequestXAmznMtlsClientcertIssuerHeaderNameValue =
        routingHttpRequestXAmznMtlsClientcertIssuerHeaderName;
    if (routingHttpRequestXAmznMtlsClientcertIssuerHeaderNameValue != null) {
      map['routingHttpRequestXAmznMtlsClientcertIssuerHeaderName'] =
          routingHttpRequestXAmznMtlsClientcertIssuerHeaderNameValue;
    }
    final routingHttpRequestXAmznMtlsClientcertLeafHeaderNameValue =
        routingHttpRequestXAmznMtlsClientcertLeafHeaderName;
    if (routingHttpRequestXAmznMtlsClientcertLeafHeaderNameValue != null) {
      map['routingHttpRequestXAmznMtlsClientcertLeafHeaderName'] =
          routingHttpRequestXAmznMtlsClientcertLeafHeaderNameValue;
    }
    final routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderNameValue =
        routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName;
    if (routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderNameValue !=
        null) {
      map['routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName'] =
          routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderNameValue;
    }
    final routingHttpRequestXAmznMtlsClientcertSubjectHeaderNameValue =
        routingHttpRequestXAmznMtlsClientcertSubjectHeaderName;
    if (routingHttpRequestXAmznMtlsClientcertSubjectHeaderNameValue != null) {
      map['routingHttpRequestXAmznMtlsClientcertSubjectHeaderName'] =
          routingHttpRequestXAmznMtlsClientcertSubjectHeaderNameValue;
    }
    final routingHttpRequestXAmznMtlsClientcertValidityHeaderNameValue =
        routingHttpRequestXAmznMtlsClientcertValidityHeaderName;
    if (routingHttpRequestXAmznMtlsClientcertValidityHeaderNameValue != null) {
      map['routingHttpRequestXAmznMtlsClientcertValidityHeaderName'] =
          routingHttpRequestXAmznMtlsClientcertValidityHeaderNameValue;
    }
    final routingHttpRequestXAmznTlsCipherSuiteHeaderNameValue =
        routingHttpRequestXAmznTlsCipherSuiteHeaderName;
    if (routingHttpRequestXAmznTlsCipherSuiteHeaderNameValue != null) {
      map['routingHttpRequestXAmznTlsCipherSuiteHeaderName'] =
          routingHttpRequestXAmznTlsCipherSuiteHeaderNameValue;
    }
    final routingHttpRequestXAmznTlsVersionHeaderNameValue =
        routingHttpRequestXAmznTlsVersionHeaderName;
    if (routingHttpRequestXAmznTlsVersionHeaderNameValue != null) {
      map['routingHttpRequestXAmznTlsVersionHeaderName'] =
          routingHttpRequestXAmznTlsVersionHeaderNameValue;
    }
    final routingHttpResponseAccessControlAllowCredentialsHeaderValueValue =
        routingHttpResponseAccessControlAllowCredentialsHeaderValue;
    if (routingHttpResponseAccessControlAllowCredentialsHeaderValueValue !=
        null) {
      map['routingHttpResponseAccessControlAllowCredentialsHeaderValue'] =
          routingHttpResponseAccessControlAllowCredentialsHeaderValueValue;
    }
    final routingHttpResponseAccessControlAllowHeadersHeaderValueValue =
        routingHttpResponseAccessControlAllowHeadersHeaderValue;
    if (routingHttpResponseAccessControlAllowHeadersHeaderValueValue != null) {
      map['routingHttpResponseAccessControlAllowHeadersHeaderValue'] =
          routingHttpResponseAccessControlAllowHeadersHeaderValueValue;
    }
    final routingHttpResponseAccessControlAllowMethodsHeaderValueValue =
        routingHttpResponseAccessControlAllowMethodsHeaderValue;
    if (routingHttpResponseAccessControlAllowMethodsHeaderValueValue != null) {
      map['routingHttpResponseAccessControlAllowMethodsHeaderValue'] =
          routingHttpResponseAccessControlAllowMethodsHeaderValueValue;
    }
    final routingHttpResponseAccessControlAllowOriginHeaderValueValue =
        routingHttpResponseAccessControlAllowOriginHeaderValue;
    if (routingHttpResponseAccessControlAllowOriginHeaderValueValue != null) {
      map['routingHttpResponseAccessControlAllowOriginHeaderValue'] =
          routingHttpResponseAccessControlAllowOriginHeaderValueValue;
    }
    final routingHttpResponseAccessControlExposeHeadersHeaderValueValue =
        routingHttpResponseAccessControlExposeHeadersHeaderValue;
    if (routingHttpResponseAccessControlExposeHeadersHeaderValueValue != null) {
      map['routingHttpResponseAccessControlExposeHeadersHeaderValue'] =
          routingHttpResponseAccessControlExposeHeadersHeaderValueValue;
    }
    final routingHttpResponseAccessControlMaxAgeHeaderValueValue =
        routingHttpResponseAccessControlMaxAgeHeaderValue;
    if (routingHttpResponseAccessControlMaxAgeHeaderValueValue != null) {
      map['routingHttpResponseAccessControlMaxAgeHeaderValue'] =
          routingHttpResponseAccessControlMaxAgeHeaderValueValue;
    }
    final routingHttpResponseContentSecurityPolicyHeaderValueValue =
        routingHttpResponseContentSecurityPolicyHeaderValue;
    if (routingHttpResponseContentSecurityPolicyHeaderValueValue != null) {
      map['routingHttpResponseContentSecurityPolicyHeaderValue'] =
          routingHttpResponseContentSecurityPolicyHeaderValueValue;
    }
    final routingHttpResponseServerEnabledValue =
        routingHttpResponseServerEnabled;
    if (routingHttpResponseServerEnabledValue != null) {
      map['routingHttpResponseServerEnabled'] =
          routingHttpResponseServerEnabledValue;
    }
    final routingHttpResponseStrictTransportSecurityHeaderValueValue =
        routingHttpResponseStrictTransportSecurityHeaderValue;
    if (routingHttpResponseStrictTransportSecurityHeaderValueValue != null) {
      map['routingHttpResponseStrictTransportSecurityHeaderValue'] =
          routingHttpResponseStrictTransportSecurityHeaderValueValue;
    }
    final routingHttpResponseXContentTypeOptionsHeaderValueValue =
        routingHttpResponseXContentTypeOptionsHeaderValue;
    if (routingHttpResponseXContentTypeOptionsHeaderValueValue != null) {
      map['routingHttpResponseXContentTypeOptionsHeaderValue'] =
          routingHttpResponseXContentTypeOptionsHeaderValueValue;
    }
    final routingHttpResponseXFrameOptionsHeaderValueValue =
        routingHttpResponseXFrameOptionsHeaderValue;
    if (routingHttpResponseXFrameOptionsHeaderValueValue != null) {
      map['routingHttpResponseXFrameOptionsHeaderValue'] =
          routingHttpResponseXFrameOptionsHeaderValueValue;
    }
    final sslPolicyValue = sslPolicy;
    if (sslPolicyValue != null) {
      map['sslPolicy'] = sslPolicyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tcpIdleTimeoutSecondsValue = tcpIdleTimeoutSeconds;
    if (tcpIdleTimeoutSecondsValue != null) {
      map['tcpIdleTimeoutSeconds'] = tcpIdleTimeoutSecondsValue;
    }
    return map;
  }

  factory Listener.fromMap(Map<String, dynamic> map) {
    return Listener(
      alpnPolicy:
          map['alpnPolicy'] == null ? null : map['alpnPolicy'] as String,
      certificateArn: map['certificateArn'] == null
          ? null
          : map['certificateArn'] as String,
      defaultActions: map['defaultActions'] == null
          ? null
          : (map['defaultActions'] as List).cast<Map<String, dynamic>>(),
      mutualAuthentication: map['mutualAuthentication'] == null
          ? null
          : (map['mutualAuthentication'] as Map).cast<String, dynamic>(),
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routingHttpRequestXAmznMtlsClientcertHeaderName:
          map['routingHttpRequestXAmznMtlsClientcertHeaderName'] == null
              ? null
              : map['routingHttpRequestXAmznMtlsClientcertHeaderName']
                  as String,
      routingHttpRequestXAmznMtlsClientcertIssuerHeaderName:
          map['routingHttpRequestXAmznMtlsClientcertIssuerHeaderName'] == null
              ? null
              : map['routingHttpRequestXAmznMtlsClientcertIssuerHeaderName']
                  as String,
      routingHttpRequestXAmznMtlsClientcertLeafHeaderName:
          map['routingHttpRequestXAmznMtlsClientcertLeafHeaderName'] == null
              ? null
              : map['routingHttpRequestXAmznMtlsClientcertLeafHeaderName']
                  as String,
      routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName:
          map['routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName'] ==
                  null
              ? null
              : map['routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName']
                  as String,
      routingHttpRequestXAmznMtlsClientcertSubjectHeaderName:
          map['routingHttpRequestXAmznMtlsClientcertSubjectHeaderName'] == null
              ? null
              : map['routingHttpRequestXAmznMtlsClientcertSubjectHeaderName']
                  as String,
      routingHttpRequestXAmznMtlsClientcertValidityHeaderName:
          map['routingHttpRequestXAmznMtlsClientcertValidityHeaderName'] == null
              ? null
              : map['routingHttpRequestXAmznMtlsClientcertValidityHeaderName']
                  as String,
      routingHttpRequestXAmznTlsCipherSuiteHeaderName:
          map['routingHttpRequestXAmznTlsCipherSuiteHeaderName'] == null
              ? null
              : map['routingHttpRequestXAmznTlsCipherSuiteHeaderName']
                  as String,
      routingHttpRequestXAmznTlsVersionHeaderName:
          map['routingHttpRequestXAmznTlsVersionHeaderName'] == null
              ? null
              : map['routingHttpRequestXAmznTlsVersionHeaderName'] as String,
      routingHttpResponseAccessControlAllowCredentialsHeaderValue:
          map['routingHttpResponseAccessControlAllowCredentialsHeaderValue'] ==
                  null
              ? null
              : map['routingHttpResponseAccessControlAllowCredentialsHeaderValue']
                  as String,
      routingHttpResponseAccessControlAllowHeadersHeaderValue:
          map['routingHttpResponseAccessControlAllowHeadersHeaderValue'] == null
              ? null
              : map['routingHttpResponseAccessControlAllowHeadersHeaderValue']
                  as String,
      routingHttpResponseAccessControlAllowMethodsHeaderValue:
          map['routingHttpResponseAccessControlAllowMethodsHeaderValue'] == null
              ? null
              : map['routingHttpResponseAccessControlAllowMethodsHeaderValue']
                  as String,
      routingHttpResponseAccessControlAllowOriginHeaderValue:
          map['routingHttpResponseAccessControlAllowOriginHeaderValue'] == null
              ? null
              : map['routingHttpResponseAccessControlAllowOriginHeaderValue']
                  as String,
      routingHttpResponseAccessControlExposeHeadersHeaderValue:
          map['routingHttpResponseAccessControlExposeHeadersHeaderValue'] ==
                  null
              ? null
              : map['routingHttpResponseAccessControlExposeHeadersHeaderValue']
                  as String,
      routingHttpResponseAccessControlMaxAgeHeaderValue:
          map['routingHttpResponseAccessControlMaxAgeHeaderValue'] == null
              ? null
              : map['routingHttpResponseAccessControlMaxAgeHeaderValue']
                  as String,
      routingHttpResponseContentSecurityPolicyHeaderValue:
          map['routingHttpResponseContentSecurityPolicyHeaderValue'] == null
              ? null
              : map['routingHttpResponseContentSecurityPolicyHeaderValue']
                  as String,
      routingHttpResponseServerEnabled:
          map['routingHttpResponseServerEnabled'] == null
              ? null
              : map['routingHttpResponseServerEnabled'] as bool,
      routingHttpResponseStrictTransportSecurityHeaderValue:
          map['routingHttpResponseStrictTransportSecurityHeaderValue'] == null
              ? null
              : map['routingHttpResponseStrictTransportSecurityHeaderValue']
                  as String,
      routingHttpResponseXContentTypeOptionsHeaderValue:
          map['routingHttpResponseXContentTypeOptionsHeaderValue'] == null
              ? null
              : map['routingHttpResponseXContentTypeOptionsHeaderValue']
                  as String,
      routingHttpResponseXFrameOptionsHeaderValue:
          map['routingHttpResponseXFrameOptionsHeaderValue'] == null
              ? null
              : map['routingHttpResponseXFrameOptionsHeaderValue'] as String,
      sslPolicy: map['sslPolicy'] == null ? null : map['sslPolicy'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      tcpIdleTimeoutSeconds: map['tcpIdleTimeoutSeconds'] == null
          ? null
          : map['tcpIdleTimeoutSeconds'] as int,
    );
  }
}
