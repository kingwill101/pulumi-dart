// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../integration_tls_config/integration_tls_config.dart';

/// The set of arguments for Integration.
class IntegrationArgs {
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
  final pulumi.Input<String> httpMethod;

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
  final pulumi.Input<String> resourceId;

  /// Specifies the response transfer mode of the integration. Valid values are `BUFFERED` and `STREAM`. Default to `BUFFERED`.
  /// Once set, setting the value to `BUFFERED` requires explicitly specifying `BUFFERED`, rather than removing this argument.
  final pulumi.Input<String>? responseTransferMode;

  /// ID of the associated REST API.
  final pulumi.Input<String> restApi;

  /// Custom timeout in milliseconds. The minimum value is 50. The maximum value is 300,000 when `response_transfer_mode` is `BUFFERED`, and 900,000 when `response_transfer_mode` is `STREAM`. The default value is 29,000 milliseconds. You need to raise a [Service Quota Ticket](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) to increase time beyond 29,000 milliseconds for `BUFFERED` mode.
  final pulumi.Input<int>? timeoutMilliseconds;

  /// TLS configuration. See below.
  final pulumi.Input<IntegrationTlsConfig>? tlsConfig;

  /// Integration input's [type](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/). Valid values are `HTTP` (for HTTP backends), `MOCK` (not calling any real backend), `AWS` (for AWS services), `AWS_PROXY` (for Lambda proxy integration) and `HTTP_PROXY` (for HTTP proxy integration). An `HTTP` or `HTTP_PROXY` integration with a `connection_type` of `VPC_LINK` is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.
  final pulumi.Input<String> type;

  /// Input's URI. **Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
  /// For HTTP integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the RFC-3986 specification . For AWS integrations, the URI should be of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}`. `region`, `subdomain` and `service` are used to determine the right endpoint.
  /// e.g., `arn:aws:apigateway:eu-west-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-1:123456789012:function:my-func/invocations`. For private integrations, the URI parameter is not used for routing requests to your endpoint, but is used for setting the Host header and for certificate validation.
  final pulumi.Input<String>? uri;

  IntegrationArgs({
    this.cacheKeyParameters,
    this.cacheNamespace,
    this.connectionId,
    this.connectionType,
    this.contentHandling,
    this.credentials,
    required this.httpMethod,
    this.integrationHttpMethod,
    this.integrationTarget,
    this.passthroughBehavior,
    this.region,
    this.requestParameters,
    this.requestTemplates,
    required this.resourceId,
    this.responseTransferMode,
    required this.restApi,
    this.timeoutMilliseconds,
    this.tlsConfig,
    required this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cacheKeyParametersValue = cacheKeyParameters;
    if (cacheKeyParametersValue != null) {
      map['cacheKeyParameters'] = cacheKeyParametersValue;
    }
    final cacheNamespaceValue = cacheNamespace;
    if (cacheNamespaceValue != null) {
      map['cacheNamespace'] = cacheNamespaceValue;
    }
    final connectionIdValue = connectionId;
    if (connectionIdValue != null) {
      map['connectionId'] = connectionIdValue;
    }
    final connectionTypeValue = connectionType;
    if (connectionTypeValue != null) {
      map['connectionType'] = connectionTypeValue;
    }
    final contentHandlingValue = contentHandling;
    if (contentHandlingValue != null) {
      map['contentHandling'] = contentHandlingValue;
    }
    final credentialsValue = credentials;
    if (credentialsValue != null) {
      map['credentials'] = credentialsValue;
    }
    map['httpMethod'] = httpMethod;
    final integrationHttpMethodValue = integrationHttpMethod;
    if (integrationHttpMethodValue != null) {
      map['integrationHttpMethod'] = integrationHttpMethodValue;
    }
    final integrationTargetValue = integrationTarget;
    if (integrationTargetValue != null) {
      map['integrationTarget'] = integrationTargetValue;
    }
    final passthroughBehaviorValue = passthroughBehavior;
    if (passthroughBehaviorValue != null) {
      map['passthroughBehavior'] = passthroughBehaviorValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requestParametersValue = requestParameters;
    if (requestParametersValue != null) {
      map['requestParameters'] = requestParametersValue;
    }
    final requestTemplatesValue = requestTemplates;
    if (requestTemplatesValue != null) {
      map['requestTemplates'] = requestTemplatesValue;
    }
    map['resourceId'] = resourceId;
    final responseTransferModeValue = responseTransferMode;
    if (responseTransferModeValue != null) {
      map['responseTransferMode'] = responseTransferModeValue;
    }
    map['restApi'] = restApi;
    final timeoutMillisecondsValue = timeoutMilliseconds;
    if (timeoutMillisecondsValue != null) {
      map['timeoutMilliseconds'] = timeoutMillisecondsValue;
    }
    final tlsConfigValue = tlsConfig;
    if (tlsConfigValue != null) {
      map['tlsConfig'] = pulumi.Input.mapOptionalInputValue<
          IntegrationTlsConfig,
          Map<String, dynamic>>(tlsConfigValue, (value) => value.toMap());
    }
    map['type'] = type;
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory IntegrationArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationArgs(
      cacheKeyParameters:
          pulumi.Input.asOptionalInput<List<String>>(map['cacheKeyParameters']),
      cacheNamespace:
          pulumi.Input.asOptionalInput<String>(map['cacheNamespace']),
      connectionId: pulumi.Input.asOptionalInput<String>(map['connectionId']),
      connectionType:
          pulumi.Input.asOptionalInput<String>(map['connectionType']),
      contentHandling:
          pulumi.Input.asOptionalInput<String>(map['contentHandling']),
      credentials: pulumi.Input.asOptionalInput<String>(map['credentials']),
      httpMethod: pulumi.Input.asInput<String>(map['httpMethod']),
      integrationHttpMethod:
          pulumi.Input.asOptionalInput<String>(map['integrationHttpMethod']),
      integrationTarget:
          pulumi.Input.asOptionalInput<String>(map['integrationTarget']),
      passthroughBehavior:
          pulumi.Input.asOptionalInput<String>(map['passthroughBehavior']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requestParameters: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['requestParameters']),
      requestTemplates: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['requestTemplates']),
      resourceId: pulumi.Input.asInput<String>(map['resourceId']),
      responseTransferMode:
          pulumi.Input.asOptionalInput<String>(map['responseTransferMode']),
      restApi: pulumi.Input.asInput<String>(map['restApi']),
      timeoutMilliseconds:
          pulumi.Input.asOptionalInput<int>(map['timeoutMilliseconds']),
      tlsConfig:
          pulumi.Input.asOptionalInput<IntegrationTlsConfig>(map['tlsConfig']),
      type: pulumi.Input.asInput<String>(map['type']),
      uri: pulumi.Input.asOptionalInput<String>(map['uri']),
    );
  }
}
