import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_args.dart';

/// Provides an API Gateway Gateway Response for a REST API Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.apigateway.RestApi("main", {name: "MyDemoAPI"});
/// const test = new aws.apigateway.Response("test", {
///     restApiId: main.id,
///     statusCode: "401",
///     responseType: "UNAUTHORIZED",
///     responseTemplates: {
///         "application/json": "{\"message\":$context.error.messageString}",
///     },
///     responseParameters: {
///         "gatewayresponse.header.Authorization": "'Basic'",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.apigateway.RestApi("main", name="MyDemoAPI")
/// test = aws.apigateway.Response("test",
///     rest_api_id=main.id,
///     status_code="401",
///     response_type="UNAUTHORIZED",
///     response_templates={
///         "application/json": "{\"message\":$context.error.messageString}",
///     },
///     response_parameters={
///         "gatewayresponse.header.Authorization": "'Basic'",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.ApiGateway.RestApi("main", new()
///     {
///         Name = "MyDemoAPI",
///     });
///
///     var test = new Aws.ApiGateway.Response("test", new()
///     {
///         RestApiId = main.Id,
///         StatusCode = "401",
///         ResponseType = "UNAUTHORIZED",
///         ResponseTemplates =
///         {
///             { "application/json", "{\"message\":$context.error.messageString}" },
///         },
///         ResponseParameters =
///         {
///             { "gatewayresponse.header.Authorization", "'Basic'" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := apigateway.NewRestApi(ctx, "main", &apigateway.RestApiArgs{
/// 			Name: pulumi.String("MyDemoAPI"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewResponse(ctx, "test", &apigateway.ResponseArgs{
/// 			RestApiId:    main.ID(),
/// 			StatusCode:   pulumi.String("401"),
/// 			ResponseType: pulumi.String("UNAUTHORIZED"),
/// 			ResponseTemplates: pulumi.StringMap{
/// 				"application/json": pulumi.String("{\"message\":$context.error.messageString}"),
/// 			},
/// 			ResponseParameters: pulumi.StringMap{
/// 				"gatewayresponse.header.Authorization": pulumi.String("'Basic'"),
/// 			},
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
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.apigateway.RestApiArgs;
/// import com.pulumi.aws.apigateway.Response;
/// import com.pulumi.aws.apigateway.ResponseArgs;
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
///         var main = new RestApi("main", RestApiArgs.builder()
///             .name("MyDemoAPI")
///             .build());
///
///         var test = new Response("test", ResponseArgs.builder()
///             .restApiId(main.id())
///             .statusCode("401")
///             .responseType("UNAUTHORIZED")
///             .responseTemplates(Map.of("application/json", "{\"message\":$context.error.messageString}"))
///             .responseParameters(Map.of("gatewayresponse.header.Authorization", "'Basic'"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:apigateway:RestApi
///     properties:
///       name: MyDemoAPI
///   test:
///     type: aws:apigateway:Response
///     properties:
///       restApiId: ${main.id}
///       statusCode: '401'
///       responseType: UNAUTHORIZED
///       responseTemplates:
///         application/json: '{"message":$context.error.messageString}'
///       responseParameters:
///         gatewayresponse.header.Authorization: '''Basic'''
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.Response` using `REST-API-ID/RESPONSE-TYPE`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/response:Response example 12345abcde/UNAUTHORIZED
/// ```
class Response extends pulumi.CustomResource {
  /// Region where this resource will be managed. See the [AWS Documentation](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints) for supported values. Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of parameters (paths, query strings and headers) of the Gateway Response.
  late final pulumi.Output<Map<String, String>?> responseParameters;
  /// Map of templates used to transform the response body.
  late final pulumi.Output<Map<String, String>?> responseTemplates;
  /// Response type of the associated GatewayResponse. See the [AWS Documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html) for supported values.
  late final pulumi.Output<String> responseType;
  /// String identifier of the associated REST API.
  late final pulumi.Output<String> restApiId;
  /// HTTP status code of the Gateway Response.
  late final pulumi.Output<String?> statusCode;

  /// Creates a new [Response].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Response]. {@macro pulumi_apigateway_response_response_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Response(
    String name, {
    ResponseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/response:Response',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.responseParameters = registerOutput<Map<String, String>?>('responseParameters');
    this.responseTemplates = registerOutput<Map<String, String>?>('responseTemplates');
    this.responseType = registerOutput<String>('responseType');
    this.restApiId = registerOutput<String>('restApiId');
    this.statusCode = registerOutput<String?>('statusCode');
  }
}
