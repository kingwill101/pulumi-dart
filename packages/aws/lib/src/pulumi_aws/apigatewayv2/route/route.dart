import 'package:pulumi/pulumi.dart' as pulumi;
import '../route_request_parameter/route_request_parameter.dart';
import 'route_args.dart';

/// Manages an Amazon API Gateway Version 2 route.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html) for [WebSocket](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-develop-routes.html) and [HTTP](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-routes.html) APIs.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### HTTP Proxy Integration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.Route` using the API identifier and route identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/route:Route example aabbccddee/1122334
/// ```
///
/// > **Note:** The API Gateway managed route created as part of [_quick_create_](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-basic-concept.html#apigateway-definition-quick-create) cannot be imported.
class Route extends pulumi.CustomResource {
  /// API identifier.
  late final pulumi.Output<String> apiId;

  /// Boolean whether an API key is required for the route. Defaults to `false`. Supported only for WebSocket APIs.
  late final pulumi.Output<bool?> apiKeyRequired;

  /// Authorization scopes supported by this route. The scopes are used with a JWT authorizer to authorize the method invocation.
  late final pulumi.Output<List<String>?> authorizationScopes;

  /// Authorization type for the route.
  /// For WebSocket APIs, valid values are `NONE` for open access, `AWS_IAM` for using AWS IAM permissions, and `CUSTOM` for using a Lambda authorizer.
  /// For HTTP APIs, valid values are `NONE` for open access, `JWT` for using JSON Web Tokens, `AWS_IAM` for using AWS IAM permissions, and `CUSTOM` for using a Lambda authorizer.
  /// Defaults to `NONE`.
  late final pulumi.Output<String?> authorizationType;

  /// Identifier of the `aws.apigatewayv2.Authorizer` resource to be associated with this route.
  late final pulumi.Output<String?> authorizerId;

  /// The [model selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-model-selection-expressions) for the route. Supported only for WebSocket APIs.
  late final pulumi.Output<String?> modelSelectionExpression;

  /// Operation name for the route. Must be between 1 and 64 characters in length.
  late final pulumi.Output<String?> operationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Request models for the route. Supported only for WebSocket APIs.
  late final pulumi.Output<Map<String, String>?> requestModels;

  /// Request parameters for the route. Supported only for WebSocket APIs.
  late final pulumi.Output<List<RouteRequestParameter>?> requestParameters;

  /// Route key for the route. For HTTP APIs, the route key can be either `$default`, or a combination of an HTTP method and resource path, for example, `GET /pets`.
  late final pulumi.Output<String> routeKey;

  /// The [route response selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-response-selection-expressions) for the route. Supported only for WebSocket APIs.
  late final pulumi.Output<String?> routeResponseSelectionExpression;

  /// Target for the route, of the form `integrations/`*`IntegrationID`*, where *`IntegrationID`* is the identifier of an `aws.apigatewayv2.Integration` resource.
  late final pulumi.Output<String?> target;

  Route(
    String name, {
    RouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/route:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.apiKeyRequired = registerOutput<bool?>('apiKeyRequired');
    this.authorizationScopes =
        registerOutput<List<String>?>('authorizationScopes');
    this.authorizationType = registerOutput<String?>('authorizationType');
    this.authorizerId = registerOutput<String?>('authorizerId');
    this.modelSelectionExpression =
        registerOutput<String?>('modelSelectionExpression');
    this.operationName = registerOutput<String?>('operationName');
    this.region = registerOutput<String>('region');
    this.requestModels = registerOutput<Map<String, String>?>('requestModels');
    this.requestParameters =
        registerOutput<List<RouteRequestParameter>?>('requestParameters');
    this.routeKey = registerOutput<String>('routeKey');
    this.routeResponseSelectionExpression =
        registerOutput<String?>('routeResponseSelectionExpression');
    this.target = registerOutput<String?>('target');
  }
}
