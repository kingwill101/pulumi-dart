// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../integration_response_parameter/integration_response_parameter.dart';
import '../integration_tls_config/integration_tls_config2.dart';

/// The set of arguments for Integration.
class IntegrationArgs2 {
  /// API identifier.
  final Input<String> apiId;

  /// ID of the VPC link for a private integration. Supported only for HTTP APIs. Must be between 1 and 1024 characters in length.
  final Input<String>? connectionId;

  /// Type of the network connection to the integration endpoint. Valid values: `INTERNET`, `VPC_LINK`. Default is `INTERNET`.
  final Input<String>? connectionType;

  /// How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`. Supported only for WebSocket APIs.
  final Input<String>? contentHandlingStrategy;

  /// Credentials required for the integration, if any.
  final Input<String>? credentialsArn;

  /// Description of the integration.
  final Input<String>? description;

  /// Integration's HTTP method. Must be specified if <span pulumi-lang-nodejs="`integrationType`" pulumi-lang-dotnet="`IntegrationType`" pulumi-lang-go="`integrationType`" pulumi-lang-python="`integration_type`" pulumi-lang-yaml="`integrationType`" pulumi-lang-java="`integrationType`">`integration_type`</span> is not `MOCK`.
  final Input<String>? integrationMethod;

  /// AWS service action to invoke. Supported only for HTTP APIs when <span pulumi-lang-nodejs="`integrationType`" pulumi-lang-dotnet="`IntegrationType`" pulumi-lang-go="`integrationType`" pulumi-lang-python="`integration_type`" pulumi-lang-yaml="`integrationType`" pulumi-lang-java="`integrationType`">`integration_type`</span> is `AWS_PROXY`. See the [AWS service integration reference](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html) documentation for supported values. Must be between 1 and 128 characters in length.
  final Input<String>? integrationSubtype;

  /// Integration type of an integration.
  /// Valid values: `AWS` (supported only for WebSocket APIs), `AWS_PROXY`, `HTTP` (supported only for WebSocket APIs), `HTTP_PROXY`, `MOCK` (supported only for WebSocket APIs). For an HTTP API private integration, use `HTTP_PROXY`.
  final Input<String> integrationType;

  /// URI of the Lambda function for a Lambda proxy integration, when <span pulumi-lang-nodejs="`integrationType`" pulumi-lang-dotnet="`IntegrationType`" pulumi-lang-go="`integrationType`" pulumi-lang-python="`integration_type`" pulumi-lang-yaml="`integrationType`" pulumi-lang-java="`integrationType`">`integration_type`</span> is `AWS_PROXY`.
  /// For an `HTTP` integration, specify a fully-qualified URL. For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service.
  final Input<String>? integrationUri;

  /// Pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the <span pulumi-lang-nodejs="`requestTemplates`" pulumi-lang-dotnet="`RequestTemplates`" pulumi-lang-go="`requestTemplates`" pulumi-lang-python="`request_templates`" pulumi-lang-yaml="`requestTemplates`" pulumi-lang-java="`requestTemplates`">`request_templates`</span> attribute.
  /// Valid values: `WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`. Default is `WHEN_NO_MATCH`. Supported only for WebSocket APIs.
  final Input<String>? passthroughBehavior;

  /// The [format of the payload](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html#http-api-develop-integrations-lambda.proxy-format) sent to an integration. Valid values: `1.0`, `2.0`. Default is `1.0`.
  final Input<String>? payloadFormatVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend.
  /// For HTTP APIs with a specified <span pulumi-lang-nodejs="`integrationSubtype`" pulumi-lang-dotnet="`IntegrationSubtype`" pulumi-lang-go="`integrationSubtype`" pulumi-lang-python="`integration_subtype`" pulumi-lang-yaml="`integrationSubtype`" pulumi-lang-java="`integrationSubtype`">`integration_subtype`</span>, a key-value map specifying parameters that are passed to `AWS_PROXY` integrations.
  /// For HTTP APIs without a specified <span pulumi-lang-nodejs="`integrationSubtype`" pulumi-lang-dotnet="`IntegrationSubtype`" pulumi-lang-go="`integrationSubtype`" pulumi-lang-python="`integration_subtype`" pulumi-lang-yaml="`integrationSubtype`" pulumi-lang-java="`integrationSubtype`">`integration_subtype`</span>, a key-value map specifying how to transform HTTP requests before sending them to the backend.
  /// See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html) for details.
  final Input<Map<String, String>>? requestParameters;

  /// Map of [Velocity](https://velocity.apache.org/) templates that are applied on the request payload based on the value of the Content-Type header sent by the client. Supported only for WebSocket APIs.
  final Input<Map<String, String>>? requestTemplates;

  /// Mappings to transform the HTTP response from a backend integration before returning the response to clients. Supported only for HTTP APIs.
  final Input<List<IntegrationResponseParameter>>? responseParameters;

  /// The [template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration.
  final Input<String>? templateSelectionExpression;

  /// Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs.
  /// The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.
  /// this provider will only perform drift detection of its value when present in a configuration.
  final Input<int>? timeoutMilliseconds;

  /// TLS configuration for a private integration. Supported only for HTTP APIs.
  final Input<IntegrationTlsConfig2>? tlsConfig;

  IntegrationArgs2({
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
      map['responseParameters'] = Input.mapOptionalInputValue<
              List<IntegrationResponseParameter>, List<Map<String, dynamic>>>(
          responseParametersValue,
          (value) => Input.encodeList<IntegrationResponseParameter,
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
      map['tlsConfig'] = Input.mapOptionalInputValue<IntegrationTlsConfig2,
          Map<String, dynamic>>(tlsConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory IntegrationArgs2.fromMap(Map<String, dynamic> map) {
    return IntegrationArgs2(
      apiId: Input.asInput<String>(map['apiId']),
      connectionId: Input.asOptionalInput<String>(map['connectionId']),
      connectionType: Input.asOptionalInput<String>(map['connectionType']),
      contentHandlingStrategy:
          Input.asOptionalInput<String>(map['contentHandlingStrategy']),
      credentialsArn: Input.asOptionalInput<String>(map['credentialsArn']),
      description: Input.asOptionalInput<String>(map['description']),
      integrationMethod:
          Input.asOptionalInput<String>(map['integrationMethod']),
      integrationSubtype:
          Input.asOptionalInput<String>(map['integrationSubtype']),
      integrationType: Input.asInput<String>(map['integrationType']),
      integrationUri: Input.asOptionalInput<String>(map['integrationUri']),
      passthroughBehavior:
          Input.asOptionalInput<String>(map['passthroughBehavior']),
      payloadFormatVersion:
          Input.asOptionalInput<String>(map['payloadFormatVersion']),
      region: Input.asOptionalInput<String>(map['region']),
      requestParameters:
          Input.asOptionalInput<Map<String, String>>(map['requestParameters']),
      requestTemplates:
          Input.asOptionalInput<Map<String, String>>(map['requestTemplates']),
      responseParameters:
          Input.asOptionalInput<List<IntegrationResponseParameter>>(
              map['responseParameters']),
      templateSelectionExpression:
          Input.asOptionalInput<String>(map['templateSelectionExpression']),
      timeoutMilliseconds:
          Input.asOptionalInput<int>(map['timeoutMilliseconds']),
      tlsConfig: Input.asOptionalInput<IntegrationTlsConfig2>(map['tlsConfig']),
    );
  }
}
