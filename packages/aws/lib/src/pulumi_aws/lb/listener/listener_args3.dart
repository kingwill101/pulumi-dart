// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_default_action/listener_default_action2.dart';
import '../listener_mutual_authentication/listener_mutual_authentication2.dart';

/// The set of arguments for Listener.
class ListenerArgs3 {
  /// Name of the Application-Layer Protocol Negotiation (ALPN) policy. Can be set if `protocol` is `TLS`. Valid values are `HTTP1Only`, `HTTP2Only`, `HTTP2Optional`, `HTTP2Preferred`, and `None`.
  final Input<String>? alpnPolicy;

  /// ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS. For adding additional SSL certificates, see the `aws.lb.ListenerCertificate` resource.
  final Input<String>? certificateArn;

  /// Configuration block for default actions. See below.
  final Input<List<ListenerDefaultAction2>> defaultActions;

  /// ARN of the load balancer.
  ///
  /// The following arguments are optional:
  final Input<String> loadBalancerArn;

  /// The mutual authentication configuration information. See below.
  final Input<ListenerMutualAuthentication2>? mutualAuthentication;

  /// Port on which the load balancer is listening. Not valid for Gateway Load Balancers.
  final Input<int>? port;

  /// Protocol for connections from clients to the load balancer. For Application Load Balancers, valid values are `HTTP` and `HTTPS`, with a default of `HTTP`. For Network Load Balancers, valid values are `TCP`, `TLS`, `UDP`, `TCP_UDP`, `QUIC`, and `TCP_QUIC`. Not valid to use `UDP` or `TCP_UDP` if dual-stack mode is enabled. Not valid to use `QUIC` or `TCP_QUIC` if security groups are configured or dual-stack mode is enabled. Not valid for Gateway Load Balancers.
  final Input<String>? protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final Input<String>? routingHttpRequestXAmznMtlsClientcertHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Issuer` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final Input<String>? routingHttpRequestXAmznMtlsClientcertIssuerHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Leaf` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final Input<String>? routingHttpRequestXAmznMtlsClientcertLeafHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Serial-Number` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final Input<String>?
      routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Subject` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final Input<String>? routingHttpRequestXAmznMtlsClientcertSubjectHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Validity` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final Input<String>? routingHttpRequestXAmznMtlsClientcertValidityHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Tls-Cipher-Suite` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final Input<String>? routingHttpRequestXAmznTlsCipherSuiteHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Tls-Version` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final Input<String>? routingHttpRequestXAmznTlsVersionHeaderName;

  /// Specifies which headers the browser can expose to the requesting client. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `true`.
  final Input<String>?
      routingHttpResponseAccessControlAllowCredentialsHeaderValue;

  /// Specifies which headers can be used during the request. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Accept`, `Accept-Language`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, `Pragma`. Dependent on your use-case other headers can be exposed and then set as a value consult the Access-Control-Allow-Headers documentation.
  final Input<String>? routingHttpResponseAccessControlAllowHeadersHeaderValue;

  /// Set which HTTP methods are allowed when accessing the server from a different origin. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `GET`, `HEAD`, `POST`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE` or `PATCH`.
  final Input<String>? routingHttpResponseAccessControlAllowMethodsHeaderValue;

  /// Specifies which origins are allowed to access the server. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. A valid value is a URI, eg: `https://example.com`.
  final Input<String>? routingHttpResponseAccessControlAllowOriginHeaderValue;

  /// Specifies whether the browser should include credentials such as cookies or authentication when making requests. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, or `Pragma`. Dependent on your use-case other headers can be exposed, consult the Access-Control-Expose-Headers documentation.
  final Input<String>? routingHttpResponseAccessControlExposeHeadersHeaderValue;

  /// Specifies how long the results of a preflight request can be cached, in seconds. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are between `0` and `86400`. This value is browser specific, consult the Access-Control-Max-Age documentation.
  final Input<String>? routingHttpResponseAccessControlMaxAgeHeaderValue;

  /// Specifies restrictions enforced by the browser to help minimize the risk of certain types of security threats. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Values for this are extensive, and can be impactful when set, consult Content-Security-Policy documentation.
  final Input<String>? routingHttpResponseContentSecurityPolicyHeaderValue;

  /// Enables you to allow or remove the HTTP response server header. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `true` or `false`.
  final Input<bool>? routingHttpResponseServerEnabled;

  /// Informs browsers that the site should only be accessed using HTTPS, and that any future attempts to access it using HTTP should automatically be converted to HTTPS. Default values are `max-age=31536000; includeSubDomains; preload` consult the Strict-Transport-Security documentation for further details.
  final Input<String>? routingHttpResponseStrictTransportSecurityHeaderValue;

  /// Indicates whether the MIME types advertised in the Content-Type headers should be followed and not be changed. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `nosniff`.
  final Input<String>? routingHttpResponseXContentTypeOptionsHeaderValue;

  /// Indicates whether the browser is allowed to render a page in a frame, iframe, embed or object. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid values are `DENY`, `SAMEORIGIN`, or `ALLOW-FROM https://example.com`.
  final Input<String>? routingHttpResponseXFrameOptionsHeaderValue;

  /// Name of the SSL Policy for the listener. Required if `protocol` is `HTTPS` or `TLS`. Default is `ELBSecurityPolicy-2016-08`.
  final Input<String>? sslPolicy;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note::** When a `Name` key is specified in the map, the AWS Console maps the value to the `Name Tag` column value inside the `Listener Rules` table within a specific load balancer listener page. Otherwise, the value resolves to `Default`.
  final Input<Map<String, String>>? tags;

  /// TCP idle timeout value in seconds. Can only be set if protocol is `TCP` on Network Load Balancer, or with a Gateway Load Balancer. Not supported for Application Load Balancers. Valid values are between `60` and `6000` inclusive. Default: `350`.
  final Input<int>? tcpIdleTimeoutSeconds;

  ListenerArgs3({
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
    final map = <String, dynamic>{};
    final alpnPolicyValue = alpnPolicy;
    if (alpnPolicyValue != null) {
      map['alpnPolicy'] = alpnPolicyValue;
    }
    final certificateArnValue = certificateArn;
    if (certificateArnValue != null) {
      map['certificateArn'] = certificateArnValue;
    }
    map['defaultActions'] = Input.mapInputValue<List<ListenerDefaultAction2>,
            List<Map<String, dynamic>>>(
        defaultActions,
        (value) =>
            Input.encodeList<ListenerDefaultAction2, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['loadBalancerArn'] = loadBalancerArn;
    final mutualAuthenticationValue = mutualAuthentication;
    if (mutualAuthenticationValue != null) {
      map['mutualAuthentication'] = Input.mapOptionalInputValue<
              ListenerMutualAuthentication2, Map<String, dynamic>>(
          mutualAuthenticationValue, (value) => value.toMap());
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

  factory ListenerArgs3.fromMap(Map<String, dynamic> map) {
    return ListenerArgs3(
      alpnPolicy: Input.asOptionalInput<String>(map['alpnPolicy']),
      certificateArn: Input.asOptionalInput<String>(map['certificateArn']),
      defaultActions:
          Input.asInput<List<ListenerDefaultAction2>>(map['defaultActions']),
      loadBalancerArn: Input.asInput<String>(map['loadBalancerArn']),
      mutualAuthentication:
          Input.asOptionalInput<ListenerMutualAuthentication2>(
              map['mutualAuthentication']),
      port: Input.asOptionalInput<int>(map['port']),
      protocol: Input.asOptionalInput<String>(map['protocol']),
      region: Input.asOptionalInput<String>(map['region']),
      routingHttpRequestXAmznMtlsClientcertHeaderName:
          Input.asOptionalInput<String>(
              map['routingHttpRequestXAmznMtlsClientcertHeaderName']),
      routingHttpRequestXAmznMtlsClientcertIssuerHeaderName:
          Input.asOptionalInput<String>(
              map['routingHttpRequestXAmznMtlsClientcertIssuerHeaderName']),
      routingHttpRequestXAmznMtlsClientcertLeafHeaderName:
          Input.asOptionalInput<String>(
              map['routingHttpRequestXAmznMtlsClientcertLeafHeaderName']),
      routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName:
          Input.asOptionalInput<String>(map[
              'routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName']),
      routingHttpRequestXAmznMtlsClientcertSubjectHeaderName:
          Input.asOptionalInput<String>(
              map['routingHttpRequestXAmznMtlsClientcertSubjectHeaderName']),
      routingHttpRequestXAmznMtlsClientcertValidityHeaderName:
          Input.asOptionalInput<String>(
              map['routingHttpRequestXAmznMtlsClientcertValidityHeaderName']),
      routingHttpRequestXAmznTlsCipherSuiteHeaderName:
          Input.asOptionalInput<String>(
              map['routingHttpRequestXAmznTlsCipherSuiteHeaderName']),
      routingHttpRequestXAmznTlsVersionHeaderName:
          Input.asOptionalInput<String>(
              map['routingHttpRequestXAmznTlsVersionHeaderName']),
      routingHttpResponseAccessControlAllowCredentialsHeaderValue:
          Input.asOptionalInput<String>(map[
              'routingHttpResponseAccessControlAllowCredentialsHeaderValue']),
      routingHttpResponseAccessControlAllowHeadersHeaderValue:
          Input.asOptionalInput<String>(
              map['routingHttpResponseAccessControlAllowHeadersHeaderValue']),
      routingHttpResponseAccessControlAllowMethodsHeaderValue:
          Input.asOptionalInput<String>(
              map['routingHttpResponseAccessControlAllowMethodsHeaderValue']),
      routingHttpResponseAccessControlAllowOriginHeaderValue:
          Input.asOptionalInput<String>(
              map['routingHttpResponseAccessControlAllowOriginHeaderValue']),
      routingHttpResponseAccessControlExposeHeadersHeaderValue:
          Input.asOptionalInput<String>(
              map['routingHttpResponseAccessControlExposeHeadersHeaderValue']),
      routingHttpResponseAccessControlMaxAgeHeaderValue:
          Input.asOptionalInput<String>(
              map['routingHttpResponseAccessControlMaxAgeHeaderValue']),
      routingHttpResponseContentSecurityPolicyHeaderValue:
          Input.asOptionalInput<String>(
              map['routingHttpResponseContentSecurityPolicyHeaderValue']),
      routingHttpResponseServerEnabled:
          Input.asOptionalInput<bool>(map['routingHttpResponseServerEnabled']),
      routingHttpResponseStrictTransportSecurityHeaderValue:
          Input.asOptionalInput<String>(
              map['routingHttpResponseStrictTransportSecurityHeaderValue']),
      routingHttpResponseXContentTypeOptionsHeaderValue:
          Input.asOptionalInput<String>(
              map['routingHttpResponseXContentTypeOptionsHeaderValue']),
      routingHttpResponseXFrameOptionsHeaderValue:
          Input.asOptionalInput<String>(
              map['routingHttpResponseXFrameOptionsHeaderValue']),
      sslPolicy: Input.asOptionalInput<String>(map['sslPolicy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tcpIdleTimeoutSeconds:
          Input.asOptionalInput<int>(map['tcpIdleTimeoutSeconds']),
    );
  }
}
