// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IntegrationResponse resources.
class IntegrationResponseState {
  /// API identifier.
  final pulumi.Input<String>? apiId;
  /// How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`.
  final pulumi.Input<String>? contentHandlingStrategy;
  /// Identifier of the `aws.apigatewayv2.Integration`.
  final pulumi.Input<String>? integrationId;
  /// Integration response key.
  final pulumi.Input<String>? integrationResponseKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client.
  final pulumi.Input<Map<String, String>>? responseTemplates;
  /// The [template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration response.
  final pulumi.Input<String>? templateSelectionExpression;

  /// Creates a new [IntegrationResponseState].
  /// [apiId] API identifier.
  /// [contentHandlingStrategy] How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`.
  /// [integrationId] Identifier of the `aws.apigatewayv2.Integration`.
  /// [integrationResponseKey] Integration response key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [responseTemplates] Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client.
  /// [templateSelectionExpression] The [template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration response.
  IntegrationResponseState({
    this.apiId,
    this.contentHandlingStrategy,
    this.integrationId,
    this.integrationResponseKey,
    this.region,
    this.responseTemplates,
    this.templateSelectionExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'contentHandlingStrategy': ?contentHandlingStrategy,
      'integrationId': ?integrationId,
      'integrationResponseKey': ?integrationResponseKey,
      'region': ?region,
      'responseTemplates': ?responseTemplates,
      'templateSelectionExpression': ?templateSelectionExpression,
    };
  }

  factory IntegrationResponseState.fromMap(Map<String, dynamic> map) {
    return IntegrationResponseState(
      apiId: map['apiId'] == null ? null : (map['apiId'] as String).input(),
      contentHandlingStrategy: map['contentHandlingStrategy'] == null ? null : (map['contentHandlingStrategy'] as String).input(),
      integrationId: map['integrationId'] == null ? null : (map['integrationId'] as String).input(),
      integrationResponseKey: map['integrationResponseKey'] == null ? null : (map['integrationResponseKey'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      responseTemplates: map['responseTemplates'] == null ? null : ((map['responseTemplates'] as Map).cast<String, String>()).input(),
      templateSelectionExpression: map['templateSelectionExpression'] == null ? null : (map['templateSelectionExpression'] as String).input(),
    );
  }
}

