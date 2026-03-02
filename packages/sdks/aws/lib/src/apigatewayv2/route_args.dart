// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_request_parameter.dart';

/// {@template pulumi_apigatewayv2_route_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_route_route_args_doc}
class RouteArgs {
  /// API identifier.
  final pulumi.Input<String> apiId;
  /// Boolean whether an API key is required for the route. Defaults to `false`. Supported only for WebSocket APIs.
  final pulumi.Input<bool>? apiKeyRequired;
  /// Authorization scopes supported by this route. The scopes are used with a JWT authorizer to authorize the method invocation.
  final pulumi.Input<List<String>>? authorizationScopes;
  /// Authorization type for the route.
  /// For WebSocket APIs, valid values are `NONE` for open access, `AWS_IAM` for using AWS IAM permissions, and `CUSTOM` for using a Lambda authorizer.
  /// For HTTP APIs, valid values are `NONE` for open access, `JWT` for using JSON Web Tokens, `AWS_IAM` for using AWS IAM permissions, and `CUSTOM` for using a Lambda authorizer.
  /// Defaults to `NONE`.
  final pulumi.Input<String>? authorizationType;
  /// Identifier of the `aws.apigatewayv2.Authorizer` resource to be associated with this route.
  final pulumi.Input<String>? authorizerId;
  /// The [model selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-model-selection-expressions) for the route. Supported only for WebSocket APIs.
  final pulumi.Input<String>? modelSelectionExpression;
  /// Operation name for the route. Must be between 1 and 64 characters in length.
  final pulumi.Input<String>? operationName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Request models for the route. Supported only for WebSocket APIs.
  final pulumi.Input<Map<String, String>>? requestModels;
  /// Request parameters for the route. Supported only for WebSocket APIs.
  final pulumi.Input<List<RouteRequestParameter>>? requestParameters;
  /// Route key for the route. For HTTP APIs, the route key can be either `$default`, or a combination of an HTTP method and resource path, for example, `GET /pets`.
  final pulumi.Input<String> routeKey;
  /// The [route response selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-response-selection-expressions) for the route. Supported only for WebSocket APIs.
  final pulumi.Input<String>? routeResponseSelectionExpression;
  /// Target for the route, of the form `integrations/`*`IntegrationID`*, where *`IntegrationID`* is the identifier of an `aws.apigatewayv2.Integration` resource.
  final pulumi.Input<String>? target;

  /// Creates a new [RouteArgs].
  /// [apiId] API identifier.
  /// [apiKeyRequired] Boolean whether an API key is required for the route. Defaults to `false`. Supported only for WebSocket APIs.
  /// [authorizationScopes] Authorization scopes supported by this route. The scopes are used with a JWT authorizer to authorize the method invocation.
  /// [authorizationType] Authorization type for the route.
  /// [authorizerId] Identifier of the `aws.apigatewayv2.Authorizer` resource to be associated with this route.
  /// [modelSelectionExpression] The [model selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-model-selection-expressions) for the route. Supported only for WebSocket APIs.
  /// [operationName] Operation name for the route. Must be between 1 and 64 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestModels] Request models for the route. Supported only for WebSocket APIs.
  /// [requestParameters] Request parameters for the route. Supported only for WebSocket APIs.
  /// [routeKey] Route key for the route. For HTTP APIs, the route key can be either `$default`, or a combination of an HTTP method and resource path, for example, `GET /pets`.
  /// [routeResponseSelectionExpression] The [route response selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-response-selection-expressions) for the route. Supported only for WebSocket APIs.
  /// [target] Target for the route, of the form `integrations/`*`IntegrationID`*, where *`IntegrationID`* is the identifier of an `aws.apigatewayv2.Integration` resource.
  RouteArgs({
    required this.apiId,
    this.apiKeyRequired,
    this.authorizationScopes,
    this.authorizationType,
    this.authorizerId,
    this.modelSelectionExpression,
    this.operationName,
    this.region,
    this.requestModels,
    this.requestParameters,
    required this.routeKey,
    this.routeResponseSelectionExpression,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'apiKeyRequired': ?apiKeyRequired,
      'authorizationScopes': ?authorizationScopes,
      'authorizationType': ?authorizationType,
      'authorizerId': ?authorizerId,
      'modelSelectionExpression': ?modelSelectionExpression,
      'operationName': ?operationName,
      'region': ?region,
      'requestModels': ?requestModels,
      'requestParameters': ?pulumi.Input.mapOptionalInputValue<List<RouteRequestParameter>, List<Map<String, dynamic>>>(requestParameters, (value) => pulumi.Input.encodeList<RouteRequestParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeKey': routeKey,
      'routeResponseSelectionExpression': ?routeResponseSelectionExpression,
      'target': ?target,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      apiId: (map['apiId'] as String).input(),
      apiKeyRequired: map['apiKeyRequired'] == null ? null : (map['apiKeyRequired'] as bool).input(),
      authorizationScopes: map['authorizationScopes'] == null ? null : ((map['authorizationScopes'] as List).cast<String>()).input(),
      authorizationType: map['authorizationType'] == null ? null : (map['authorizationType'] as String).input(),
      authorizerId: map['authorizerId'] == null ? null : (map['authorizerId'] as String).input(),
      modelSelectionExpression: map['modelSelectionExpression'] == null ? null : (map['modelSelectionExpression'] as String).input(),
      operationName: map['operationName'] == null ? null : (map['operationName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      requestModels: map['requestModels'] == null ? null : ((map['requestModels'] as Map).cast<String, String>()).input(),
      requestParameters: map['requestParameters'] == null ? null : (pulumi.Input.decodeList<RouteRequestParameter>(map['requestParameters'], (value) => RouteRequestParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      routeKey: (map['routeKey'] as String).input(),
      routeResponseSelectionExpression: map['routeResponseSelectionExpression'] == null ? null : (map['routeResponseSelectionExpression'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
    );
  }
}

