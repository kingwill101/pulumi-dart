import 'package:pulumi/pulumi.dart' as pulumi;
import 'rest_api_policy_args.dart';

/// Provides an API Gateway REST API Policy.
///
/// > **Note:** Amazon API Gateway Version 1 resources are used for creating and deploying REST APIs. To create and deploy WebSocket and HTTP APIs, use Amazon API Gateway Version 2 resources.
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
/// const testRestApi = new aws.apigateway.RestApi("test", {name: "example-rest-api"});
/// const test = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "AWS",
///             identifiers: ["*"],
///         }],
///         actions: ["execute-api:Invoke"],
///         resources: [pulumi.interpolate`${testRestApi.executionArn}/*`],
///         conditions: [{
///             test: "IpAddress",
///             variable: "aws:SourceIp",
///             values: ["123.123.123.123/32"],
///         }],
///     }],
/// });
/// const testRestApiPolicy = new aws.apigateway.RestApiPolicy("test", {
///     restApiId: testRestApi.id,
///     policy: test.apply(test => test.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_rest_api = aws.apigateway.RestApi("test", name="example-rest-api")
/// test = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "AWS",
///         "identifiers": ["*"],
///     }],
///     "actions": ["execute-api:Invoke"],
///     "resources": [test_rest_api.execution_arn.apply(lambda execution_arn: f"{execution_arn}/*")],
///     "conditions": [{
///         "test": "IpAddress",
///         "variable": "aws:SourceIp",
///         "values": ["123.123.123.123/32"],
///     }],
/// }])
/// test_rest_api_policy = aws.apigateway.RestApiPolicy("test",
///     rest_api_id=test_rest_api.id,
///     policy=test.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testRestApi = new Aws.ApiGateway.RestApi("test", new()
///     {
///         Name = "example-rest-api",
///     });
///
///     var test = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "execute-api:Invoke",
///                 },
///                 Resources = new[]
///                 {
///                     $"{testRestApi.ExecutionArn}/*",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "IpAddress",
///                         Variable = "aws:SourceIp",
///                         Values = new[]
///                         {
///                             "123.123.123.123/32",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var testRestApiPolicy = new Aws.ApiGateway.RestApiPolicy("test", new()
///     {
///         RestApiId = testRestApi.Id,
///         Policy = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testRestApi, err := apigateway.NewRestApi(ctx, "test", &apigateway.RestApiArgs{
/// 			Name: pulumi.String("example-rest-api"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("execute-api:Invoke"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						testRestApi.ExecutionArn.ApplyT(func(executionArn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", executionArn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("IpAddress"),
/// 							Variable: pulumi.String("aws:SourceIp"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("123.123.123.123/32"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = apigateway.NewRestApiPolicy(ctx, "test", &apigateway.RestApiPolicyArgs{
/// 			RestApiId: testRestApi.ID(),
/// 			Policy: pulumi.String(test.ApplyT(func(test iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &test.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.apigateway.RestApiPolicy;
/// import com.pulumi.aws.apigateway.RestApiPolicyArgs;
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
///         var testRestApi = new RestApi("testRestApi", RestApiArgs.builder()
///             .name("example-rest-api")
///             .build());
///
///         final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("*")
///                     .build())
///                 .actions("execute-api:Invoke")
///                 .resources(testRestApi.executionArn().applyValue(_executionArn -> String.format("%s/*", _executionArn)))
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("IpAddress")
///                     .variable("aws:SourceIp")
///                     .values("123.123.123.123/32")
///                     .build())
///                 .build())
///             .build());
///
///         var testRestApiPolicy = new RestApiPolicy("testRestApiPolicy", RestApiPolicyArgs.builder()
///             .restApiId(testRestApi.id())
///             .policy(test.applyValue(_test -> _test.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testRestApi:
///     type: aws:apigateway:RestApi
///     name: test
///     properties:
///       name: example-rest-api
///   testRestApiPolicy:
///     type: aws:apigateway:RestApiPolicy
///     name: test
///     properties:
///       restApiId: ${testRestApi.id}
///       policy: ${test.json}
/// variables:
///   test:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '*'
///             actions:
///               - execute-api:Invoke
///             resources:
///               - ${testRestApi.executionArn}/*
///             conditions:
///               - test: IpAddress
///                 variable: aws:SourceIp
///                 values:
///                   - 123.123.123.123/32
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.RestApiPolicy` using the REST API ID. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/restApiPolicy:RestApiPolicy example 12345abcde
/// ```
class RestApiPolicy extends pulumi.CustomResource {
  /// JSON formatted policy document that controls access to the API Gateway.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the REST API.
  late final pulumi.Output<String> restApiId;

  /// Creates a new [RestApiPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestApiPolicy]. {@macro pulumi_apigateway_rest_api_policy_rest_api_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestApiPolicy(
    String name, {
    RestApiPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/restApiPolicy:RestApiPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.restApiId = registerOutput<String>('restApiId');
  }
}
