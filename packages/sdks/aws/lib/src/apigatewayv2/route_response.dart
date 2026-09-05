import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_response_args.dart';
import 'route_response_state.dart';

/// Manages an Amazon API Gateway Version 2 route response.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html).
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.RouteResponse("example", {
///     apiId: exampleAwsApigatewayv2Api.id,
///     routeId: exampleAwsApigatewayv2Route.id,
///     routeResponseKey: "$default",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.RouteResponse("example",
///     api_id=example_aws_apigatewayv2_api["id"],
///     route_id=example_aws_apigatewayv2_route["id"],
///     route_response_key="$default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGatewayV2.RouteResponse("example", new()
///     {
///         ApiId = exampleAwsApigatewayv2Api.Id,
///         RouteId = exampleAwsApigatewayv2Route.Id,
///         RouteResponseKey = "$default",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigatewayv2.NewRouteResponse(ctx, "example", &apigatewayv2.RouteResponseArgs{
/// 			ApiId:            pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// 			RouteId:          pulumi.Any(exampleAwsApigatewayv2Route.Id),
/// 			RouteResponseKey: pulumi.String("$default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_apigatewayv2_routeresponse" "example" {
///   api_id             = exampleAwsApigatewayv2Api.id
///   route_id           = exampleAwsApigatewayv2Route.id
///   route_response_key = "$default"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.RouteResponse;
/// import com.pulumi.aws.apigatewayv2.RouteResponseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new RouteResponse("example", RouteResponseArgs.builder()
///             .apiId(exampleAwsApigatewayv2Api.id())
///             .routeId(exampleAwsApigatewayv2Route.id())
///             .routeResponseKey("$default")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:RouteResponse
///     properties:
///       apiId: ${exampleAwsApigatewayv2Api.id}
///       routeId: ${exampleAwsApigatewayv2Route.id}
///       routeResponseKey: $default
/// ```
///
///
/// &gt; **Note:** For WebSocket routes requiring two-way communication, add an `aws.apigatewayv2.RouteResponse` to the route with `routeResponseKey = "$default"`. Only the `$default` route response is supported. Use an integration response to manipulate backend responses — see [Overview of integration responses](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-integration-responses.html#apigateway-websocket-api-integration-response-overview).
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
  /// [Model selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-model-selection-expressions) for the route response.
  late final pulumi.Output<String?> modelSelectionExpression;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Response models for the route response.
  late final pulumi.Output<Map<String, String>?> responseModels;
  /// Identifier of the `aws.apigatewayv2.Route`.
  late final pulumi.Output<String> routeId;
  /// Route response key.
  late final pulumi.Output<String> routeResponseKey;

  /// Creates a new [RouteResponse].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteResponse]. {@macro pulumi_apigatewayv2_route_response_route_response_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteResponse(
    String name, {
    RouteResponseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/routeResponse:RouteResponse',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    apiId = registerOutput<String>('apiId');
    modelSelectionExpression = registerOutput<String?>('modelSelectionExpression');
    region = registerOutput<String>('region');
    responseModels = registerOutput<Map<String, String>?>('responseModels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    routeId = registerOutput<String>('routeId');
    routeResponseKey = registerOutput<String>('routeResponseKey');
  }

  /// Gets an existing [RouteResponse] resource's state with the given [name] and [id].
  static RouteResponse get(
    String name,
    pulumi.Input<String> id, {
    RouteResponseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RouteResponse._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RouteResponse._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/routeResponse:RouteResponse',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String>('apiId');
    modelSelectionExpression = registerOutput<String?>('modelSelectionExpression');
    region = registerOutput<String>('region');
    responseModels = registerOutput<Map<String, String>?>('responseModels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    routeId = registerOutput<String>('routeId');
    routeResponseKey = registerOutput<String>('routeResponseKey');
  }

  /// Creates a typed reference to an existing [RouteResponse] resource.
  RouteResponse.reference(String urn)
    : super(
        'aws:apigatewayv2/routeResponse:RouteResponse',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiId = registerOutput<String>('apiId');
    modelSelectionExpression = registerOutput<String?>('modelSelectionExpression');
    region = registerOutput<String>('region');
    responseModels = registerOutput<Map<String, String>?>('responseModels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    routeId = registerOutput<String>('routeId');
    routeResponseKey = registerOutput<String>('routeResponseKey');
  }
}
