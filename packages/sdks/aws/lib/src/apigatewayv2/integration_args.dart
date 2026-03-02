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
    required this.apiId,
    this.connectionId,
    this.connectionType,
    this.contentHandlingStrategy,
    this.credentialsArn,
    this.description,
    this.integrationMethod,
    this.integrationSubtype,
    required this.integrationType,
    this.integrationUri,
    this.passthroughBehavior,
    this.payloadFormatVersion,
    this.region,
    this.requestParameters,
    this.requestTemplates,
    this.responseParameters,
    this.templateSelectionExpression,
    this.timeoutMilliseconds,
    this.tlsConfig,
  });

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
      apiId: (map['apiId'] as String).input(),
      connectionId: map['connectionId'] == null ? null : ((map['connectionId'] as String).input()).input(),
      connectionType: map['connectionType'] == null ? null : ((map['connectionType'] as String).input()).input(),
      contentHandlingStrategy: map['contentHandlingStrategy'] == null ? null : ((map['contentHandlingStrategy'] as String).input()).input(),
      credentialsArn: map['credentialsArn'] == null ? null : ((map['credentialsArn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      integrationMethod: map['integrationMethod'] == null ? null : ((map['integrationMethod'] as String).input()).input(),
      integrationSubtype: map['integrationSubtype'] == null ? null : ((map['integrationSubtype'] as String).input()).input(),
      integrationType: (map['integrationType'] as String).input(),
      integrationUri: map['integrationUri'] == null ? null : ((map['integrationUri'] as String).input()).input(),
      passthroughBehavior: map['passthroughBehavior'] == null ? null : ((map['passthroughBehavior'] as String).input()).input(),
      payloadFormatVersion: map['payloadFormatVersion'] == null ? null : ((map['payloadFormatVersion'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      requestParameters: map['requestParameters'] == null ? null : (((map['requestParameters'] as Map).cast<String, String>()).input()).input(),
      requestTemplates: map['requestTemplates'] == null ? null : (((map['requestTemplates'] as Map).cast<String, String>()).input()).input(),
      responseParameters: map['responseParameters'] == null ? null : ((pulumi.Input.decodeList<IntegrationResponseParameter>(map['responseParameters']!, (value) => IntegrationResponseParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      templateSelectionExpression: map['templateSelectionExpression'] == null ? null : ((map['templateSelectionExpression'] as String).input()).input(),
      timeoutMilliseconds: map['timeoutMilliseconds'] == null ? null : ((map['timeoutMilliseconds'] as int).input()).input(),
      tlsConfig: map['tlsConfig'] == null ? null : ((IntegrationTlsConfig.fromMap((map['tlsConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

