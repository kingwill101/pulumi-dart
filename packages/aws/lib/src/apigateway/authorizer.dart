import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorizer_args.dart';

/// Provides an API Gateway Authorizer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const demoRestApi = new aws.apigateway.RestApi("demo", {name: "auth-demo"});
/// const invocationAssumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["apigateway.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const invocationRole = new aws.iam.Role("invocation_role", {
///     name: "api_gateway_auth_invocation",
///     path: "/",
///     assumeRolePolicy: invocationAssumeRole.then(invocationAssumeRole => invocationAssumeRole.json),
/// });
/// const lambdaAssumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: ["lambda.amazonaws.com"],
///         }],
///     }],
/// });
/// const lambda = new aws.iam.Role("lambda", {
///     name: "demo-lambda",
///     assumeRolePolicy: lambdaAssumeRole.then(lambdaAssumeRole => lambdaAssumeRole.json),
/// });
/// const authorizer = new aws.lambda.Function("authorizer", {
///     code: new pulumi.asset.FileArchive("lambda-function.zip"),
///     name: "api_gateway_authorizer",
///     role: lambda.arn,
///     handler: "exports.example",
///     sourceCodeHash: std.filebase64sha256({
///         input: "lambda-function.zip",
///     }).then(invoke => invoke.result),
/// });
/// const demo = new aws.apigateway.Authorizer("demo", {
///     name: "demo",
///     restApi: demoRestApi.id,
///     authorizerUri: authorizer.invokeArn,
///     authorizerCredentials: invocationRole.arn,
/// });
/// const invocationPolicy = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         actions: ["lambda:InvokeFunction"],
///         resources: [authorizer.arn],
///     }],
/// });
/// const invocationPolicyRolePolicy = new aws.iam.RolePolicy("invocation_policy", {
///     name: "default",
///     role: invocationRole.id,
///     policy: invocationPolicy.apply(invocationPolicy => invocationPolicy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// demo_rest_api = aws.apigateway.RestApi("demo", name="auth-demo")
/// invocation_assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["apigateway.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// invocation_role = aws.iam.Role("invocation_role",
///     name="api_gateway_auth_invocation",
///     path="/",
///     assume_role_policy=invocation_assume_role.json)
/// lambda_assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["lambda.amazonaws.com"],
///     }],
/// }])
/// lambda_ = aws.iam.Role("lambda",
///     name="demo-lambda",
///     assume_role_policy=lambda_assume_role.json)
/// authorizer = aws.lambda_.Function("authorizer",
///     code=pulumi.FileArchive("lambda-function.zip"),
///     name="api_gateway_authorizer",
///     role=lambda_.arn,
///     handler="exports.example",
///     source_code_hash=std.filebase64sha256(input="lambda-function.zip").result)
/// demo = aws.apigateway.Authorizer("demo",
///     name="demo",
///     rest_api=demo_rest_api.id,
///     authorizer_uri=authorizer.invoke_arn,
///     authorizer_credentials=invocation_role.arn)
/// invocation_policy = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "actions": ["lambda:InvokeFunction"],
///     "resources": [authorizer.arn],
/// }])
/// invocation_policy_role_policy = aws.iam.RolePolicy("invocation_policy",
///     name="default",
///     role=invocation_role.id,
///     policy=invocation_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var demoRestApi = new Aws.ApiGateway.RestApi("demo", new()
///     {
///         Name = "auth-demo",
///     });
///
///     var invocationAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "apigateway.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var invocationRole = new Aws.Iam.Role("invocation_role", new()
///     {
///         Name = "api_gateway_auth_invocation",
///         Path = "/",
///         AssumeRolePolicy = invocationAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var lambdaAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "lambda.amazonaws.com",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var lambda = new Aws.Iam.Role("lambda", new()
///     {
///         Name = "demo-lambda",
///         AssumeRolePolicy = lambdaAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var authorizer = new Aws.Lambda.Function("authorizer", new()
///     {
///         Code = new FileArchive("lambda-function.zip"),
///         Name = "api_gateway_authorizer",
///         Role = lambda.Arn,
///         Handler = "exports.example",
///         SourceCodeHash = Std.Filebase64sha256.Invoke(new()
///         {
///             Input = "lambda-function.zip",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var demo = new Aws.ApiGateway.Authorizer("demo", new()
///     {
///         Name = "demo",
///         RestApi = demoRestApi.Id,
///         AuthorizerUri = authorizer.InvokeArn,
///         AuthorizerCredentials = invocationRole.Arn,
///     });
///
///     var invocationPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "lambda:InvokeFunction",
///                 },
///                 Resources = new[]
///                 {
///                     authorizer.Arn,
///                 },
///             },
///         },
///     });
///
///     var invocationPolicyRolePolicy = new Aws.Iam.RolePolicy("invocation_policy", new()
///     {
///         Name = "default",
///         Role = invocationRole.Id,
///         Policy = invocationPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		demoRestApi, err := apigateway.NewRestApi(ctx, "demo", &apigateway.RestApiArgs{
/// 			Name: pulumi.String("auth-demo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invocationAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"apigateway.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invocationRole, err := iam.NewRole(ctx, "invocation_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("api_gateway_auth_invocation"),
/// 			Path:             pulumi.String("/"),
/// 			AssumeRolePolicy: pulumi.String(invocationAssumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lambdaAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"lambda.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lambda, err := iam.NewRole(ctx, "lambda", &iam.RoleArgs{
/// 			Name:             pulumi.String("demo-lambda"),
/// 			AssumeRolePolicy: pulumi.String(lambdaAssumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64sha256, err := std.Filebase64sha256(ctx, &std.Filebase64sha256Args{
/// 			Input: "lambda-function.zip",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		authorizer, err := lambda.NewFunction(ctx, "authorizer", &lambda.FunctionArgs{
/// 			Code:           pulumi.NewFileArchive("lambda-function.zip"),
/// 			Name:           pulumi.String("api_gateway_authorizer"),
/// 			Role:           lambda.Arn,
/// 			Handler:        pulumi.String("exports.example"),
/// 			SourceCodeHash: pulumi.String(invokeFilebase64sha256.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewAuthorizer(ctx, "demo", &apigateway.AuthorizerArgs{
/// 			Name:                  pulumi.String("demo"),
/// 			RestApi:               demoRestApi.ID(),
/// 			AuthorizerUri:         authorizer.InvokeArn,
/// 			AuthorizerCredentials: invocationRole.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invocationPolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("lambda:InvokeFunction"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						authorizer.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = iam.NewRolePolicy(ctx, "invocation_policy", &iam.RolePolicyArgs{
/// 			Name: pulumi.String("default"),
/// 			Role: invocationRole.ID(),
/// 			Policy: pulumi.String(invocationPolicy.ApplyT(func(invocationPolicy iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &invocationPolicy.Json, nil
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64sha256Args;
/// import com.pulumi.aws.apigateway.Authorizer;
/// import com.pulumi.aws.apigateway.AuthorizerArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.asset.FileArchive;
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
///         var demoRestApi = new RestApi("demoRestApi", RestApiArgs.builder()
///             .name("auth-demo")
///             .build());
///
///         final var invocationAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("apigateway.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var invocationRole = new Role("invocationRole", RoleArgs.builder()
///             .name("api_gateway_auth_invocation")
///             .path("/")
///             .assumeRolePolicy(invocationAssumeRole.json())
///             .build());
///
///         final var lambdaAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("lambda.amazonaws.com")
///                     .build())
///                 .build())
///             .build());
///
///         var lambda = new Role("lambda", RoleArgs.builder()
///             .name("demo-lambda")
///             .assumeRolePolicy(lambdaAssumeRole.json())
///             .build());
///
///         var authorizer = new Function("authorizer", FunctionArgs.builder()
///             .code(new FileArchive("lambda-function.zip"))
///             .name("api_gateway_authorizer")
///             .role(lambda.arn())
///             .handler("exports.example")
///             .sourceCodeHash(StdFunctions.filebase64sha256(Filebase64sha256Args.builder()
///                 .input("lambda-function.zip")
///                 .build()).result())
///             .build());
///
///         var demo = new Authorizer("demo", AuthorizerArgs.builder()
///             .name("demo")
///             .restApi(demoRestApi.id())
///             .authorizerUri(authorizer.invokeArn())
///             .authorizerCredentials(invocationRole.arn())
///             .build());
///
///         final var invocationPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("lambda:InvokeFunction")
///                 .resources(authorizer.arn())
///                 .build())
///             .build());
///
///         var invocationPolicyRolePolicy = new RolePolicy("invocationPolicyRolePolicy", RolePolicyArgs.builder()
///             .name("default")
///             .role(invocationRole.id())
///             .policy(invocationPolicy.applyValue(_invocationPolicy -> _invocationPolicy.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   demo:
///     type: aws:apigateway:Authorizer
///     properties:
///       name: demo
///       restApi: ${demoRestApi.id}
///       authorizerUri: ${authorizer.invokeArn}
///       authorizerCredentials: ${invocationRole.arn}
///   demoRestApi:
///     type: aws:apigateway:RestApi
///     name: demo
///     properties:
///       name: auth-demo
///   invocationRole:
///     type: aws:iam:Role
///     name: invocation_role
///     properties:
///       name: api_gateway_auth_invocation
///       path: /
///       assumeRolePolicy: ${invocationAssumeRole.json}
///   invocationPolicyRolePolicy:
///     type: aws:iam:RolePolicy
///     name: invocation_policy
///     properties:
///       name: default
///       role: ${invocationRole.id}
///       policy: ${invocationPolicy.json}
///   lambda:
///     type: aws:iam:Role
///     properties:
///       name: demo-lambda
///       assumeRolePolicy: ${lambdaAssumeRole.json}
///   authorizer:
///     type: aws:lambda:Function
///     properties:
///       code:
///         fn::FileArchive: lambda-function.zip
///       name: api_gateway_authorizer
///       role: ${lambda.arn}
///       handler: exports.example
///       sourceCodeHash:
///         fn::invoke:
///           function: std:filebase64sha256
///           arguments:
///             input: lambda-function.zip
///           return: result
/// variables:
///   invocationAssumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - apigateway.amazonaws.com
///             actions:
///               - sts:AssumeRole
///   invocationPolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - lambda:InvokeFunction
///             resources:
///               - ${authorizer.arn}
///   lambdaAssumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - sts:AssumeRole
///             principals:
///               - type: Service
///                 identifiers:
///                   - lambda.amazonaws.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS API Gateway Authorizer using the `REST-API-ID/AUTHORIZER-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/authorizer:Authorizer authorizer 12345abcde/example
/// ```
class Authorizer extends pulumi.CustomResource {
  /// ARN of the API Gateway Authorizer
  late final pulumi.Output<String> arn;

  /// Credentials required for the authorizer. To specify an IAM Role for API Gateway to assume, use the IAM Role ARN.
  late final pulumi.Output<String?> authorizerCredentials;

  /// TTL of cached authorizer results in seconds. Defaults to `300`.
  late final pulumi.Output<int?> authorizerResultTtlInSeconds;

  /// Authorizer's Uniform Resource Identifier (URI). This must be a well-formed Lambda function URI in the form of `arn:aws:apigateway:{region}:lambda:path/{service_api}`,
  /// e.g., `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:012345678912:function:my-function/invocations`
  late final pulumi.Output<String?> authorizerUri;

  /// Source of the identity in an incoming request. Defaults to `method.request.header.Authorization`. For `REQUEST` type, this may be a comma-separated list of values, including headers, query string parameters and stage variables - e.g., `"method.request.header.SomeHeaderName,method.request.querystring.SomeQueryStringName,stageVariables.SomeStageVariableName"`
  late final pulumi.Output<String?> identitySource;

  /// Validation expression for the incoming identity. For `TOKEN` type, this value should be a regular expression. The incoming token from the client is matched against this expression, and will proceed if the token matches. If the token doesn't match, the client receives a 401 Unauthorized response.
  late final pulumi.Output<String?> identityValidationExpression;

  /// Name of the authorizer
  late final pulumi.Output<String> name;

  /// List of the Amazon Cognito user pool ARNs. Each element is of this format: `arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}`.
  late final pulumi.Output<List<String>?> providerArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the associated REST API
  late final pulumi.Output<String> restApi;

  /// Type of the authorizer. Possible values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, or `COGNITO_USER_POOLS` for using an Amazon Cognito user pool. Defaults to `TOKEN`.
  late final pulumi.Output<String?> type;

  /// Creates a new [Authorizer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Authorizer]. {@macro pulumi_apigateway_authorizer_authorizer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Authorizer(
    String name, {
    AuthorizerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/authorizer:Authorizer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authorizerCredentials =
        registerOutput<String?>('authorizerCredentials');
    this.authorizerResultTtlInSeconds =
        registerOutput<int?>('authorizerResultTtlInSeconds');
    this.authorizerUri = registerOutput<String?>('authorizerUri');
    this.identitySource = registerOutput<String?>('identitySource');
    this.identityValidationExpression =
        registerOutput<String?>('identityValidationExpression');
    this.name = registerOutput<String>('name');
    this.providerArns = registerOutput<List<String>?>('providerArns');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.type = registerOutput<String?>('type');
  }
}
