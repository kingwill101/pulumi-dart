import 'package:pulumi/pulumi.dart';
import '../api_cors_configuration/api_cors_configuration.dart';
import 'api_args.dart';

/// Manages an Amazon API Gateway Version 2 API.
///
/// > **Note:** Amazon API Gateway Version 2 resources are used for creating and deploying WebSocket and HTTP APIs. To create and deploy REST APIs, use Amazon API Gateway Version 1 resources.
///
/// ## Example Usage
///
/// ### Basic WebSocket API
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Api("example", {
/// name: "example-websocket-api",
/// protocolType: "WEBSOCKET",
/// routeSelectionExpression: "$request.body.action",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Api("example",
/// name="example-websocket-api",
/// protocol_type="WEBSOCKET",
/// route_selection_expression="$request.body.action")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGatewayV2.Api("example", new()
/// {
/// Name = "example-websocket-api",
/// ProtocolType = "WEBSOCKET",
/// RouteSelectionExpression = "$request.body.action",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigatewayv2.NewApi(ctx, "example", &apigatewayv2.ApiArgs{
/// Name:                     pulumi.String("example-websocket-api"),
/// ProtocolType:             pulumi.String("WEBSOCKET"),
/// RouteSelectionExpression: pulumi.String("$request.body.action"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Api("example", ApiArgs.builder()
/// .name("example-websocket-api")
/// .protocolType("WEBSOCKET")
/// .routeSelectionExpression("$request.body.action")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:Api
/// properties:
/// name: example-websocket-api
/// protocolType: WEBSOCKET
/// routeSelectionExpression: $request.body.action
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Basic HTTP API
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Api("example", {
/// name: "example-http-api",
/// protocolType: "HTTP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Api("example",
/// name="example-http-api",
/// protocol_type="HTTP")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGatewayV2.Api("example", new()
/// {
/// Name = "example-http-api",
/// ProtocolType = "HTTP",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigatewayv2.NewApi(ctx, "example", &apigatewayv2.ApiArgs{
/// Name:         pulumi.String("example-http-api"),
/// ProtocolType: pulumi.String("HTTP"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Api("example", ApiArgs.builder()
/// .name("example-http-api")
/// .protocolType("HTTP")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:Api
/// properties:
/// name: example-http-api
/// protocolType: HTTP
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigatewayv2.Api`" pulumi-lang-dotnet="`aws.apigatewayv2.Api`" pulumi-lang-go="`apigatewayv2.Api`" pulumi-lang-python="`apigatewayv2.Api`" pulumi-lang-yaml="`aws.apigatewayv2.Api`" pulumi-lang-java="`aws.apigatewayv2.Api`">`aws.apigatewayv2.Api`</span> using the API identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/api:Api example aabbccddee
/// ```
class Api extends CustomResource {
  /// URI of the API, of the form `https://{api-id}.execute-api.{region}.amazonaws.com` for HTTP APIs and `wss://{api-id}.execute-api.{region}.amazonaws.com` for WebSocket APIs.
  late final Output<String> apiEndpoint;

  /// An [API key selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).
  /// Valid values: `$context.authorizer.usageIdentifierKey`, `$request.header.x-api-key`. Defaults to `$request.header.x-api-key`.
  /// Applicable for WebSocket APIs.
  late final Output<String?> apiKeySelectionExpression;

  /// ARN of the API.
  late final Output<String> arn;

  /// An OpenAPI specification that defines the set of routes and integrations to create as part of the HTTP APIs. Supported only for HTTP APIs.
  late final Output<String?> body;

  /// Cross-origin resource sharing (CORS) [configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html). Applicable for HTTP APIs.
  late final Output<ApiCorsConfiguration?> corsConfiguration;

  /// Part of _quick create_. Specifies any credentials required for the integration. Applicable for HTTP APIs.
  late final Output<String?> credentialsArn;

  /// Description of the API. Must be less than or equal to 1024 characters in length.
  late final Output<String?> description;

  /// Whether clients can invoke the API by using the default `execute-api` endpoint.
  /// By default, clients can invoke the API with the default `{api_id}.execute-api.{region}.amazonaws.com endpoint`.
  /// To require that clients use a custom domain name to invoke the API, disable the default endpoint.
  late final Output<bool?> disableExecuteApiEndpoint;

  /// ARN prefix to be used in an <span pulumi-lang-nodejs="`aws.lambda.Permission`" pulumi-lang-dotnet="`aws.lambda.Permission`" pulumi-lang-go="`lambda.Permission`" pulumi-lang-python="`lambda.Permission`" pulumi-lang-yaml="`aws.lambda.Permission`" pulumi-lang-java="`aws.lambda.Permission`">`aws.lambda.Permission`</span>'s <span pulumi-lang-nodejs="`sourceArn`" pulumi-lang-dotnet="`SourceArn`" pulumi-lang-go="`sourceArn`" pulumi-lang-python="`source_arn`" pulumi-lang-yaml="`sourceArn`" pulumi-lang-java="`sourceArn`">`source_arn`</span> attribute
  /// or in an <span pulumi-lang-nodejs="`aws.iam.Policy`" pulumi-lang-dotnet="`aws.iam.Policy`" pulumi-lang-go="`iam.Policy`" pulumi-lang-python="`iam.Policy`" pulumi-lang-yaml="`aws.iam.Policy`" pulumi-lang-java="`aws.iam.Policy`">`aws.iam.Policy`</span> to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html).
  /// See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-control-access-iam.html) for details.
  late final Output<String> executionArn;

  /// Whether warnings should return an error while API Gateway is creating or updating the resource using an OpenAPI specification. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Applicable for HTTP APIs.
  late final Output<bool?> failOnWarnings;

  /// The IP address types that can invoke the API. Valid values: <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>. Use <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span> to allow only IPv4 addresses to invoke your API, or use <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span> to allow both IPv4 and IPv6 addresses to invoke your API. Defaults to <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>.
  late final Output<String> ipAddressType;

  /// Name of the API. Must be less than or equal to 128 characters in length.
  late final Output<String> name;

  /// API protocol. Valid values: `HTTP`, `WEBSOCKET`.
  late final Output<String> protocolType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Part of _quick create_. Specifies any [route key](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-routes.html). Applicable for HTTP APIs.
  late final Output<String?> routeKey;

  /// The [route selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-selection-expressions) for the API.
  /// Defaults to `$request.method $request.path`.
  late final Output<String?> routeSelectionExpression;

  /// Map of tags to assign to the API. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Part of _quick create_. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes.
  /// For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN.
  /// The type of the integration will be `HTTP_PROXY` or `AWS_PROXY`, respectively. Applicable for HTTP APIs.
  late final Output<String?> target;

  /// Version identifier for the API. Must be between 1 and 64 characters in length.
  late final Output<String?> version;

  Api(
    String name, {
    ApiArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/api:Api',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiEndpoint = Output.createUnknown<String>();
    this.apiKeySelectionExpression = Output.createUnknown<String?>();
    this.arn = Output.createUnknown<String>();
    this.body = Output.createUnknown<String?>();
    this.corsConfiguration = Output.createUnknown<ApiCorsConfiguration?>();
    this.credentialsArn = Output.createUnknown<String?>();
    this.description = Output.createUnknown<String?>();
    this.disableExecuteApiEndpoint = Output.createUnknown<bool?>();
    this.executionArn = Output.createUnknown<String>();
    this.failOnWarnings = Output.createUnknown<bool?>();
    this.ipAddressType = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.protocolType = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.routeKey = Output.createUnknown<String?>();
    this.routeSelectionExpression = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.target = Output.createUnknown<String?>();
    this.version = Output.createUnknown<String?>();
  }
}
