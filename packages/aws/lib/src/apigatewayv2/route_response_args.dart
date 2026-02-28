// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigatewayv2_route_response_route_response_args_doc}
/// The set of arguments for RouteResponse.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_route_response_route_response_args_doc}
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

  /// Creates a new [RouteResponseArgs].
  /// [apiId] API identifier.
  /// [modelSelectionExpression] The [model selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-model-selection-expressions) for the route response.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [responseModels] Response models for the route response.
  /// [routeId] Identifier of the `aws.apigatewayv2.Route`.
  /// [routeResponseKey] Route response key.
  RouteResponseArgs({
    required String apiId,
    String? modelSelectionExpression,
    String? region,
    Map<String, String>? responseModels,
    required String routeId,
    required String routeResponseKey,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      modelSelectionExpression = pulumi.Input.asOptionalInput<String>(modelSelectionExpression),
      region = pulumi.Input.asOptionalInput<String>(region),
      responseModels = pulumi.Input.asOptionalInput<Map<String, String>>(responseModels),
      routeId = pulumi.Input.asInput<String>(routeId),
      routeResponseKey = pulumi.Input.asInput<String>(routeResponseKey);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'modelSelectionExpression': ?modelSelectionExpression,
      'region': ?region,
      'responseModels': ?responseModels,
      'routeId': routeId,
      'routeResponseKey': routeResponseKey,
    };
  }

  factory RouteResponseArgs.fromMap(Map<String, dynamic> map) {
    return RouteResponseArgs(
      apiId: map['apiId'] as String,
      modelSelectionExpression: map['modelSelectionExpression'] == null ? null : map['modelSelectionExpression'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      responseModels: map['responseModels'] == null ? null : (map['responseModels'] as Map).cast<String, String>(),
      routeId: map['routeId'] as String,
      routeResponseKey: map['routeResponseKey'] as String,
    );
  }
}

