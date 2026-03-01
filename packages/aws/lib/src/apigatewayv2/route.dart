import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_args.dart';
import 'route_request_parameter.dart';

/// Manages an Amazon API Gateway Version 2 route.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html) for [WebSocket](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-develop-routes.html) and [HTTP](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-routes.html) APIs.
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
/// const example = new aws.apigatewayv2.Api("example", {
///     name: "example-websocket-api",
///     protocolType: "WEBSOCKET",
///     routeSelectionExpression: "$request.body.action",
/// });
/// const exampleRoute = new aws.apigatewayv2.Route("example", {
///     apiId: example.id,
///     routeKey: "$default",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Api("example",
///     name="example-websocket-api",
///     protocol_type="WEBSOCKET",
///     route_selection_expression="$request.body.action")
/// example_route = aws.apigatewayv2.Route("example",
///     api_id=example.id,
///     route_key="$default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGatewayV2.Api("example", new()
///     {
///         Name = "example-websocket-api",
///         ProtocolType = "WEBSOCKET",
///         RouteSelectionExpression = "$request.body.action",
///     });
///
///     var exampleRoute = new Aws.ApiGatewayV2.Route("example", new()
///     {
///         ApiId = example.Id,
///         RouteKey = "$default",
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
/// 		example, err := apigatewayv2.NewApi(ctx, "example", &apigatewayv2.ApiArgs{
/// 			Name:                     pulumi.String("example-websocket-api"),
/// 			ProtocolType:             pulumi.String("WEBSOCKET"),
/// 			RouteSelectionExpression: pulumi.String("$request.body.action"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigatewayv2.NewRoute(ctx, "example", &apigatewayv2.RouteArgs{
/// 			ApiId:    example.ID(),
/// 			RouteKey: pulumi.String("$default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.Api;
/// import com.pulumi.aws.apigatewayv2.ApiArgs;
/// import com.pulumi.aws.apigatewayv2.Route;
/// import com.pulumi.aws.apigatewayv2.RouteArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Api("example", ApiArgs.builder()
///             .name("example-websocket-api")
///             .protocolType("WEBSOCKET")
///             .routeSelectionExpression("$request.body.action")
///             .build());
///
///         var exampleRoute = new Route("exampleRoute", RouteArgs.builder()
///             .apiId(example.id())
///             .routeKey("$default")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:Api
///     properties:
///       name: example-websocket-api
///       protocolType: WEBSOCKET
///       routeSelectionExpression: $request.body.action
///   exampleRoute:
///     type: aws:apigatewayv2:Route
///     name: example
///     properties:
///       apiId: ${example.id}
///       routeKey: $default
/// ```
///
///
/// ### HTTP Proxy Integration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Api("example", {
///     name: "example-http-api",
///     protocolType: "HTTP",
/// });
/// const exampleIntegration = new aws.apigatewayv2.Integration("example", {
///     apiId: example.id,
///     integrationType: "HTTP_PROXY",
///     integrationMethod: "ANY",
///     integrationUri: "https://example.com/{proxy}",
/// });
/// const exampleRoute = new aws.apigatewayv2.Route("example", {
///     apiId: example.id,
///     routeKey: "ANY /example/{proxy+}",
///     target: pulumi.interpolate`integrations/${exampleIntegration.id}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Api("example",
///     name="example-http-api",
///     protocol_type="HTTP")
/// example_integration = aws.apigatewayv2.Integration("example",
///     api_id=example.id,
///     integration_type="HTTP_PROXY",
///     integration_method="ANY",
///     integration_uri="https://example.com/{proxy}")
/// example_route = aws.apigatewayv2.Route("example",
///     api_id=example.id,
///     route_key="ANY /example/{proxy+}",
///     target=example_integration.id.apply(lambda id: f"integrations/{id}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGatewayV2.Api("example", new()
///     {
///         Name = "example-http-api",
///         ProtocolType = "HTTP",
///     });
///
///     var exampleIntegration = new Aws.ApiGatewayV2.Integration("example", new()
///     {
///         ApiId = example.Id,
///         IntegrationType = "HTTP_PROXY",
///         IntegrationMethod = "ANY",
///         IntegrationUri = "https://example.com/{proxy}",
///     });
///
///     var exampleRoute = new Aws.ApiGatewayV2.Route("example", new()
///     {
///         ApiId = example.Id,
///         RouteKey = "ANY /example/{proxy+}",
///         Target = exampleIntegration.Id.Apply(id => $"integrations/{id}"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := apigatewayv2.NewApi(ctx, "example", &apigatewayv2.ApiArgs{
/// 			Name:         pulumi.String("example-http-api"),
/// 			ProtocolType: pulumi.String("HTTP"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleIntegration, err := apigatewayv2.NewIntegration(ctx, "example", &apigatewayv2.IntegrationArgs{
/// 			ApiId:             example.ID(),
/// 			IntegrationType:   pulumi.String("HTTP_PROXY"),
/// 			IntegrationMethod: pulumi.String("ANY"),
/// 			IntegrationUri:    pulumi.String("https://example.com/{proxy}"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigatewayv2.NewRoute(ctx, "example", &apigatewayv2.RouteArgs{
/// 			ApiId:    example.ID(),
/// 			RouteKey: pulumi.String("ANY /example/{proxy+}"),
/// 			Target: exampleIntegration.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("integrations/%v", id), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.Api;
/// import com.pulumi.aws.apigatewayv2.ApiArgs;
/// import com.pulumi.aws.apigatewayv2.Integration;
/// import com.pulumi.aws.apigatewayv2.IntegrationArgs;
/// import com.pulumi.aws.apigatewayv2.Route;
/// import com.pulumi.aws.apigatewayv2.RouteArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Api("example", ApiArgs.builder()
///             .name("example-http-api")
///             .protocolType("HTTP")
///             .build());
///
///         var exampleIntegration = new Integration("exampleIntegration", IntegrationArgs.builder()
///             .apiId(example.id())
///             .integrationType("HTTP_PROXY")
///             .integrationMethod("ANY")
///             .integrationUri("https://example.com/{proxy}")
///             .build());
///
///         var exampleRoute = new Route("exampleRoute", RouteArgs.builder()
///             .apiId(example.id())
///             .routeKey("ANY /example/{proxy+}")
///             .target(exampleIntegration.id().applyValue(_id -> String.format("integrations/%s", _id)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:Api
///     properties:
///       name: example-http-api
///       protocolType: HTTP
///   exampleIntegration:
///     type: aws:apigatewayv2:Integration
///     name: example
///     properties:
///       apiId: ${example.id}
///       integrationType: HTTP_PROXY
///       integrationMethod: ANY
///       integrationUri: https://example.com/{proxy}
///   exampleRoute:
///     type: aws:apigatewayv2:Route
///     name: example
///     properties:
///       apiId: ${example.id}
///       routeKey: ANY /example/{proxy+}
///       target: integrations/${exampleIntegration.id}
/// ```
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

  /// Creates a new [Route].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route]. {@macro pulumi_apigatewayv2_route_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route(String name, {RouteArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:apigatewayv2/route:Route',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.apiId = registerOutput<String>('apiId');
    this.apiKeyRequired = registerOutput<bool?>('apiKeyRequired');
    this.authorizationScopes = registerOutput<List<String>?>(
      'authorizationScopes',
    );
    this.authorizationType = registerOutput<String?>('authorizationType');
    this.authorizerId = registerOutput<String?>('authorizerId');
    this.modelSelectionExpression = registerOutput<String?>(
      'modelSelectionExpression',
    );
    this.operationName = registerOutput<String?>('operationName');
    this.region = registerOutput<String>('region');
    this.requestModels = registerOutput<Map<String, String>?>('requestModels');
    this.requestParameters = registerOutput<List<RouteRequestParameter>?>(
      'requestParameters',
    );
    this.routeKey = registerOutput<String>('routeKey');
    this.routeResponseSelectionExpression = registerOutput<String?>(
      'routeResponseSelectionExpression',
    );
    this.target = registerOutput<String?>('target');
  }
}
