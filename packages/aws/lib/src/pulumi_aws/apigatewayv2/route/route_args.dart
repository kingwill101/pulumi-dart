// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../route_request_parameter/route_request_parameter.dart';

/// The set of arguments for Route.
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
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      apiKeyRequired: pulumi.Input.asOptionalInput<bool>(map['apiKeyRequired']),
      authorizationScopes: pulumi.Input.asOptionalInput<List<String>>(
          map['authorizationScopes']),
      authorizationType:
          pulumi.Input.asOptionalInput<String>(map['authorizationType']),
      authorizerId: pulumi.Input.asOptionalInput<String>(map['authorizerId']),
      modelSelectionExpression:
          pulumi.Input.asOptionalInput<String>(map['modelSelectionExpression']),
      operationName: pulumi.Input.asOptionalInput<String>(map['operationName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requestModels: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['requestModels']),
      requestParameters:
          pulumi.Input.asOptionalInput<List<RouteRequestParameter>>(
              map['requestParameters']),
      routeKey: pulumi.Input.asInput<String>(map['routeKey']),
      routeResponseSelectionExpression: pulumi.Input.asOptionalInput<String>(
          map['routeResponseSelectionExpression']),
      target: pulumi.Input.asOptionalInput<String>(map['target']),
    );
  }
}
