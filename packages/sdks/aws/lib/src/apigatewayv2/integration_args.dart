// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_response_parameter.dart';
import 'integration_tls_config.dart';

/// {@template pulumi_apigatewayv2_integration_integration_args_doc}
/// The set of arguments for Integration.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_integration_integration_args_doc}
class IntegrationArgs {
  /// API identifier.
  final pulumi.Input<String> apiId;
  /// ID of the VPC link for a private integration. Supported only for HTTP APIs. Must be between 1 and 1024 characters in length.
  final pulumi.Input<String>? connectionId;
  /// Type of the network connection to the integration endpoint. Valid values: `INTERNET`, `VPC_LINK`. Default is `INTERNET`.
  final pulumi.Input<String>? connectionType;
  /// How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`. Supported only for WebSocket APIs.
  final pulumi.Input<String>? contentHandlingStrategy;
  /// Credentials required for the integration, if any.
  final pulumi.Input<String>? credentialsArn;
  /// Description of the integration.
  final pulumi.Input<String>? description;
  /// Integration's HTTP method. Must be specified if `integration_type` is not `MOCK`.
  final pulumi.Input<String>? integrationMethod;
  /// AWS service action to invoke. Supported only for HTTP APIs when `integration_type` is `AWS_PROXY`. See the [AWS service integration reference](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html) documentation for supported values. Must be between 1 and 128 characters in length.
  final pulumi.Input<String>? integrationSubtype;
  /// Integration type of an integration.
  /// Valid values: `AWS` (supported only for WebSocket APIs), `AWS_PROXY`, `HTTP` (supported only for WebSocket APIs), `HTTP_PROXY`, `MOCK` (supported only for WebSocket APIs). For an HTTP API private integration, use `HTTP_PROXY`.
  final pulumi.Input<String> integrationType;
  /// URI of the Lambda function for a Lambda proxy integration, when `integration_type` is `AWS_PROXY`.
  /// For an `HTTP` integration, specify a fully-qualified URL. For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service.
  final pulumi.Input<String>? integrationUri;
  /// Pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the `request_templates` attribute.
  /// Valid values: `WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`. Default is `WHEN_NO_MATCH`. Supported only for WebSocket APIs.
  final pulumi.Input<String>? passthroughBehavior;
  /// The [format of the payload](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html#http-api-develop-integrations-lambda.proxy-format) sent to an integration. Valid values: `1.0`, `2.0`. Default is `1.0`.
  final pulumi.Input<String>? payloadFormatVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend.
  /// For HTTP APIs with a specified `integration_subtype`, a key-value map specifying parameters that are passed to `AWS_PROXY` integrations.
  /// For HTTP APIs without a specified `integration_subtype`, a key-value map specifying how to transform HTTP requests before sending them to the backend.
  /// See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html) for details.
  final pulumi.Input<Map<String, String>>? requestParameters;
  /// Map of [Velocity](https://velocity.apache.org/) templates that are applied on the request payload based on the value of the Content-Type header sent by the client. Supported only for WebSocket APIs.
  final pulumi.Input<Map<String, String>>? requestTemplates;
  /// Mappings to transform the HTTP response from a backend integration before returning the response to clients. Supported only for HTTP APIs.
  final pulumi.Input<List<IntegrationResponseParameter>>? responseParameters;
  /// The [template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration.
  final pulumi.Input<String>? templateSelectionExpression;
  /// Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs.
  /// The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.
  /// this provider will only perform drift detection of its value when present in a configuration.
  final pulumi.Input<int>? timeoutMilliseconds;
  /// TLS configuration for a private integration. Supported only for HTTP APIs.
  final pulumi.Input<IntegrationTlsConfig>? tlsConfig;

  /// Creates a new [IntegrationArgs].
  /// [apiId] API identifier.
  /// [connectionId] ID of the VPC link for a private integration. Supported only for HTTP APIs. Must be between 1 and 1024 characters in length.
  /// [connectionType] Type of the network connection to the integration endpoint. Valid values: `INTERNET`, `VPC_LINK`. Default is `INTERNET`.
  /// [contentHandlingStrategy] How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`. Supported only for WebSocket APIs.
  /// [credentialsArn] Credentials required for the integration, if any.
  /// [description] Description of the integration.
  /// [integrationMethod] Integration's HTTP method. Must be specified if `integration_type` is not `MOCK`.
  /// [integrationSubtype] AWS service action to invoke. Supported only for HTTP APIs when `integration_type` is `AWS_PROXY`. See the [AWS service integration reference](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html) documentation for supported values. Must be between 1 and 128 characters in length.
  /// [integrationType] Integration type of an integration.
  /// [integrationUri] URI of the Lambda function for a Lambda proxy integration, when `integration_type` is `AWS_PROXY`.
  /// [passthroughBehavior] Pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the `request_templates` attribute.
  /// [payloadFormatVersion] The [format of the payload](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html#http-api-develop-integrations-lambda.proxy-format) sent to an integration. Valid values: `1.0`, `2.0`. Default is `1.0`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestParameters] For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend.
  /// [requestTemplates] Map of [Velocity](https://velocity.apache.org/) templates that are applied on the request payload based on the value of the Content-Type header sent by the client. Supported only for WebSocket APIs.
  /// [responseParameters] Mappings to transform the HTTP response from a backend integration before returning the response to clients. Supported only for HTTP APIs.
  /// [templateSelectionExpression] The [template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration.
  /// [timeoutMilliseconds] Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs.
  /// [tlsConfig] TLS configuration for a private integration. Supported only for HTTP APIs.
  IntegrationArgs({
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? connectionId,
    pulumi.Output<String>? connectionType,
    pulumi.Output<String>? contentHandlingStrategy,
    pulumi.Output<String>? credentialsArn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? integrationMethod,
    pulumi.Output<String>? integrationSubtype,
    required pulumi.Output<String> integrationType,
    pulumi.Output<String>? integrationUri,
    pulumi.Output<String>? passthroughBehavior,
    pulumi.Output<String>? payloadFormatVersion,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? requestParameters,
    pulumi.Output<Map<String, String>>? requestTemplates,
    pulumi.Output<List<IntegrationResponseParameter>>? responseParameters,
    pulumi.Output<String>? templateSelectionExpression,
    pulumi.Output<int>? timeoutMilliseconds,
    pulumi.Output<IntegrationTlsConfig>? tlsConfig,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      connectionId = pulumi.Input.asOptionalInput<String>(connectionId),
      connectionType = pulumi.Input.asOptionalInput<String>(connectionType),
      contentHandlingStrategy = pulumi.Input.asOptionalInput<String>(contentHandlingStrategy),
      credentialsArn = pulumi.Input.asOptionalInput<String>(credentialsArn),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationMethod = pulumi.Input.asOptionalInput<String>(integrationMethod),
      integrationSubtype = pulumi.Input.asOptionalInput<String>(integrationSubtype),
      integrationType = pulumi.Input.asInput<String>(integrationType),
      integrationUri = pulumi.Input.asOptionalInput<String>(integrationUri),
      passthroughBehavior = pulumi.Input.asOptionalInput<String>(passthroughBehavior),
      payloadFormatVersion = pulumi.Input.asOptionalInput<String>(payloadFormatVersion),
      region = pulumi.Input.asOptionalInput<String>(region),
      requestParameters = pulumi.Input.asOptionalInput<Map<String, String>>(requestParameters),
      requestTemplates = pulumi.Input.asOptionalInput<Map<String, String>>(requestTemplates),
      responseParameters = pulumi.Input.asOptionalInput<List<IntegrationResponseParameter>>(responseParameters),
      templateSelectionExpression = pulumi.Input.asOptionalInput<String>(templateSelectionExpression),
      timeoutMilliseconds = pulumi.Input.asOptionalInput<int>(timeoutMilliseconds),
      tlsConfig = pulumi.Input.asOptionalInput<IntegrationTlsConfig>(tlsConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'connectionId': ?connectionId,
      'connectionType': ?connectionType,
      'contentHandlingStrategy': ?contentHandlingStrategy,
      'credentialsArn': ?credentialsArn,
      'description': ?description,
      'integrationMethod': ?integrationMethod,
      'integrationSubtype': ?integrationSubtype,
      'integrationType': integrationType,
      'integrationUri': ?integrationUri,
      'passthroughBehavior': ?passthroughBehavior,
      'payloadFormatVersion': ?payloadFormatVersion,
      'region': ?region,
      'requestParameters': ?requestParameters,
      'requestTemplates': ?requestTemplates,
      'responseParameters': ?pulumi.Input.mapOptionalInputValue<List<IntegrationResponseParameter>, List<Map<String, dynamic>>>(responseParameters, (value) => pulumi.Input.encodeList<IntegrationResponseParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateSelectionExpression': ?templateSelectionExpression,
      'timeoutMilliseconds': ?timeoutMilliseconds,
      'tlsConfig': ?pulumi.Input.mapOptionalInputValue<IntegrationTlsConfig, Map<String, dynamic>>(tlsConfig, (value) => value.toMap()),
    };
  }

  factory IntegrationArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      connectionId: map['connectionId'] == null ? null : pulumi.Output.create<String>(map['connectionId'] as String),
      connectionType: map['connectionType'] == null ? null : pulumi.Output.create<String>(map['connectionType'] as String),
      contentHandlingStrategy: map['contentHandlingStrategy'] == null ? null : pulumi.Output.create<String>(map['contentHandlingStrategy'] as String),
      credentialsArn: map['credentialsArn'] == null ? null : pulumi.Output.create<String>(map['credentialsArn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      integrationMethod: map['integrationMethod'] == null ? null : pulumi.Output.create<String>(map['integrationMethod'] as String),
      integrationSubtype: map['integrationSubtype'] == null ? null : pulumi.Output.create<String>(map['integrationSubtype'] as String),
      integrationType: pulumi.Output.create<String>(map['integrationType'] as String),
      integrationUri: map['integrationUri'] == null ? null : pulumi.Output.create<String>(map['integrationUri'] as String),
      passthroughBehavior: map['passthroughBehavior'] == null ? null : pulumi.Output.create<String>(map['passthroughBehavior'] as String),
      payloadFormatVersion: map['payloadFormatVersion'] == null ? null : pulumi.Output.create<String>(map['payloadFormatVersion'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requestParameters: map['requestParameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['requestParameters'] as Map).cast<String, String>()),
      requestTemplates: map['requestTemplates'] == null ? null : pulumi.Output.create<Map<String, String>>((map['requestTemplates'] as Map).cast<String, String>()),
      responseParameters: map['responseParameters'] == null ? null : pulumi.Output.create<List<IntegrationResponseParameter>>(pulumi.Input.decodeList<IntegrationResponseParameter>(map['responseParameters'], (value) => IntegrationResponseParameter.fromMap((value as Map).cast<String, dynamic>()))),
      templateSelectionExpression: map['templateSelectionExpression'] == null ? null : pulumi.Output.create<String>(map['templateSelectionExpression'] as String),
      timeoutMilliseconds: map['timeoutMilliseconds'] == null ? null : pulumi.Output.create<int>(map['timeoutMilliseconds'] as int),
      tlsConfig: map['tlsConfig'] == null ? null : pulumi.Output.create<IntegrationTlsConfig>(IntegrationTlsConfig.fromMap((map['tlsConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

