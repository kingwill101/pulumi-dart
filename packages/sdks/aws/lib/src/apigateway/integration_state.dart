// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_tls_config.dart';

/// Input properties used for looking up and filtering Integration resources.
class IntegrationState {
  /// List of cache key parameters for the integration.
  final pulumi.Input<List<String>>? cacheKeyParameters;
  /// Integration's cache namespace.
  final pulumi.Input<String>? cacheNamespace;
  /// ID of the VpcLink used for the integration. **Required** if `connection_type` is `VPC_LINK`
  final pulumi.Input<String>? connectionId;
  /// Integration input's [connectionType](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/#connectionType). Valid values are `INTERNET` (default for connections through the public routable internet), and `VPC_LINK` (for private connections between API Gateway and a network load balancer in a VPC).
  final pulumi.Input<String>? connectionType;
  /// How to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the passthroughBehaviors is configured to support payload pass-through.
  final pulumi.Input<String>? contentHandling;
  /// Credentials required for the integration. For `AWS` integrations, 2 options are available. To specify an IAM Role for Amazon API Gateway to assume, use the role's ARN. To require that the caller's identity be passed through from the request, specify the string `arn:aws:iam::\*:user/\*`.
  final pulumi.Input<String>? credentials;
  /// HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTION`, `ANY`)
  /// when calling the associated resource.
  final pulumi.Input<String>? httpMethod;
  /// Integration HTTP method
  /// (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONs`, `ANY`, `PATCH`) specifying how API Gateway will interact with the back end.
  /// **Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
  /// Not all methods are compatible with all `AWS` integrations.
  /// e.g., Lambda function [can only be invoked](https://github.com/awslabs/aws-apigateway-importer/issues/9#issuecomment-129651005) via `POST`.
  final pulumi.Input<String>? integrationHttpMethod;
  /// The ALB or NLB ARN to send the request to. Used for private integrations with VPC Link V2. When using VPC Link V2, this parameter specifies the load balancer ARN, while `uri` is used to set the Host header.
  final pulumi.Input<String>? integrationTarget;
  /// Integration passthrough behavior (`WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`).  **Required** if `request_templates` is used.
  final pulumi.Input<String>? passthroughBehavior;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of request query string parameters and headers that should be passed to the backend responder.
  /// For example: `request_parameters = { "integration.request.header.X-Some-Other-Header" = "method.request.header.X-Some-Header" }`
  final pulumi.Input<Map<String, String>>? requestParameters;
  /// Map of the integration's request templates.
  final pulumi.Input<Map<String, String>>? requestTemplates;
  /// API resource ID.
  final pulumi.Input<String>? resourceId;
  /// Specifies the response transfer mode of the integration. Valid values are `BUFFERED` and `STREAM`. Default to `BUFFERED`.
  /// Once set, setting the value to `BUFFERED` requires explicitly specifying `BUFFERED`, rather than removing this argument.
  final pulumi.Input<String>? responseTransferMode;
  /// ID of the associated REST API.
  final pulumi.Input<String>? restApi;
  /// Custom timeout in milliseconds. The minimum value is 50. The maximum value is 300,000 when `response_transfer_mode` is `BUFFERED`, and 900,000 when `response_transfer_mode` is `STREAM`. The default value is 29,000 milliseconds. You need to raise a [Service Quota Ticket](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) to increase time beyond 29,000 milliseconds for `BUFFERED` mode.
  final pulumi.Input<int>? timeoutMilliseconds;
  /// TLS configuration. See below.
  final pulumi.Input<IntegrationTlsConfig>? tlsConfig;
  /// Integration input's [type](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/). Valid values are `HTTP` (for HTTP backends), `MOCK` (not calling any real backend), `AWS` (for AWS services), `AWS_PROXY` (for Lambda proxy integration) and `HTTP_PROXY` (for HTTP proxy integration). An `HTTP` or `HTTP_PROXY` integration with a `connection_type` of `VPC_LINK` is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.
  final pulumi.Input<String>? type;
  /// Input's URI. **Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
  /// For HTTP integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the RFC-3986 specification . For AWS integrations, the URI should be of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}`. `region`, `subdomain` and `service` are used to determine the right endpoint.
  /// e.g., `arn:aws:apigateway:eu-west-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-1:123456789012:function:my-func/invocations`. For private integrations, the URI parameter is not used for routing requests to your endpoint, but is used for setting the Host header and for certificate validation.
  final pulumi.Input<String>? uri;

  /// Creates a new [IntegrationState].
  /// [cacheKeyParameters] List of cache key parameters for the integration.
  /// [cacheNamespace] Integration's cache namespace.
  /// [connectionId] ID of the VpcLink used for the integration. **Required** if `connection_type` is `VPC_LINK`
  /// [connectionType] Integration input's [connectionType](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/#connectionType). Valid values are `INTERNET` (default for connections through the public routable internet), and `VPC_LINK` (for private connections between API Gateway and a network load balancer in a VPC).
  /// [contentHandling] How to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the passthroughBehaviors is configured to support payload pass-through.
  /// [credentials] Credentials required for the integration. For `AWS` integrations, 2 options are available. To specify an IAM Role for Amazon API Gateway to assume, use the role's ARN. To require that the caller's identity be passed through from the request, specify the string `arn:aws:iam::\*:user/\*`.
  /// [httpMethod] HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTION`, `ANY`)
  /// [integrationHttpMethod] Integration HTTP method
  /// [integrationTarget] The ALB or NLB ARN to send the request to. Used for private integrations with VPC Link V2. When using VPC Link V2, this parameter specifies the load balancer ARN, while `uri` is used to set the Host header.
  /// [passthroughBehavior] Integration passthrough behavior (`WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`).  **Required** if `request_templates` is used.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestParameters] Map of request query string parameters and headers that should be passed to the backend responder.
  /// [requestTemplates] Map of the integration's request templates.
  /// [resourceId] API resource ID.
  /// [responseTransferMode] Specifies the response transfer mode of the integration. Valid values are `BUFFERED` and `STREAM`. Default to `BUFFERED`.
  /// [restApi] ID of the associated REST API.
  /// [timeoutMilliseconds] Custom timeout in milliseconds. The minimum value is 50. The maximum value is 300,000 when `response_transfer_mode` is `BUFFERED`, and 900,000 when `response_transfer_mode` is `STREAM`. The default value is 29,000 milliseconds. You need to raise a [Service Quota Ticket](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) to increase time beyond 29,000 milliseconds for `BUFFERED` mode.
  /// [tlsConfig] TLS configuration. See below.
  /// [type] Integration input's [type](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/). Valid values are `HTTP` (for HTTP backends), `MOCK` (not calling any real backend), `AWS` (for AWS services), `AWS_PROXY` (for Lambda proxy integration) and `HTTP_PROXY` (for HTTP proxy integration). An `HTTP` or `HTTP_PROXY` integration with a `connection_type` of `VPC_LINK` is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.
  /// [uri] Input's URI. **Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
  IntegrationState({
    this.cacheKeyParameters,
    this.cacheNamespace,
    this.connectionId,
    this.connectionType,
    this.contentHandling,
    this.credentials,
    this.httpMethod,
    this.integrationHttpMethod,
    this.integrationTarget,
    this.passthroughBehavior,
    this.region,
    this.requestParameters,
    this.requestTemplates,
    this.resourceId,
    this.responseTransferMode,
    this.restApi,
    this.timeoutMilliseconds,
    this.tlsConfig,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheKeyParameters': ?cacheKeyParameters,
      'cacheNamespace': ?cacheNamespace,
      'connectionId': ?connectionId,
      'connectionType': ?connectionType,
      'contentHandling': ?contentHandling,
      'credentials': ?credentials,
      'httpMethod': ?httpMethod,
      'integrationHttpMethod': ?integrationHttpMethod,
      'integrationTarget': ?integrationTarget,
      'passthroughBehavior': ?passthroughBehavior,
      'region': ?region,
      'requestParameters': ?requestParameters,
      'requestTemplates': ?requestTemplates,
      'resourceId': ?resourceId,
      'responseTransferMode': ?responseTransferMode,
      'restApi': ?restApi,
      'timeoutMilliseconds': ?timeoutMilliseconds,
      'tlsConfig': ?pulumi.Input.mapOptionalInputValue<IntegrationTlsConfig, Map<String, dynamic>>(tlsConfig, (value) => value.toMap()),
      'type': ?type,
      'uri': ?uri,
    };
  }

  factory IntegrationState.fromMap(Map<String, dynamic> map) {
    return IntegrationState(
      cacheKeyParameters: map['cacheKeyParameters'] == null ? null : (((map['cacheKeyParameters'] as List).cast<String>()).input()).input(),
      cacheNamespace: map['cacheNamespace'] == null ? null : ((map['cacheNamespace'] as String).input()).input(),
      connectionId: map['connectionId'] == null ? null : ((map['connectionId'] as String).input()).input(),
      connectionType: map['connectionType'] == null ? null : ((map['connectionType'] as String).input()).input(),
      contentHandling: map['contentHandling'] == null ? null : ((map['contentHandling'] as String).input()).input(),
      credentials: map['credentials'] == null ? null : ((map['credentials'] as String).input()).input(),
      httpMethod: map['httpMethod'] == null ? null : ((map['httpMethod'] as String).input()).input(),
      integrationHttpMethod: map['integrationHttpMethod'] == null ? null : ((map['integrationHttpMethod'] as String).input()).input(),
      integrationTarget: map['integrationTarget'] == null ? null : ((map['integrationTarget'] as String).input()).input(),
      passthroughBehavior: map['passthroughBehavior'] == null ? null : ((map['passthroughBehavior'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      requestParameters: map['requestParameters'] == null ? null : (((map['requestParameters'] as Map).cast<String, String>()).input()).input(),
      requestTemplates: map['requestTemplates'] == null ? null : (((map['requestTemplates'] as Map).cast<String, String>()).input()).input(),
      resourceId: map['resourceId'] == null ? null : ((map['resourceId'] as String).input()).input(),
      responseTransferMode: map['responseTransferMode'] == null ? null : ((map['responseTransferMode'] as String).input()).input(),
      restApi: map['restApi'] == null ? null : ((map['restApi'] as String).input()).input(),
      timeoutMilliseconds: map['timeoutMilliseconds'] == null ? null : ((map['timeoutMilliseconds'] as int).input()).input(),
      tlsConfig: map['tlsConfig'] == null ? null : ((IntegrationTlsConfig.fromMap((map['tlsConfig']! as Map).cast<String, dynamic>())).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      uri: map['uri'] == null ? null : ((map['uri'] as String).input()).input(),
    );
  }
}

