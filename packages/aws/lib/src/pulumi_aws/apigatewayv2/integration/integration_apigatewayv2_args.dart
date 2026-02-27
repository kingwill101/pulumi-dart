// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../integration_response_parameter/integration_response_parameter.dart';
import '../integration_tls_config/integration_tls_config_apigatewayv2.dart';

/// The set of arguments for Integration.
class IntegrationApigatewayv2Args {
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
  final pulumi.Input<IntegrationTlsConfigApigatewayv2>? tlsConfig;

  IntegrationApigatewayv2Args({
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
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final connectionIdValue = connectionId;
    if (connectionIdValue != null) {
      map['connectionId'] = connectionIdValue;
    }
    final connectionTypeValue = connectionType;
    if (connectionTypeValue != null) {
      map['connectionType'] = connectionTypeValue;
    }
    final contentHandlingStrategyValue = contentHandlingStrategy;
    if (contentHandlingStrategyValue != null) {
      map['contentHandlingStrategy'] = contentHandlingStrategyValue;
    }
    final credentialsArnValue = credentialsArn;
    if (credentialsArnValue != null) {
      map['credentialsArn'] = credentialsArnValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final integrationMethodValue = integrationMethod;
    if (integrationMethodValue != null) {
      map['integrationMethod'] = integrationMethodValue;
    }
    final integrationSubtypeValue = integrationSubtype;
    if (integrationSubtypeValue != null) {
      map['integrationSubtype'] = integrationSubtypeValue;
    }
    map['integrationType'] = integrationType;
    final integrationUriValue = integrationUri;
    if (integrationUriValue != null) {
      map['integrationUri'] = integrationUriValue;
    }
    final passthroughBehaviorValue = passthroughBehavior;
    if (passthroughBehaviorValue != null) {
      map['passthroughBehavior'] = passthroughBehaviorValue;
    }
    final payloadFormatVersionValue = payloadFormatVersion;
    if (payloadFormatVersionValue != null) {
      map['payloadFormatVersion'] = payloadFormatVersionValue;
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
    final responseParametersValue = responseParameters;
    if (responseParametersValue != null) {
      map['responseParameters'] = pulumi.Input.mapOptionalInputValue<
              List<IntegrationResponseParameter>, List<Map<String, dynamic>>>(
          responseParametersValue,
          (value) => pulumi.Input.encodeList<IntegrationResponseParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final templateSelectionExpressionValue = templateSelectionExpression;
    if (templateSelectionExpressionValue != null) {
      map['templateSelectionExpression'] = templateSelectionExpressionValue;
    }
    final timeoutMillisecondsValue = timeoutMilliseconds;
    if (timeoutMillisecondsValue != null) {
      map['timeoutMilliseconds'] = timeoutMillisecondsValue;
    }
    final tlsConfigValue = tlsConfig;
    if (tlsConfigValue != null) {
      map['tlsConfig'] = pulumi.Input.mapOptionalInputValue<
          IntegrationTlsConfigApigatewayv2,
          Map<String, dynamic>>(tlsConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory IntegrationApigatewayv2Args.fromMap(Map<String, dynamic> map) {
    return IntegrationApigatewayv2Args(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      connectionId: pulumi.Input.asOptionalInput<String>(map['connectionId']),
      connectionType:
          pulumi.Input.asOptionalInput<String>(map['connectionType']),
      contentHandlingStrategy:
          pulumi.Input.asOptionalInput<String>(map['contentHandlingStrategy']),
      credentialsArn:
          pulumi.Input.asOptionalInput<String>(map['credentialsArn']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      integrationMethod:
          pulumi.Input.asOptionalInput<String>(map['integrationMethod']),
      integrationSubtype:
          pulumi.Input.asOptionalInput<String>(map['integrationSubtype']),
      integrationType: pulumi.Input.asInput<String>(map['integrationType']),
      integrationUri:
          pulumi.Input.asOptionalInput<String>(map['integrationUri']),
      passthroughBehavior:
          pulumi.Input.asOptionalInput<String>(map['passthroughBehavior']),
      payloadFormatVersion:
          pulumi.Input.asOptionalInput<String>(map['payloadFormatVersion']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requestParameters: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['requestParameters']),
      requestTemplates: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['requestTemplates']),
      responseParameters:
          pulumi.Input.asOptionalInput<List<IntegrationResponseParameter>>(
              map['responseParameters']),
      templateSelectionExpression: pulumi.Input.asOptionalInput<String>(
          map['templateSelectionExpression']),
      timeoutMilliseconds:
          pulumi.Input.asOptionalInput<int>(map['timeoutMilliseconds']),
      tlsConfig: pulumi.Input.asOptionalInput<IntegrationTlsConfigApigatewayv2>(
          map['tlsConfig']),
    );
  }
}
