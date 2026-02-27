import 'package:pulumi/pulumi.dart';
import '../integration_tls_config/integration_tls_config.dart';
import 'integration_args.dart';

/// Provides an HTTP Method Integration for an API Gateway Integration.
///
/// ## Example Usage
///
///
///
/// ## Lambda integration
///
///
///
/// ## Lambda integration with response streaming
///
/// All other resources and data sources are the same as in the previous example; only the integration configuration differs.
/// Note that the `timeout` of the `aws.lambda.Function` may need to be adjusted.
///
///
///
/// ## VPC Link
///
///
///
/// ## VPC Link V2 with Application Load Balancer
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.Integration` using `REST-API-ID/RESOURCE-ID/HTTP-METHOD`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/integration:Integration example 12345abcde/67890fghij/GET
/// ```
class Integration extends CustomResource {
  /// List of cache key parameters for the integration.
  late final Output<List<String>?> cacheKeyParameters;

  /// Integration's cache namespace.
  late final Output<String> cacheNamespace;

  /// ID of the VpcLink used for the integration. **Required** if `connection_type` is `VPC_LINK`
  late final Output<String?> connectionId;

  /// Integration input's [connectionType](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/#connectionType). Valid values are `INTERNET` (default for connections through the public routable internet), and `VPC_LINK` (for private connections between API Gateway and a network load balancer in a VPC).
  late final Output<String?> connectionType;

  /// How to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the passthroughBehaviors is configured to support payload pass-through.
  late final Output<String?> contentHandling;

  /// Credentials required for the integration. For `AWS` integrations, 2 options are available. To specify an IAM Role for Amazon API Gateway to assume, use the role's ARN. To require that the caller's identity be passed through from the request, specify the string `arn:aws:iam::\*:user/\*`.
  late final Output<String?> credentials;

  /// HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTION`, `ANY`)
  /// when calling the associated resource.
  late final Output<String> httpMethod;

  /// Integration HTTP method
  /// (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONs`, `ANY`, `PATCH`) specifying how API Gateway will interact with the back end.
  /// **Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
  /// Not all methods are compatible with all `AWS` integrations.
  /// e.g., Lambda function [can only be invoked](https://github.com/awslabs/aws-apigateway-importer/issues/9#issuecomment-129651005) via `POST`.
  late final Output<String?> integrationHttpMethod;

  /// The ALB or NLB ARN to send the request to. Used for private integrations with VPC Link V2. When using VPC Link V2, this parameter specifies the load balancer ARN, while `uri` is used to set the Host header.
  late final Output<String?> integrationTarget;

  /// Integration passthrough behavior (`WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`).  **Required** if `request_templates` is used.
  late final Output<String> passthroughBehavior;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of request query string parameters and headers that should be passed to the backend responder.
  /// For example: `request_parameters = { "integration.request.header.X-Some-Other-Header" = "method.request.header.X-Some-Header" }`
  late final Output<Map<String, String>?> requestParameters;

  /// Map of the integration's request templates.
  late final Output<Map<String, String>?> requestTemplates;

  /// API resource ID.
  late final Output<String> resourceId;

  /// Specifies the response transfer mode of the integration. Valid values are `BUFFERED` and `STREAM`. Default to `BUFFERED`.
  /// Once set, setting the value to `BUFFERED` requires explicitly specifying `BUFFERED`, rather than removing this argument.
  late final Output<String> responseTransferMode;

  /// ID of the associated REST API.
  late final Output<String> restApi;

  /// Custom timeout in milliseconds. The minimum value is 50. The maximum value is 300,000 when `response_transfer_mode` is `BUFFERED`, and 900,000 when `response_transfer_mode` is `STREAM`. The default value is 29,000 milliseconds. You need to raise a [Service Quota Ticket](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) to increase time beyond 29,000 milliseconds for `BUFFERED` mode.
  late final Output<int?> timeoutMilliseconds;

  /// TLS configuration. See below.
  late final Output<IntegrationTlsConfig?> tlsConfig;

  /// Integration input's [type](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/). Valid values are `HTTP` (for HTTP backends), `MOCK` (not calling any real backend), `AWS` (for AWS services), `AWS_PROXY` (for Lambda proxy integration) and `HTTP_PROXY` (for HTTP proxy integration). An `HTTP` or `HTTP_PROXY` integration with a `connection_type` of `VPC_LINK` is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.
  late final Output<String> type;

  /// Input's URI. **Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
  /// For HTTP integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the RFC-3986 specification . For AWS integrations, the URI should be of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}`. `region`, `subdomain` and `service` are used to determine the right endpoint.
  /// e.g., `arn:aws:apigateway:eu-west-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-1:123456789012:function:my-func/invocations`. For private integrations, the URI parameter is not used for routing requests to your endpoint, but is used for setting the Host header and for certificate validation.
  late final Output<String?> uri;

  Integration(
    String name, {
    IntegrationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/integration:Integration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cacheKeyParameters =
        registerOutput<List<String>?>('cacheKeyParameters');
    this.cacheNamespace = registerOutput<String>('cacheNamespace');
    this.connectionId = registerOutput<String?>('connectionId');
    this.connectionType = registerOutput<String?>('connectionType');
    this.contentHandling = registerOutput<String?>('contentHandling');
    this.credentials = registerOutput<String?>('credentials');
    this.httpMethod = registerOutput<String>('httpMethod');
    this.integrationHttpMethod =
        registerOutput<String?>('integrationHttpMethod');
    this.integrationTarget = registerOutput<String?>('integrationTarget');
    this.passthroughBehavior = registerOutput<String>('passthroughBehavior');
    this.region = registerOutput<String>('region');
    this.requestParameters =
        registerOutput<Map<String, String>?>('requestParameters');
    this.requestTemplates =
        registerOutput<Map<String, String>?>('requestTemplates');
    this.resourceId = registerOutput<String>('resourceId');
    this.responseTransferMode = registerOutput<String>('responseTransferMode');
    this.restApi = registerOutput<String>('restApi');
    this.timeoutMilliseconds = registerOutput<int?>('timeoutMilliseconds');
    this.tlsConfig = registerOutput<IntegrationTlsConfig?>('tlsConfig');
    this.type = registerOutput<String>('type');
    this.uri = registerOutput<String?>('uri');
  }
}
