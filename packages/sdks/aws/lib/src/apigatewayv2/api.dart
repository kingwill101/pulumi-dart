import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_args.dart';
import 'api_cors_configuration.dart';
import 'api_state.dart';

/// Manages an Amazon API Gateway Version 2 API.
///
/// &gt; **Note:** Amazon API Gateway Version 2 resources are used for creating and deploying WebSocket and HTTP APIs. To create and deploy REST APIs, use Amazon API Gateway Version 1 resources.
///
/// ## Example Usage
///
/// ### Basic WebSocket API
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Api("example",
///     name="example-websocket-api",
///     protocol_type="WEBSOCKET",
///     route_selection_expression="$request.body.action")
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
/// 		_, err := apigatewayv2.NewApi(ctx, "example", &apigatewayv2.ApiArgs{
/// 			Name:                     pulumi.String("example-websocket-api"),
/// 			ProtocolType:             pulumi.String("WEBSOCKET"),
/// 			RouteSelectionExpression: pulumi.String("$request.body.action"),
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
/// ```
///
///
/// ### Basic HTTP API
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Api("example",
///     name="example-http-api",
///     protocol_type="HTTP")
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
/// 		_, err := apigatewayv2.NewApi(ctx, "example", &apigatewayv2.ApiArgs{
/// 			Name:         pulumi.String("example-http-api"),
/// 			ProtocolType: pulumi.String("HTTP"),
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
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.Api` using the API identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/api:Api example aabbccddee
/// ```
class Api extends pulumi.CustomResource {
  /// URI of the API, of the form `https://{api-id}.execute-api.{region}.amazonaws.com` for HTTP APIs and `wss://{api-id}.execute-api.{region}.amazonaws.com` for WebSocket APIs.
  late final pulumi.Output<String> apiEndpoint;

  /// An [API key selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).
  /// Valid values: `$context.authorizer.usageIdentifierKey`, `$request.header.x-api-key`. Defaults to `$request.header.x-api-key`.
  /// Applicable for WebSocket APIs.
  late final pulumi.Output<String?> apiKeySelectionExpression;

  /// ARN of the API.
  late final pulumi.Output<String> arn;

  /// An OpenAPI specification that defines the set of routes and integrations to create as part of the HTTP APIs. Supported only for HTTP APIs.
  late final pulumi.Output<String?> body;

  /// Cross-origin resource sharing (CORS) [configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html). Applicable for HTTP APIs.
  late final pulumi.Output<ApiCorsConfiguration?> corsConfiguration;

  /// Part of _quick create_. Specifies any credentials required for the integration. Applicable for HTTP APIs.
  late final pulumi.Output<String?> credentialsArn;

  /// Description of the API. Must be less than or equal to 1024 characters in length.
  late final pulumi.Output<String?> description;

  /// Whether clients can invoke the API by using the default `execute-api` endpoint.
  /// By default, clients can invoke the API with the default `{api_id}.execute-api.{region}.amazonaws.com endpoint`.
  /// To require that clients use a custom domain name to invoke the API, disable the default endpoint.
  late final pulumi.Output<bool?> disableExecuteApiEndpoint;

  /// ARN prefix to be used in an `aws.lambda.Permission`'s `source_arn` attribute
  /// or in an `aws.iam.Policy` to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html).
  /// See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-control-access-iam.html) for details.
  late final pulumi.Output<String> executionArn;

  /// Whether warnings should return an error while API Gateway is creating or updating the resource using an OpenAPI specification. Defaults to `false`. Applicable for HTTP APIs.
  late final pulumi.Output<bool?> failOnWarnings;

  /// The IP address types that can invoke the API. Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke your API, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke your API. Defaults to `ipv4`.
  late final pulumi.Output<String> ipAddressType;

  /// Name of the API. Must be less than or equal to 128 characters in length.
  late final pulumi.Output<String> name;

  /// API protocol. Valid values: `HTTP`, `WEBSOCKET`.
  late final pulumi.Output<String> protocolType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Part of _quick create_. Specifies any [route key](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-routes.html). Applicable for HTTP APIs.
  late final pulumi.Output<String?> routeKey;

  /// The [route selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-route-selection-expressions) for the API.
  /// Defaults to `$request.method $request.path`.
  late final pulumi.Output<String?> routeSelectionExpression;

  /// Map of tags to assign to the API. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Part of _quick create_. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes.
  /// For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN.
  /// The type of the integration will be `HTTP_PROXY` or `AWS_PROXY`, respectively. Applicable for HTTP APIs.
  late final pulumi.Output<String?> target;

  /// Version identifier for the API. Must be between 1 and 64 characters in length.
  late final pulumi.Output<String?> version;

  /// Creates a new [Api].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Api]. {@macro pulumi_apigatewayv2_api_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Api(String name, {ApiArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:apigatewayv2/api:Api',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    apiEndpoint = registerOutput<String>('apiEndpoint');
    apiKeySelectionExpression = registerOutput<String?>(
      'apiKeySelectionExpression',
    );
    arn = registerOutput<String>('arn');
    body = registerOutput<String?>('body');
    corsConfiguration = registerOutput<ApiCorsConfiguration?>(
      'corsConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ApiCorsConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    credentialsArn = registerOutput<String?>('credentialsArn');
    description = registerOutput<String?>('description');
    disableExecuteApiEndpoint = registerOutput<bool?>(
      'disableExecuteApiEndpoint',
    );
    executionArn = registerOutput<String>('executionArn');
    failOnWarnings = registerOutput<bool?>('failOnWarnings');
    ipAddressType = registerOutput<String>('ipAddressType');
    this.name = registerOutput<String>('name');
    protocolType = registerOutput<String>('protocolType');
    region = registerOutput<String>('region');
    routeKey = registerOutput<String?>('routeKey');
    routeSelectionExpression = registerOutput<String?>(
      'routeSelectionExpression',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    target = registerOutput<String?>('target');
    version = registerOutput<String?>('version');
  }

  /// Gets an existing [Api] resource's state with the given [name] and [id].
  static Api get(String name, pulumi.Input<String> id, {ApiState? state}) {
    return Api._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Api._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apigatewayv2/api:Api',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiEndpoint = registerOutput<String>('apiEndpoint');
    apiKeySelectionExpression = registerOutput<String?>(
      'apiKeySelectionExpression',
    );
    arn = registerOutput<String>('arn');
    body = registerOutput<String?>('body');
    corsConfiguration = registerOutput<ApiCorsConfiguration?>(
      'corsConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ApiCorsConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    credentialsArn = registerOutput<String?>('credentialsArn');
    description = registerOutput<String?>('description');
    disableExecuteApiEndpoint = registerOutput<bool?>(
      'disableExecuteApiEndpoint',
    );
    executionArn = registerOutput<String>('executionArn');
    failOnWarnings = registerOutput<bool?>('failOnWarnings');
    ipAddressType = registerOutput<String>('ipAddressType');
    this.name = registerOutput<String>('name');
    protocolType = registerOutput<String>('protocolType');
    region = registerOutput<String>('region');
    routeKey = registerOutput<String?>('routeKey');
    routeSelectionExpression = registerOutput<String?>(
      'routeSelectionExpression',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    target = registerOutput<String?>('target');
    version = registerOutput<String?>('version');
  }
}
