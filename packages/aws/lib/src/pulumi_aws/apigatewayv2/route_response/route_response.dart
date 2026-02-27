import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_response_args.dart';

/// Manages an Amazon API Gateway Version 2 route response.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html).
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ## Enabling Two-Way Communication
///
/// For websocket routes that require two-way communication enabled, an `aws.apigatewayv2.RouteResponse` needs to be added to the route with `route_response_key = "$default"`. More information available  is available in [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html).
///
/// You can only define the $default route response for WebSocket APIs. You can use an integration response to manipulate the response from a backend service. For more information, see [Overview of integration responses](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-integration-responses.html#apigateway-websocket-api-integration-response-overview).
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.RouteResponse` using the API identifier, route identifier and route response identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/routeResponse:RouteResponse example aabbccddee/1122334/998877
/// ```
class RouteResponse extends pulumi.CustomResource {
  /// API identifier.
  late final pulumi.Output<String> apiId;

  /// The [model selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-model-selection-expressions) for the route response.
  late final pulumi.Output<String?> modelSelectionExpression;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Response models for the route response.
  late final pulumi.Output<Map<String, String>?> responseModels;

  /// Identifier of the `aws.apigatewayv2.Route`.
  late final pulumi.Output<String> routeId;

  /// Route response key.
  late final pulumi.Output<String> routeResponseKey;

  RouteResponse(
    String name, {
    RouteResponseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/routeResponse:RouteResponse',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.modelSelectionExpression =
        registerOutput<String?>('modelSelectionExpression');
    this.region = registerOutput<String>('region');
    this.responseModels =
        registerOutput<Map<String, String>?>('responseModels');
    this.routeId = registerOutput<String>('routeId');
    this.routeResponseKey = registerOutput<String>('routeResponseKey');
  }
}
