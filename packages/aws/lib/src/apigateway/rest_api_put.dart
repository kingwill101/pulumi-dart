import 'package:pulumi/pulumi.dart' as pulumi;
import 'rest_api_put_args.dart';
import 'rest_api_put_timeouts.dart';

/// Resource for updating an AWS API Gateway REST API with a new API description.
///
/// > **NOTE:** When importing an OpenAPI specification using the `body` argument, the `info.title` field updates the `name` of the `aws.apigateway.RestApi`. If the imported `title` differs from the configured `name`, Terraform will report the difference.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigateway.RestApiPut("example", {
///     body: JSON.stringify({
///         swagger: "2.0",
///         info: {
///             title: "Example API",
///             version: "v1",
///         },
///         schemes: ["https"],
///         paths: {
///             "/example": {
///                 get: {
///                     responses: {
///                         "200": {
///                             description: "OK",
///                         },
///                     },
///                     "x-amazon-apigateway-integration": {
///                         httpMethod: "GET",
///                         type: "HTTP",
///                         responses: {
///                             "default": {
///                                 statusCode: 200,
///                             },
///                         },
///                         uri: "https://api.example.com/",
///                     },
///                 },
///             },
///         },
///     }),
///     failOnWarnings: true,
///     restApiId: exampleAwsApiGatewayRestApi.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.apigateway.RestApiPut("example",
///     body=json.dumps({
///         "swagger": "2.0",
///         "info": {
///             "title": "Example API",
///             "version": "v1",
///         },
///         "schemes": ["https"],
///         "paths": {
///             "/example": {
///                 "get": {
///                     "responses": {
///                         "200": {
///                             "description": "OK",
///                         },
///                     },
///                     "x-amazon-apigateway-integration": {
///                         "httpMethod": "GET",
///                         "type": "HTTP",
///                         "responses": {
///                             "default": {
///                                 "statusCode": 200,
///                             },
///                         },
///                         "uri": "https://api.example.com/",
///                     },
///                 },
///             },
///         },
///     }),
///     fail_on_warnings=True,
///     rest_api_id=example_aws_api_gateway_rest_api["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGateway.RestApiPut("example", new()
///     {
///         Body = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["swagger"] = "2.0",
///             ["info"] = new Dictionary<string, object?>
///             {
///                 ["title"] = "Example API",
///                 ["version"] = "v1",
///             },
///             ["schemes"] = new[]
///             {
///                 "https",
///             },
///             ["paths"] = new Dictionary<string, object?>
///             {
///                 ["/example"] = new Dictionary<string, object?>
///                 {
///                     ["get"] = new Dictionary<string, object?>
///                     {
///                         ["responses"] = new Dictionary<string, object?>
///                         {
///                             ["200"] = new Dictionary<string, object?>
///                             {
///                                 ["description"] = "OK",
///                             },
///                         },
///                         ["x-amazon-apigateway-integration"] = new Dictionary<string, object?>
///                         {
///                             ["httpMethod"] = "GET",
///                             ["type"] = "HTTP",
///                             ["responses"] = new Dictionary<string, object?>
///                             {
///                                 ["default"] = new Dictionary<string, object?>
///                                 {
///                                     ["statusCode"] = 200,
///                                 },
///                             },
///                             ["uri"] = "https://api.example.com/",
///                         },
///                     },
///                 },
///             },
///         }),
///         FailOnWarnings = true,
///         RestApiId = exampleAwsApiGatewayRestApi.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"swagger": "2.0",
/// 			"info": map[string]interface{}{
/// 				"title":   "Example API",
/// 				"version": "v1",
/// 			},
/// 			"schemes": []string{
/// 				"https",
/// 			},
/// 			"paths": map[string]interface{}{
/// 				"/example": map[string]interface{}{
/// 					"get": map[string]interface{}{
/// 						"responses": map[string]interface{}{
/// 							"200": map[string]interface{}{
/// 								"description": "OK",
/// 							},
/// 						},
/// 						"x-amazon-apigateway-integration": map[string]interface{}{
/// 							"httpMethod": "GET",
/// 							"type":       "HTTP",
/// 							"responses": map[string]interface{}{
/// 								"default": map[string]interface{}{
/// 									"statusCode": 200,
/// 								},
/// 							},
/// 							"uri": "https://api.example.com/",
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = apigateway.NewRestApiPut(ctx, "example", &apigateway.RestApiPutArgs{
/// 			Body:           pulumi.String(json0),
/// 			FailOnWarnings: pulumi.Bool(true),
/// 			RestApiId:      pulumi.Any(exampleAwsApiGatewayRestApi.Id),
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
/// import com.pulumi.aws.apigateway.RestApiPut;
/// import com.pulumi.aws.apigateway.RestApiPutArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new RestApiPut("example", RestApiPutArgs.builder()
///             .body(serializeJson(
///                 jsonObject(
///                     jsonProperty("swagger", "2.0"),
///                     jsonProperty("info", jsonObject(
///                         jsonProperty("title", "Example API"),
///                         jsonProperty("version", "v1")
///                     )),
///                     jsonProperty("schemes", jsonArray("https")),
///                     jsonProperty("paths", jsonObject(
///                         jsonProperty("/example", jsonObject(
///                             jsonProperty("get", jsonObject(
///                                 jsonProperty("responses", jsonObject(
///                                     jsonProperty("200", jsonObject(
///                                         jsonProperty("description", "OK")
///                                     ))
///                                 )),
///                                 jsonProperty("x-amazon-apigateway-integration", jsonObject(
///                                     jsonProperty("httpMethod", "GET"),
///                                     jsonProperty("type", "HTTP"),
///                                     jsonProperty("responses", jsonObject(
///                                         jsonProperty("default", jsonObject(
///                                             jsonProperty("statusCode", 200)
///                                         ))
///                                     )),
///                                     jsonProperty("uri", "https://api.example.com/")
///                                 ))
///                             ))
///                         ))
///                     ))
///                 )))
///             .failOnWarnings(true)
///             .restApiId(exampleAwsApiGatewayRestApi.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigateway:RestApiPut
///     properties:
///       body:
///         fn::toJSON:
///           swagger: '2.0'
///           info:
///             title: Example API
///             version: v1
///           schemes:
///             - https
///           paths:
///             /example:
///               get:
///                 responses:
///                   '200':
///                     description: OK
///                 x-amazon-apigateway-integration:
///                   httpMethod: GET
///                   type: HTTP
///                   responses:
///                     default:
///                       statusCode: 200
///                   uri: https://api.example.com/
///       failOnWarnings: true
///       restApiId: ${exampleAwsApiGatewayRestApi.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway REST API Put using the `rest_api_id`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/restApiPut:RestApiPut example import-id-12345678
/// ```
class RestApiPut extends pulumi.CustomResource {
  /// PUT request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.
  late final pulumi.Output<String> body;

  /// Whether to rollback the API update when a warning is encountered. The default value is `false`.
  late final pulumi.Output<bool> failOnWarnings;

  /// Map of customizations for importing the specification in the `body` argument. For example, to exclude DocumentationParts from an imported API, use `ignore = "documentation"`. Additional documentation, including other parameters such as `basepath`, can be found in the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api.html).
  late final pulumi.Output<Map<String, String>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the associated REST API.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> restApiId;
  late final pulumi.Output<RestApiPutTimeouts?> timeouts;

  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment. To force a redeployment without changing these keys/values, use the `-replace` option with `pulumi preview` or `pulumi up`.
  late final pulumi.Output<Map<String, String>?> triggers;

  /// Creates a new [RestApiPut].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestApiPut]. {@macro pulumi_apigateway_rest_api_put_rest_api_put_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestApiPut(
    String name, {
    RestApiPutArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apigateway/restApiPut:RestApiPut',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.body = registerOutput<String>('body');
    this.failOnWarnings = registerOutput<bool>('failOnWarnings');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.region = registerOutput<String>('region');
    this.restApiId = registerOutput<String>('restApiId');
    this.timeouts = registerOutput<RestApiPutTimeouts?>('timeouts');
    this.triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
