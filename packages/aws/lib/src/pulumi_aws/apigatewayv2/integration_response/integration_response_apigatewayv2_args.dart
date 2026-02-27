// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for IntegrationResponse.
class IntegrationResponseApigatewayv2Args {
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

  IntegrationResponseApigatewayv2Args({
    required this.apiId,
    this.contentHandlingStrategy,
    required this.integrationId,
    required this.integrationResponseKey,
    this.region,
    this.responseTemplates,
    this.templateSelectionExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final contentHandlingStrategyValue = contentHandlingStrategy;
    if (contentHandlingStrategyValue != null) {
      map['contentHandlingStrategy'] = contentHandlingStrategyValue;
    }
    map['integrationId'] = integrationId;
    map['integrationResponseKey'] = integrationResponseKey;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final responseTemplatesValue = responseTemplates;
    if (responseTemplatesValue != null) {
      map['responseTemplates'] = responseTemplatesValue;
    }
    final templateSelectionExpressionValue = templateSelectionExpression;
    if (templateSelectionExpressionValue != null) {
      map['templateSelectionExpression'] = templateSelectionExpressionValue;
    }
    return map;
  }

  factory IntegrationResponseApigatewayv2Args.fromMap(
      Map<String, dynamic> map) {
    return IntegrationResponseApigatewayv2Args(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      contentHandlingStrategy:
          pulumi.Input.asOptionalInput<String>(map['contentHandlingStrategy']),
      integrationId: pulumi.Input.asInput<String>(map['integrationId']),
      integrationResponseKey:
          pulumi.Input.asInput<String>(map['integrationResponseKey']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      responseTemplates: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['responseTemplates']),
      templateSelectionExpression: pulumi.Input.asOptionalInput<String>(
          map['templateSelectionExpression']),
    );
  }
}
