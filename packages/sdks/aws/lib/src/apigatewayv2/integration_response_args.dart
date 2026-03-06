// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigatewayv2_integration_response_integration_response_args_doc}
/// The set of arguments for IntegrationResponse.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_integration_response_integration_response_args_doc}
class IntegrationResponseArgs {
  /// API identifier.
  final pulumi.Input<String> apiId;
  /// How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`.
  final pulumi.Input<String>? contentHandlingStrategy;
  /// Identifier of the `aws.apigatewayv2.Integration`.
  final pulumi.Input<String> integrationId;
  /// Integration response key.
  final pulumi.Input<String> integrationResponseKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client.
  final pulumi.Input<Map<String, String>>? responseTemplates;
  /// The [template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration response.
  final pulumi.Input<String>? templateSelectionExpression;

  /// Creates a new [IntegrationResponseArgs].
  /// [apiId] API identifier.
  /// [contentHandlingStrategy] How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`.
  /// [integrationId] Identifier of the `aws.apigatewayv2.Integration`.
  /// [integrationResponseKey] Integration response key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [responseTemplates] Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client.
  /// [templateSelectionExpression] The [template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration response.
  const IntegrationResponseArgs({
    required this.apiId,
    this.contentHandlingStrategy,
    required this.integrationId,
    required this.integrationResponseKey,
    this.region,
    this.responseTemplates,
    this.templateSelectionExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'contentHandlingStrategy': ?contentHandlingStrategy,
      'integrationId': integrationId,
      'integrationResponseKey': integrationResponseKey,
      'region': ?region,
      'responseTemplates': ?responseTemplates,
      'templateSelectionExpression': ?templateSelectionExpression,
    };
  }

  factory IntegrationResponseArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationResponseArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      contentHandlingStrategy: (() { final guardedValue = map['contentHandlingStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationId: pulumi.Input.fromValue(map['integrationId'] as String),
      integrationResponseKey: pulumi.Input.fromValue(map['integrationResponseKey'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseTemplates: (() { final guardedValue = map['responseTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateSelectionExpression: (() { final guardedValue = map['templateSelectionExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

