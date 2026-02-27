// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RouteResponse.
class RouteResponseArgs {
  /// API identifier.
  final pulumi.Input<String> apiId;

  /// The [model selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-model-selection-expressions) for the route response.
  final pulumi.Input<String>? modelSelectionExpression;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Response models for the route response.
  final pulumi.Input<Map<String, String>>? responseModels;

  /// Identifier of the `aws.apigatewayv2.Route`.
  final pulumi.Input<String> routeId;

  /// Route response key.
  final pulumi.Input<String> routeResponseKey;

  RouteResponseArgs({
    required this.apiId,
    this.modelSelectionExpression,
    this.region,
    this.responseModels,
    required this.routeId,
    required this.routeResponseKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final modelSelectionExpressionValue = modelSelectionExpression;
    if (modelSelectionExpressionValue != null) {
      map['modelSelectionExpression'] = modelSelectionExpressionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final responseModelsValue = responseModels;
    if (responseModelsValue != null) {
      map['responseModels'] = responseModelsValue;
    }
    map['routeId'] = routeId;
    map['routeResponseKey'] = routeResponseKey;
    return map;
  }

  factory RouteResponseArgs.fromMap(Map<String, dynamic> map) {
    return RouteResponseArgs(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      modelSelectionExpression:
          pulumi.Input.asOptionalInput<String>(map['modelSelectionExpression']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      responseModels: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['responseModels']),
      routeId: pulumi.Input.asInput<String>(map['routeId']),
      routeResponseKey: pulumi.Input.asInput<String>(map['routeResponseKey']),
    );
  }
}
