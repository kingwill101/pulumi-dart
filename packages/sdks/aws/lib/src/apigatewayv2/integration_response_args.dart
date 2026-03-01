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
  IntegrationResponseArgs({
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? contentHandlingStrategy,
    required pulumi.Output<String> integrationId,
    required pulumi.Output<String> integrationResponseKey,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? responseTemplates,
    pulumi.Output<String>? templateSelectionExpression,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      contentHandlingStrategy = pulumi.Input.asOptionalInput<String>(contentHandlingStrategy),
      integrationId = pulumi.Input.asInput<String>(integrationId),
      integrationResponseKey = pulumi.Input.asInput<String>(integrationResponseKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      responseTemplates = pulumi.Input.asOptionalInput<Map<String, String>>(responseTemplates),
      templateSelectionExpression = pulumi.Input.asOptionalInput<String>(templateSelectionExpression);

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
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      contentHandlingStrategy: map['contentHandlingStrategy'] == null ? null : pulumi.Output.create<String>(map['contentHandlingStrategy'] as String),
      integrationId: pulumi.Output.create<String>(map['integrationId'] as String),
      integrationResponseKey: pulumi.Output.create<String>(map['integrationResponseKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      responseTemplates: map['responseTemplates'] == null ? null : pulumi.Output.create<Map<String, String>>((map['responseTemplates'] as Map).cast<String, String>()),
      templateSelectionExpression: map['templateSelectionExpression'] == null ? null : pulumi.Output.create<String>(map['templateSelectionExpression'] as String),
    );
  }
}

