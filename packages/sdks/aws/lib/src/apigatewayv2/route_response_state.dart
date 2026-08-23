// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteResponse resources.
class RouteResponseState {
  /// API identifier.
  final pulumi.Input<String>? apiId;
  /// [Model selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-model-selection-expressions) for the route response.
  final pulumi.Input<String>? modelSelectionExpression;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Response models for the route response.
  final pulumi.Input<Map<String, String>>? responseModels;
  /// Identifier of the `aws.apigatewayv2.Route`.
  final pulumi.Input<String>? routeId;
  /// Route response key.
  final pulumi.Input<String>? routeResponseKey;

  /// Creates a new [RouteResponseState].
  /// [apiId] API identifier.
  /// [modelSelectionExpression] [Model selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-model-selection-expressions) for the route response.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [responseModels] Response models for the route response.
  /// [routeId] Identifier of the `aws.apigatewayv2.Route`.
  /// [routeResponseKey] Route response key.
  const RouteResponseState({
    this.apiId,
    this.modelSelectionExpression,
    this.region,
    this.responseModels,
    this.routeId,
    this.routeResponseKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'modelSelectionExpression': ?modelSelectionExpression,
      'region': ?region,
      'responseModels': ?responseModels,
      'routeId': ?routeId,
      'routeResponseKey': ?routeResponseKey,
    };
  }

  factory RouteResponseState.fromMap(Map<String, dynamic> map) {
    return RouteResponseState(
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelSelectionExpression: (() { final guardedValue = map['modelSelectionExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseModels: (() { final guardedValue = map['responseModels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      routeId: (() { final guardedValue = map['routeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeResponseKey: (() { final guardedValue = map['routeResponseKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
