import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_default_action/listener_default_action_lb.dart';
import '../listener_mutual_authentication/listener_mutual_authentication_lb.dart';
import 'listener_lb_args.dart';

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
///
/// Using `pulumi import`, import listeners using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:lb/listener:Listener front_end arn:aws:elasticloadbalancing:us-west-2:187416307283:listener/app/front-end-alb/8e4497da625e2d8a/9ab28ade35828f96
/// ```
class ListenerLb extends pulumi.CustomResource {
  /// Name of the Application-Layer Protocol Negotiation (ALPN) policy. Can be set if `protocol` is `TLS`. Valid values are `HTTP1Only`, `HTTP2Only`, `HTTP2Optional`, `HTTP2Preferred`, and `None`.
  late final pulumi.Output<String?> alpnPolicy;

  /// ARN of the listener.
  late final pulumi.Output<String> arn;

  /// ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS. For adding additional SSL certificates, see the `aws.lb.ListenerCertificate` resource.
  late final pulumi.Output<String?> certificateArn;

  /// Configuration block for default actions. See below.
  late final pulumi.Output<List<ListenerDefaultActionLb>> defaultActions;

  /// ARN of the load balancer.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> loadBalancerArn;

  /// The mutual authentication configuration information. See below.
  late final pulumi.Output<ListenerMutualAuthenticationLb> mutualAuthentication;

  /// Port on which the load balancer is listening. Not valid for Gateway Load Balancers.
  late final pulumi.Output<int?> port;

  /// Protocol for connections from clients to the load balancer. For Application Load Balancers, valid values are `HTTP` and `HTTPS`, with a default of `HTTP`. For Network Load Balancers, valid values are `TCP`, `TLS`, `UDP`, `TCP_UDP`, `QUIC`, and `TCP_QUIC`. Not valid to use `UDP` or `TCP_UDP` if dual-stack mode is enabled. Not valid to use `QUIC` or `TCP_QUIC` if security groups are configured or dual-stack mode is enabled. Not valid for Gateway Load Balancers.
  late final pulumi.Output<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final pulumi.Output<String>
      routingHttpRequestXAmznMtlsClientcertHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Issuer` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final pulumi.Output<String>
      routingHttpRequestXAmznMtlsClientcertIssuerHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Leaf` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final pulumi.Output<String>
      routingHttpRequestXAmznMtlsClientcertLeafHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Serial-Number` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final pulumi.Output<String>
      routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Subject` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final pulumi.Output<String>
      routingHttpRequestXAmznMtlsClientcertSubjectHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Validity` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final pulumi.Output<String>
      routingHttpRequestXAmznMtlsClientcertValidityHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Tls-Cipher-Suite` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final pulumi.Output<String>
      routingHttpRequestXAmznTlsCipherSuiteHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Tls-Version` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final pulumi.Output<String> routingHttpRequestXAmznTlsVersionHeaderName;

  /// Specifies which headers the browser can expose to the requesting client. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `true`.
  late final pulumi.Output<String>
      routingHttpResponseAccessControlAllowCredentialsHeaderValue;

  /// Specifies which headers can be used during the request. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Accept`, `Accept-Language`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, `Pragma`. Dependent on your use-case other headers can be exposed and then set as a value consult the Access-Control-Allow-Headers documentation.
  late final pulumi.Output<String>
      routingHttpResponseAccessControlAllowHeadersHeaderValue;

  /// Set which HTTP methods are allowed when accessing the server from a different origin. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `GET`, `HEAD`, `POST`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE` or `PATCH`.
  late final pulumi.Output<String>
      routingHttpResponseAccessControlAllowMethodsHeaderValue;

  /// Specifies which origins are allowed to access the server. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. A valid value is a URI, eg: `https://example.com`.
  late final pulumi.Output<String>
      routingHttpResponseAccessControlAllowOriginHeaderValue;

  /// Specifies whether the browser should include credentials such as cookies or authentication when making requests. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, or `Pragma`. Dependent on your use-case other headers can be exposed, consult the Access-Control-Expose-Headers documentation.
  late final pulumi.Output<String>
      routingHttpResponseAccessControlExposeHeadersHeaderValue;

  /// Specifies how long the results of a preflight request can be cached, in seconds. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are between `0` and `86400`. This value is browser specific, consult the Access-Control-Max-Age documentation.
  late final pulumi.Output<String>
      routingHttpResponseAccessControlMaxAgeHeaderValue;

  /// Specifies restrictions enforced by the browser to help minimize the risk of certain types of security threats. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Values for this are extensive, and can be impactful when set, consult Content-Security-Policy documentation.
  late final pulumi.Output<String>
      routingHttpResponseContentSecurityPolicyHeaderValue;

  /// Enables you to allow or remove the HTTP response server header. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `true` or `false`.
  late final pulumi.Output<bool> routingHttpResponseServerEnabled;

  /// Informs browsers that the site should only be accessed using HTTPS, and that any future attempts to access it using HTTP should automatically be converted to HTTPS. Default values are `max-age=31536000; includeSubDomains; preload` consult the Strict-Transport-Security documentation for further details.
  late final pulumi.Output<String>
      routingHttpResponseStrictTransportSecurityHeaderValue;

  /// Indicates whether the MIME types advertised in the Content-Type headers should be followed and not be changed. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `nosniff`.
  late final pulumi.Output<String>
      routingHttpResponseXContentTypeOptionsHeaderValue;

  /// Indicates whether the browser is allowed to render a page in a frame, iframe, embed or object. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid values are `DENY`, `SAMEORIGIN`, or `ALLOW-FROM https://example.com`.
  late final pulumi.Output<String> routingHttpResponseXFrameOptionsHeaderValue;

  /// Name of the SSL Policy for the listener. Required if `protocol` is `HTTPS` or `TLS`. Default is `ELBSecurityPolicy-2016-08`.
  late final pulumi.Output<String> sslPolicy;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note::** When a `Name` key is specified in the map, the AWS Console maps the value to the `Name Tag` column value inside the `Listener Rules` table within a specific load balancer listener page. Otherwise, the value resolves to `Default`.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// TCP idle timeout value in seconds. Can only be set if protocol is `TCP` on Network Load Balancer, or with a Gateway Load Balancer. Not supported for Application Load Balancers. Valid values are between `60` and `6000` inclusive. Default: `350`.
  late final pulumi.Output<int> tcpIdleTimeoutSeconds;

  ListenerLb(
    String name, {
    ListenerLbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lb/listener:Listener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alpnPolicy = registerOutput<String?>('alpnPolicy');
    this.arn = registerOutput<String>('arn');
    this.certificateArn = registerOutput<String?>('certificateArn');
    this.defaultActions =
        registerOutput<List<ListenerDefaultActionLb>>('defaultActions');
    this.loadBalancerArn = registerOutput<String>('loadBalancerArn');
    this.mutualAuthentication =
        registerOutput<ListenerMutualAuthenticationLb>('mutualAuthentication');
    this.port = registerOutput<int?>('port');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
    this.routingHttpRequestXAmznMtlsClientcertHeaderName =
        registerOutput<String>(
            'routingHttpRequestXAmznMtlsClientcertHeaderName');
    this.routingHttpRequestXAmznMtlsClientcertIssuerHeaderName =
        registerOutput<String>(
            'routingHttpRequestXAmznMtlsClientcertIssuerHeaderName');
    this.routingHttpRequestXAmznMtlsClientcertLeafHeaderName =
        registerOutput<String>(
            'routingHttpRequestXAmznMtlsClientcertLeafHeaderName');
    this.routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName =
        registerOutput<String>(
            'routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName');
    this.routingHttpRequestXAmznMtlsClientcertSubjectHeaderName =
        registerOutput<String>(
            'routingHttpRequestXAmznMtlsClientcertSubjectHeaderName');
    this.routingHttpRequestXAmznMtlsClientcertValidityHeaderName =
        registerOutput<String>(
            'routingHttpRequestXAmznMtlsClientcertValidityHeaderName');
    this.routingHttpRequestXAmznTlsCipherSuiteHeaderName =
        registerOutput<String>(
            'routingHttpRequestXAmznTlsCipherSuiteHeaderName');
    this.routingHttpRequestXAmznTlsVersionHeaderName =
        registerOutput<String>('routingHttpRequestXAmznTlsVersionHeaderName');
    this.routingHttpResponseAccessControlAllowCredentialsHeaderValue =
        registerOutput<String>(
            'routingHttpResponseAccessControlAllowCredentialsHeaderValue');
    this.routingHttpResponseAccessControlAllowHeadersHeaderValue =
        registerOutput<String>(
            'routingHttpResponseAccessControlAllowHeadersHeaderValue');
    this.routingHttpResponseAccessControlAllowMethodsHeaderValue =
        registerOutput<String>(
            'routingHttpResponseAccessControlAllowMethodsHeaderValue');
    this.routingHttpResponseAccessControlAllowOriginHeaderValue =
        registerOutput<String>(
            'routingHttpResponseAccessControlAllowOriginHeaderValue');
    this.routingHttpResponseAccessControlExposeHeadersHeaderValue =
        registerOutput<String>(
            'routingHttpResponseAccessControlExposeHeadersHeaderValue');
    this.routingHttpResponseAccessControlMaxAgeHeaderValue =
        registerOutput<String>(
            'routingHttpResponseAccessControlMaxAgeHeaderValue');
    this.routingHttpResponseContentSecurityPolicyHeaderValue =
        registerOutput<String>(
            'routingHttpResponseContentSecurityPolicyHeaderValue');
    this.routingHttpResponseServerEnabled =
        registerOutput<bool>('routingHttpResponseServerEnabled');
    this.routingHttpResponseStrictTransportSecurityHeaderValue =
        registerOutput<String>(
            'routingHttpResponseStrictTransportSecurityHeaderValue');
    this.routingHttpResponseXContentTypeOptionsHeaderValue =
        registerOutput<String>(
            'routingHttpResponseXContentTypeOptionsHeaderValue');
    this.routingHttpResponseXFrameOptionsHeaderValue =
        registerOutput<String>('routingHttpResponseXFrameOptionsHeaderValue');
    this.sslPolicy = registerOutput<String>('sslPolicy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tcpIdleTimeoutSeconds = registerOutput<int>('tcpIdleTimeoutSeconds');
  }
}
