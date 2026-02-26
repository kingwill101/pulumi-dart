// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../integration_tls_config/integration_tls_config.dart';

/// The set of arguments for Integration.
class IntegrationArgs {
  /// List of cache key parameters for the integration.
  final Input<List<String>>? cacheKeyParameters;

  /// Integration's cache namespace.
  final Input<String>? cacheNamespace;

  /// ID of the VpcLink used for the integration. **Required** if <span pulumi-lang-nodejs="`connectionType`" pulumi-lang-dotnet="`ConnectionType`" pulumi-lang-go="`connectionType`" pulumi-lang-python="`connection_type`" pulumi-lang-yaml="`connectionType`" pulumi-lang-java="`connectionType`">`connection_type`</span> is `VPC_LINK`
  final Input<String>? connectionId;

  /// Integration input's [connectionType](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/#connectionType). Valid values are `INTERNET` (default for connections through the public routable internet), and `VPC_LINK` (for private connections between API Gateway and a network load balancer in a VPC).
  final Input<String>? connectionType;

  /// How to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the passthroughBehaviors is configured to support payload pass-through.
  final Input<String>? contentHandling;

  /// Credentials required for the integration. For `AWS` integrations, 2 options are available. To specify an IAM Role for Amazon API Gateway to assume, use the role's ARN. To require that the caller's identity be passed through from the request, specify the string `arn:aws:iam::\*:user/\*`.
  final Input<String>? credentials;

  /// HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTION`, `ANY`)
  /// when calling the associated resource.
  final Input<String> httpMethod;

  /// Integration HTTP method
  /// (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONs`, `ANY`, `PATCH`) specifying how API Gateway will interact with the back end.
  /// **Required** if <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
  /// Not all methods are compatible with all `AWS` integrations.
  /// e.g., Lambda function [can only be invoked](https://github.com/awslabs/aws-apigateway-importer/issues/9#issuecomment-129651005) via `POST`.
  final Input<String>? integrationHttpMethod;

  /// The ALB or NLB ARN to send the request to. Used for private integrations with VPC Link V2. When using VPC Link V2, this parameter specifies the load balancer ARN, while <span pulumi-lang-nodejs="`uri`" pulumi-lang-dotnet="`Uri`" pulumi-lang-go="`uri`" pulumi-lang-python="`uri`" pulumi-lang-yaml="`uri`" pulumi-lang-java="`uri`">`uri`</span> is used to set the Host header.
  final Input<String>? integrationTarget;

  /// Integration passthrough behavior (`WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`).  **Required** if <span pulumi-lang-nodejs="`requestTemplates`" pulumi-lang-dotnet="`RequestTemplates`" pulumi-lang-go="`requestTemplates`" pulumi-lang-python="`request_templates`" pulumi-lang-yaml="`requestTemplates`" pulumi-lang-java="`requestTemplates`">`request_templates`</span> is used.
  final Input<String>? passthroughBehavior;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of request query string parameters and headers that should be passed to the backend responder.
  /// For example: <span pulumi-lang-nodejs="`requestParameters " pulumi-lang-dotnet="`RequestParameters " pulumi-lang-go="`requestParameters " pulumi-lang-python="`request_parameters " pulumi-lang-yaml="`requestParameters " pulumi-lang-java="`requestParameters ">`request_parameters </span>= { "integration.request.header.X-Some-Other-Header" = "method.request.header.X-Some-Header" }`
  final Input<Map<String, String>>? requestParameters;

  /// Map of the integration's request templates.
  final Input<Map<String, String>>? requestTemplates;

  /// API resource ID.
  final Input<String> resourceId;

  /// Specifies the response transfer mode of the integration. Valid values are `BUFFERED` and `STREAM`. Default to `BUFFERED`.
  /// Once set, setting the value to `BUFFERED` requires explicitly specifying `BUFFERED`, rather than removing this argument.
  final Input<String>? responseTransferMode;

  /// ID of the associated REST API.
  final Input<String> restApi;

  /// Custom timeout in milliseconds. The minimum value is 50. The maximum value is 300,000 when <span pulumi-lang-nodejs="`responseTransferMode`" pulumi-lang-dotnet="`ResponseTransferMode`" pulumi-lang-go="`responseTransferMode`" pulumi-lang-python="`response_transfer_mode`" pulumi-lang-yaml="`responseTransferMode`" pulumi-lang-java="`responseTransferMode`">`response_transfer_mode`</span> is `BUFFERED`, and 900,000 when <span pulumi-lang-nodejs="`responseTransferMode`" pulumi-lang-dotnet="`ResponseTransferMode`" pulumi-lang-go="`responseTransferMode`" pulumi-lang-python="`response_transfer_mode`" pulumi-lang-yaml="`responseTransferMode`" pulumi-lang-java="`responseTransferMode`">`response_transfer_mode`</span> is `STREAM`. The default value is 29,000 milliseconds. You need to raise a [Service Quota Ticket](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) to increase time beyond 29,000 milliseconds for `BUFFERED` mode.
  final Input<int>? timeoutMilliseconds;

  /// TLS configuration. See below.
  final Input<IntegrationTlsConfig>? tlsConfig;

  /// Integration input's [type](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/). Valid values are `HTTP` (for HTTP backends), `MOCK` (not calling any real backend), `AWS` (for AWS services), `AWS_PROXY` (for Lambda proxy integration) and `HTTP_PROXY` (for HTTP proxy integration). An `HTTP` or `HTTP_PROXY` integration with a <span pulumi-lang-nodejs="`connectionType`" pulumi-lang-dotnet="`ConnectionType`" pulumi-lang-go="`connectionType`" pulumi-lang-python="`connection_type`" pulumi-lang-yaml="`connectionType`" pulumi-lang-java="`connectionType`">`connection_type`</span> of `VPC_LINK` is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.
  final Input<String> type;

  /// Input's URI. **Required** if <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
  /// For HTTP integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the RFC-3986 specification . For AWS integrations, the URI should be of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}`. <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span>, <span pulumi-lang-nodejs="`subdomain`" pulumi-lang-dotnet="`Subdomain`" pulumi-lang-go="`subdomain`" pulumi-lang-python="`subdomain`" pulumi-lang-yaml="`subdomain`" pulumi-lang-java="`subdomain`">`subdomain`</span> and <span pulumi-lang-nodejs="`service`" pulumi-lang-dotnet="`Service`" pulumi-lang-go="`service`" pulumi-lang-python="`service`" pulumi-lang-yaml="`service`" pulumi-lang-java="`service`">`service`</span> are used to determine the right endpoint.
  /// e.g., `arn:aws:apigateway:eu-west-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-1:123456789012:function:my-func/invocations`. For private integrations, the URI parameter is not used for routing requests to your endpoint, but is used for setting the Host header and for certificate validation.
  final Input<String>? uri;

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
      map['tlsConfig'] = Input.mapOptionalInputValue<IntegrationTlsConfig,
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
          Input.asOptionalInput<List<String>>(map['cacheKeyParameters']),
      cacheNamespace: Input.asOptionalInput<String>(map['cacheNamespace']),
      connectionId: Input.asOptionalInput<String>(map['connectionId']),
      connectionType: Input.asOptionalInput<String>(map['connectionType']),
      contentHandling: Input.asOptionalInput<String>(map['contentHandling']),
      credentials: Input.asOptionalInput<String>(map['credentials']),
      httpMethod: Input.asInput<String>(map['httpMethod']),
      integrationHttpMethod:
          Input.asOptionalInput<String>(map['integrationHttpMethod']),
      integrationTarget:
          Input.asOptionalInput<String>(map['integrationTarget']),
      passthroughBehavior:
          Input.asOptionalInput<String>(map['passthroughBehavior']),
      region: Input.asOptionalInput<String>(map['region']),
      requestParameters:
          Input.asOptionalInput<Map<String, String>>(map['requestParameters']),
      requestTemplates:
          Input.asOptionalInput<Map<String, String>>(map['requestTemplates']),
      resourceId: Input.asInput<String>(map['resourceId']),
      responseTransferMode:
          Input.asOptionalInput<String>(map['responseTransferMode']),
      restApi: Input.asInput<String>(map['restApi']),
      timeoutMilliseconds:
          Input.asOptionalInput<int>(map['timeoutMilliseconds']),
      tlsConfig: Input.asOptionalInput<IntegrationTlsConfig>(map['tlsConfig']),
      type: Input.asInput<String>(map['type']),
      uri: Input.asOptionalInput<String>(map['uri']),
    );
  }
}
