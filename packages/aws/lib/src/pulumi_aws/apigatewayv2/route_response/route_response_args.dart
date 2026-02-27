// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RouteResponse.
class RouteResponseArgs {
  /// API identifier.
  final Input<String> apiId;

  /// The [model selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-model-selection-expressions) for the route response.
  final Input<String>? modelSelectionExpression;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Response models for the route response.
  final Input<Map<String, String>>? responseModels;

  /// Identifier of the `aws.apigatewayv2.Route`.
  final Input<String> routeId;

  /// Route response key.
  final Input<String> routeResponseKey;

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
      apiId: Input.asInput<String>(map['apiId']),
      modelSelectionExpression:
          Input.asOptionalInput<String>(map['modelSelectionExpression']),
      region: Input.asOptionalInput<String>(map['region']),
      responseModels:
          Input.asOptionalInput<Map<String, String>>(map['responseModels']),
      routeId: Input.asInput<String>(map['routeId']),
      routeResponseKey: Input.asInput<String>(map['routeResponseKey']),
    );
  }
}
