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
    required String apiId,
    bool? apiKeyRequired,
    List<String>? authorizationScopes,
    String? authorizationType,
    String? authorizerId,
    String? modelSelectionExpression,
    String? operationName,
    String? region,
    Map<String, String>? requestModels,
    List<RouteRequestParameter>? requestParameters,
    required String routeKey,
    String? routeResponseSelectionExpression,
    String? target,
  })  : apiId = pulumi.Input.asInput<String>(apiId),
        apiKeyRequired = pulumi.Input.asOptionalInput<bool>(apiKeyRequired),
        authorizationScopes =
            pulumi.Input.asOptionalInput<List<String>>(authorizationScopes),
        authorizationType =
            pulumi.Input.asOptionalInput<String>(authorizationType),
        authorizerId = pulumi.Input.asOptionalInput<String>(authorizerId),
        modelSelectionExpression =
            pulumi.Input.asOptionalInput<String>(modelSelectionExpression),
        operationName = pulumi.Input.asOptionalInput<String>(operationName),
        region = pulumi.Input.asOptionalInput<String>(region),
        requestModels =
            pulumi.Input.asOptionalInput<Map<String, String>>(requestModels),
        requestParameters =
            pulumi.Input.asOptionalInput<List<RouteRequestParameter>>(
                requestParameters),
        routeKey = pulumi.Input.asInput<String>(routeKey),
        routeResponseSelectionExpression = pulumi.Input.asOptionalInput<String>(
            routeResponseSelectionExpression),
        target = pulumi.Input.asOptionalInput<String>(target);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final apiKeyRequiredValue = apiKeyRequired;
    if (apiKeyRequiredValue != null) {
      map['apiKeyRequired'] = apiKeyRequiredValue;
    }
    final authorizationScopesValue = authorizationScopes;
    if (authorizationScopesValue != null) {
      map['authorizationScopes'] = authorizationScopesValue;
    }
    final authorizationTypeValue = authorizationType;
    if (authorizationTypeValue != null) {
      map['authorizationType'] = authorizationTypeValue;
    }
    final authorizerIdValue = authorizerId;
    if (authorizerIdValue != null) {
      map['authorizerId'] = authorizerIdValue;
    }
    final modelSelectionExpressionValue = modelSelectionExpression;
    if (modelSelectionExpressionValue != null) {
      map['modelSelectionExpression'] = modelSelectionExpressionValue;
    }
    final operationNameValue = operationName;
    if (operationNameValue != null) {
      map['operationName'] = operationNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requestModelsValue = requestModels;
    if (requestModelsValue != null) {
      map['requestModels'] = requestModelsValue;
    }
    final requestParametersValue = requestParameters;
    if (requestParametersValue != null) {
      map['requestParameters'] = pulumi.Input.mapOptionalInputValue<
              List<RouteRequestParameter>, List<Map<String, dynamic>>>(
          requestParametersValue,
          (value) => pulumi.Input.encodeList<RouteRequestParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['routeKey'] = routeKey;
    final routeResponseSelectionExpressionValue =
        routeResponseSelectionExpression;
    if (routeResponseSelectionExpressionValue != null) {
      map['routeResponseSelectionExpression'] =
          routeResponseSelectionExpressionValue;
    }
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue;
    }
    return map;
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      apiId: map['apiId'] as String,
      apiKeyRequired:
          map['apiKeyRequired'] == null ? null : map['apiKeyRequired'] as bool,
      authorizationScopes: map['authorizationScopes'] == null
          ? null
          : (map['authorizationScopes'] as List).cast<String>(),
      authorizationType: map['authorizationType'] == null
          ? null
          : map['authorizationType'] as String,
      authorizerId:
          map['authorizerId'] == null ? null : map['authorizerId'] as String,
      modelSelectionExpression: map['modelSelectionExpression'] == null
          ? null
          : map['modelSelectionExpression'] as String,
      operationName:
          map['operationName'] == null ? null : map['operationName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      requestModels: map['requestModels'] == null
          ? null
          : (map['requestModels'] as Map).cast<String, String>(),
      requestParameters: map['requestParameters'] == null
          ? null
          : pulumi.Input.decodeList<RouteRequestParameter>(
              map['requestParameters'],
              (value) => RouteRequestParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      routeKey: map['routeKey'] as String,
      routeResponseSelectionExpression:
          map['routeResponseSelectionExpression'] == null
              ? null
              : map['routeResponseSelectionExpression'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}
