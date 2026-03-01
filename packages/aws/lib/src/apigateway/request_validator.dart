import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_validator_args.dart';

/// Manages an API Gateway Request Validator.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigateway.RequestValidator("example", {
///     name: "example",
///     restApi: exampleAwsApiGatewayRestApi.id,
///     validateRequestBody: true,
///     validateRequestParameters: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.RequestValidator("example",
///     name="example",
///     rest_api=example_aws_api_gateway_rest_api["id"],
///     validate_request_body=True,
///     validate_request_parameters=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGateway.RequestValidator("example", new()
///     {
///         Name = "example",
///         RestApi = exampleAwsApiGatewayRestApi.Id,
///         ValidateRequestBody = true,
///         ValidateRequestParameters = true,
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
/// 		_, err := apigateway.NewRequestValidator(ctx, "example", &apigateway.RequestValidatorArgs{
/// 			Name:                      pulumi.String("example"),
/// 			RestApi:                   pulumi.Any(exampleAwsApiGatewayRestApi.Id),
/// 			ValidateRequestBody:       pulumi.Bool(true),
/// 			ValidateRequestParameters: pulumi.Bool(true),
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
/// import com.pulumi.aws.apigateway.RequestValidator;
/// import com.pulumi.aws.apigateway.RequestValidatorArgs;
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
///         var example = new RequestValidator("example", RequestValidatorArgs.builder()
///             .name("example")
///             .restApi(exampleAwsApiGatewayRestApi.id())
///             .validateRequestBody(true)
///             .validateRequestParameters(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigateway:RequestValidator
///     properties:
///       name: example
///       restApi: ${exampleAwsApiGatewayRestApi.id}
///       validateRequestBody: true
///       validateRequestParameters: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.RequestValidator` using `REST-API-ID/REQUEST-VALIDATOR-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/requestValidator:RequestValidator example 12345abcde/67890fghij
/// ```
class RequestValidator extends pulumi.CustomResource {
  /// Name of the request validator
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the associated Rest API
  late final pulumi.Output<String> restApi;

  /// Boolean whether to validate request body. Defaults to `false`.
  late final pulumi.Output<bool?> validateRequestBody;

  /// Boolean whether to validate request parameters. Defaults to `false`.
  late final pulumi.Output<bool?> validateRequestParameters;

  /// Creates a new [RequestValidator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RequestValidator]. {@macro pulumi_apigateway_request_validator_request_validator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RequestValidator(
    String name, {
    RequestValidatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apigateway/requestValidator:RequestValidator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.validateRequestBody = registerOutput<bool?>('validateRequestBody');
    this.validateRequestParameters = registerOutput<bool?>(
      'validateRequestParameters',
    );
  }
}
