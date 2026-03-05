import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_args.dart';
import 'integration_state.dart';
import 'integration_tls_config.dart';

/// Provides an HTTP Method Integration for an API Gateway Integration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myDemoAPI = new aws.apigateway.RestApi("MyDemoAPI", {
///     name: "MyDemoAPI",
///     description: "This is my API for demonstration purposes",
/// });
/// const myDemoResource = new aws.apigateway.Resource("MyDemoResource", {
///     restApi: myDemoAPI.id,
///     parentId: myDemoAPI.rootResourceId,
///     pathPart: "mydemoresource",
/// });
/// const myDemoMethod = new aws.apigateway.Method("MyDemoMethod", {
///     restApi: myDemoAPI.id,
///     resourceId: myDemoResource.id,
///     httpMethod: "GET",
///     authorization: "NONE",
/// });
/// const myDemoIntegration = new aws.apigateway.Integration("MyDemoIntegration", {
///     restApi: myDemoAPI.id,
///     resourceId: myDemoResource.id,
///     httpMethod: myDemoMethod.httpMethod,
///     type: "MOCK",
///     cacheKeyParameters: ["method.request.path.param"],
///     cacheNamespace: "foobar",
///     timeoutMilliseconds: 29000,
///     requestParameters: {
///         "integration.request.header.X-Authorization": "'static'",
///     },
///     requestTemplates: {
///         "application/xml": `{
///    \\"body\\" : input.json('')
/// }
/// `,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_demo_api = aws.apigateway.RestApi("MyDemoAPI",
///     name="MyDemoAPI",
///     description="This is my API for demonstration purposes")
/// my_demo_resource = aws.apigateway.Resource("MyDemoResource",
///     rest_api=my_demo_api.id,
///     parent_id=my_demo_api.root_resource_id,
///     path_part="mydemoresource")
/// my_demo_method = aws.apigateway.Method("MyDemoMethod",
///     rest_api=my_demo_api.id,
///     resource_id=my_demo_resource.id,
///     http_method="GET",
///     authorization="NONE")
/// my_demo_integration = aws.apigateway.Integration("MyDemoIntegration",
///     rest_api=my_demo_api.id,
///     resource_id=my_demo_resource.id,
///     http_method=my_demo_method.http_method,
///     type="MOCK",
///     cache_key_parameters=["method.request.path.param"],
///     cache_namespace="foobar",
///     timeout_milliseconds=29000,
///     request_parameters={
///         "integration.request.header.X-Authorization": "'static'",
///     },
///     request_templates={
///         "application/xml": """{
///    \"body\" : $input.json('$')
/// }
/// """,
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
///     var myDemoAPI = new Aws.ApiGateway.RestApi("MyDemoAPI", new()
///     {
///         Name = "MyDemoAPI",
///         Description = "This is my API for demonstration purposes",
///     });
///
///     var myDemoResource = new Aws.ApiGateway.Resource("MyDemoResource", new()
///     {
///         RestApi = myDemoAPI.Id,
///         ParentId = myDemoAPI.RootResourceId,
///         PathPart = "mydemoresource",
///     });
///
///     var myDemoMethod = new Aws.ApiGateway.Method("MyDemoMethod", new()
///     {
///         RestApi = myDemoAPI.Id,
///         ResourceId = myDemoResource.Id,
///         HttpMethod = "GET",
///         Authorization = "NONE",
///     });
///
///     var myDemoIntegration = new Aws.ApiGateway.Integration("MyDemoIntegration", new()
///     {
///         RestApi = myDemoAPI.Id,
///         ResourceId = myDemoResource.Id,
///         HttpMethod = myDemoMethod.HttpMethod,
///         Type = "MOCK",
///         CacheKeyParameters = new[]
///         {
///             "method.request.path.param",
///         },
///         CacheNamespace = "foobar",
///         TimeoutMilliseconds = 29000,
///         RequestParameters =
///         {
///             { "integration.request.header.X-Authorization", "'static'" },
///         },
///         RequestTemplates =
///         {
///             { "application/xml", @"{
///    \""body\"" : $input.json('$')
/// }
/// " },
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
/// 		myDemoAPI, err := apigateway.NewRestApi(ctx, "MyDemoAPI", &apigateway.RestApiArgs{
/// 			Name:        pulumi.String("MyDemoAPI"),
/// 			Description: pulumi.String("This is my API for demonstration purposes"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myDemoResource, err := apigateway.NewResource(ctx, "MyDemoResource", &apigateway.ResourceArgs{
/// 			RestApi:  myDemoAPI.ID(),
/// 			ParentId: myDemoAPI.RootResourceId,
/// 			PathPart: pulumi.String("mydemoresource"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myDemoMethod, err := apigateway.NewMethod(ctx, "MyDemoMethod", &apigateway.MethodArgs{
/// 			RestApi:       myDemoAPI.ID(),
/// 			ResourceId:    myDemoResource.ID(),
/// 			HttpMethod:    pulumi.String("GET"),
/// 			Authorization: pulumi.String("NONE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewIntegration(ctx, "MyDemoIntegration", &apigateway.IntegrationArgs{
/// 			RestApi:    myDemoAPI.ID(),
/// 			ResourceId: myDemoResource.ID(),
/// 			HttpMethod: myDemoMethod.HttpMethod,
/// 			Type:       pulumi.String("MOCK"),
/// 			CacheKeyParameters: pulumi.StringArray{
/// 				pulumi.String("method.request.path.param"),
/// 			},
/// 			CacheNamespace:      pulumi.String("foobar"),
/// 			TimeoutMilliseconds: pulumi.Int(29000),
/// 			RequestParameters: pulumi.StringMap{
/// 				"integration.request.header.X-Authorization": pulumi.String("'static'"),
/// 			},
/// 			RequestTemplates: pulumi.StringMap{
/// 				"application/xml": pulumi.String("{\n   \\\"body\\\" : $input.json('$')\n}\n"),
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
/// import com.pulumi.aws.apigateway.Resource;
/// import com.pulumi.aws.apigateway.ResourceArgs;
/// import com.pulumi.aws.apigateway.Method;
/// import com.pulumi.aws.apigateway.MethodArgs;
/// import com.pulumi.aws.apigateway.Integration;
/// import com.pulumi.aws.apigateway.IntegrationArgs;
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
///         var myDemoAPI = new RestApi("myDemoAPI", RestApiArgs.builder()
///             .name("MyDemoAPI")
///             .description("This is my API for demonstration purposes")
///             .build());
///
///         var myDemoResource = new Resource("myDemoResource", ResourceArgs.builder()
///             .restApi(myDemoAPI.id())
///             .parentId(myDemoAPI.rootResourceId())
///             .pathPart("mydemoresource")
///             .build());
///
///         var myDemoMethod = new Method("myDemoMethod", MethodArgs.builder()
///             .restApi(myDemoAPI.id())
///             .resourceId(myDemoResource.id())
///             .httpMethod("GET")
///             .authorization("NONE")
///             .build());
///
///         var myDemoIntegration = new Integration("myDemoIntegration", IntegrationArgs.builder()
///             .restApi(myDemoAPI.id())
///             .resourceId(myDemoResource.id())
///             .httpMethod(myDemoMethod.httpMethod())
///             .type("MOCK")
///             .cacheKeyParameters("method.request.path.param")
///             .cacheNamespace("foobar")
///             .timeoutMilliseconds(29000)
///             .requestParameters(Map.of("integration.request.header.X-Authorization", "'static'"))
///             .requestTemplates(Map.of("application/xml", """
/// {
///    \"body\" : $input.json('$')
/// }
///             """))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myDemoAPI:
///     type: aws:apigateway:RestApi
///     name: MyDemoAPI
///     properties:
///       name: MyDemoAPI
///       description: This is my API for demonstration purposes
///   myDemoResource:
///     type: aws:apigateway:Resource
///     name: MyDemoResource
///     properties:
///       restApi: ${myDemoAPI.id}
///       parentId: ${myDemoAPI.rootResourceId}
///       pathPart: mydemoresource
///   myDemoMethod:
///     type: aws:apigateway:Method
///     name: MyDemoMethod
///     properties:
///       restApi: ${myDemoAPI.id}
///       resourceId: ${myDemoResource.id}
///       httpMethod: GET
///       authorization: NONE
///   myDemoIntegration:
///     type: aws:apigateway:Integration
///     name: MyDemoIntegration
///     properties:
///       restApi: ${myDemoAPI.id}
///       resourceId: ${myDemoResource.id}
///       httpMethod: ${myDemoMethod.httpMethod}
///       type: MOCK
///       cacheKeyParameters:
///         - method.request.path.param
///       cacheNamespace: foobar
///       timeoutMilliseconds: 29000
///       requestParameters:
///         integration.request.header.X-Authorization: '''static'''
///       requestTemplates:
///         application/xml: |
///           {
///              \"body\" : $input.json('$')
///           }
/// ```
///
///
/// ## Lambda integration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetRegion = aws.getRegion({});
/// const currentGetPartition = aws.getPartition({});
/// // API Gateway
/// const api = new aws.apigateway.RestApi("api", {name: "myapi"});
/// const resource = new aws.apigateway.Resource("resource", {
///     pathPart: "resource",
///     parentId: api.rootResourceId,
///     restApi: api.id,
/// });
/// const method = new aws.apigateway.Method("method", {
///     restApi: api.id,
///     resourceId: resource.id,
///     httpMethod: "GET",
///     authorization: "NONE",
/// });
/// // IAM
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["lambda.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const role = new aws.iam.Role("role", {
///     name: "myrole",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const lambda = new aws.lambda.Function("lambda", {
///     code: new pulumi.asset.FileArchive("lambda.zip"),
///     name: "mylambda",
///     role: role.arn,
///     handler: "lambda.lambda_handler",
///     runtime: aws.lambda.Runtime.Python3d12,
///     sourceCodeHash: std.filebase64sha256({
///         input: "lambda.zip",
///     }).then(invoke => invoke.result),
/// });
/// const integration = new aws.apigateway.Integration("integration", {
///     restApi: api.id,
///     resourceId: resource.id,
///     httpMethod: method.httpMethod,
///     integrationHttpMethod: "POST",
///     type: "AWS_PROXY",
///     uri: lambda.invokeArn,
/// });
/// // Lambda
/// const apigwLambda = new aws.lambda.Permission("apigw_lambda", {
///     statementId: "AllowExecutionFromAPIGateway",
///     action: "lambda:InvokeFunction",
///     "function": lambda.name,
///     principal: "apigateway.amazonaws.com",
///     sourceArn: pulumi.all([currentGetPartition, currentGetRegion, current, api.id, method.httpMethod, resource.path]).apply(([currentGetPartition, currentGetRegion, current, id, httpMethod, path]) => `arn:${currentGetPartition.partition}:execute-api:${currentGetRegion.region}:${current.accountId}:${id}/*/${httpMethod}${path}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// current = aws.get_caller_identity()
/// current_get_region = aws.get_region()
/// current_get_partition = aws.get_partition()
/// # API Gateway
/// api = aws.apigateway.RestApi("api", name="myapi")
/// resource = aws.apigateway.Resource("resource",
///     path_part="resource",
///     parent_id=api.root_resource_id,
///     rest_api=api.id)
/// method = aws.apigateway.Method("method",
///     rest_api=api.id,
///     resource_id=resource.id,
///     http_method="GET",
///     authorization="NONE")
/// # IAM
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["lambda.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// role = aws.iam.Role("role",
///     name="myrole",
///     assume_role_policy=assume_role.json)
/// lambda_ = aws.lambda_.Function("lambda",
///     code=pulumi.FileArchive("lambda.zip"),
///     name="mylambda",
///     role=role.arn,
///     handler="lambda.lambda_handler",
///     runtime=aws.lambda_.Runtime.PYTHON3D12,
///     source_code_hash=std.filebase64sha256(input="lambda.zip").result)
/// integration = aws.apigateway.Integration("integration",
///     rest_api=api.id,
///     resource_id=resource.id,
///     http_method=method.http_method,
///     integration_http_method="POST",
///     type="AWS_PROXY",
///     uri=lambda_.invoke_arn)
/// # Lambda
/// apigw_lambda = aws.lambda_.Permission("apigw_lambda",
///     statement_id="AllowExecutionFromAPIGateway",
///     action="lambda:InvokeFunction",
///     function=lambda_.name,
///     principal="apigateway.amazonaws.com",
///     source_arn=pulumi.Output.all(
///         id=api.id,
///         http_method=method.http_method,
///         path=resource.path
/// ).apply(lambda resolved_outputs: f"arn:{current_get_partition.partition}:execute-api:{current_get_region.region}:{current.account_id}:{resolved_outputs['id']}/*/{resolved_outputs['http_method']}{resolved_outputs['path']}")
/// )
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
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetRegion = Aws.GetRegion.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     // API Gateway
///     var api = new Aws.ApiGateway.RestApi("api", new()
///     {
///         Name = "myapi",
///     });
///
///     var resource = new Aws.ApiGateway.Resource("resource", new()
///     {
///         PathPart = "resource",
///         ParentId = api.RootResourceId,
///         RestApi = api.Id,
///     });
///
///     var method = new Aws.ApiGateway.Method("method", new()
///     {
///         RestApi = api.Id,
///         ResourceId = resource.Id,
///         HttpMethod = "GET",
///         Authorization = "NONE",
///     });
///
///     // IAM
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "lambda.amazonaws.com",
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
///     var role = new Aws.Iam.Role("role", new()
///     {
///         Name = "myrole",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var lambda = new Aws.Lambda.Function("lambda", new()
///     {
///         Code = new FileArchive("lambda.zip"),
///         Name = "mylambda",
///         Role = role.Arn,
///         Handler = "lambda.lambda_handler",
///         Runtime = Aws.Lambda.Runtime.Python3d12,
///         SourceCodeHash = Std.Filebase64sha256.Invoke(new()
///         {
///             Input = "lambda.zip",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var integration = new Aws.ApiGateway.Integration("integration", new()
///     {
///         RestApi = api.Id,
///         ResourceId = resource.Id,
///         HttpMethod = method.HttpMethod,
///         IntegrationHttpMethod = "POST",
///         Type = "AWS_PROXY",
///         Uri = lambda.InvokeArn,
///     });
///
///     // Lambda
///     var apigwLambda = new Aws.Lambda.Permission("apigw_lambda", new()
///     {
///         StatementId = "AllowExecutionFromAPIGateway",
///         Action = "lambda:InvokeFunction",
///         Function = lambda.Name,
///         Principal = "apigateway.amazonaws.com",
///         SourceArn = Output.Tuple(currentGetPartition, currentGetRegion, current, api.Id, method.HttpMethod, resource.Path).Apply(values =>
///         {
///             var currentGetPartition = values.Item1;
///             var currentGetRegion = values.Item2;
///             var current = values.Item3;
///             var id = values.Item4;
///             var httpMethod = values.Item5;
///             var path = values.Item6;
///             return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:execute-api:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:{id}/*/{httpMethod}{path}";
///         }),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// API Gateway
/// 		api, err := apigateway.NewRestApi(ctx, "api", &apigateway.RestApiArgs{
/// 			Name: pulumi.String("myapi"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		resource, err := apigateway.NewResource(ctx, "resource", &apigateway.ResourceArgs{
/// 			PathPart: pulumi.String("resource"),
/// 			ParentId: api.RootResourceId,
/// 			RestApi:  api.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		method, err := apigateway.NewMethod(ctx, "method", &apigateway.MethodArgs{
/// 			RestApi:       api.ID(),
/// 			ResourceId:    resource.ID(),
/// 			HttpMethod:    pulumi.String("GET"),
/// 			Authorization: pulumi.String("NONE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// IAM
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"lambda.amazonaws.com",
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
/// 		role, err := iam.NewRole(ctx, "role", &iam.RoleArgs{
/// 			Name:             pulumi.String("myrole"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64sha256, err := std.Filebase64sha256(ctx, &std.Filebase64sha256Args{
/// 			Input: "lambda.zip",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lambda, err := lambda.NewFunction(ctx, "lambda", &lambda.FunctionArgs{
/// 			Code:           pulumi.NewFileArchive("lambda.zip"),
/// 			Name:           pulumi.String("mylambda"),
/// 			Role:           role.Arn,
/// 			Handler:        pulumi.String("lambda.lambda_handler"),
/// 			Runtime:        pulumi.String(lambda.RuntimePython3d12),
/// 			SourceCodeHash: pulumi.String(invokeFilebase64sha256.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewIntegration(ctx, "integration", &apigateway.IntegrationArgs{
/// 			RestApi:               api.ID(),
/// 			ResourceId:            resource.ID(),
/// 			HttpMethod:            method.HttpMethod,
/// 			IntegrationHttpMethod: pulumi.String("POST"),
/// 			Type:                  pulumi.String("AWS_PROXY"),
/// 			Uri:                   lambda.InvokeArn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Lambda
/// 		_, err = lambda.NewPermission(ctx, "apigw_lambda", &lambda.PermissionArgs{
/// 			StatementId: pulumi.String("AllowExecutionFromAPIGateway"),
/// 			Action:      pulumi.String("lambda:InvokeFunction"),
/// 			Function:    lambda.Name,
/// 			Principal:   pulumi.String("apigateway.amazonaws.com"),
/// 			SourceArn: pulumi.All(api.ID(), method.HttpMethod, resource.Path).ApplyT(func(_args []interface{}) (string, error) {
/// 				id := _args[0].(string)
/// 				httpMethod := _args[1].(string)
/// 				path := _args[2].(string)
/// 				return fmt.Sprintf("arn:%v:execute-api:%v:%v:%v/*/%v%v", currentGetPartition.Partition, currentGetRegion.Region, current.AccountId, id, httpMethod, path), nil
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.apigateway.RestApiArgs;
/// import com.pulumi.aws.apigateway.Resource;
/// import com.pulumi.aws.apigateway.ResourceArgs;
/// import com.pulumi.aws.apigateway.Method;
/// import com.pulumi.aws.apigateway.MethodArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64sha256Args;
/// import com.pulumi.aws.apigateway.Integration;
/// import com.pulumi.aws.apigateway.IntegrationArgs;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         // API Gateway
///         var api = new RestApi("api", RestApiArgs.builder()
///             .name("myapi")
///             .build());
///
///         var resource = new Resource("resource", ResourceArgs.builder()
///             .pathPart("resource")
///             .parentId(api.rootResourceId())
///             .restApi(api.id())
///             .build());
///
///         var method = new Method("method", MethodArgs.builder()
///             .restApi(api.id())
///             .resourceId(resource.id())
///             .httpMethod("GET")
///             .authorization("NONE")
///             .build());
///
///         // IAM
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("lambda.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var role = new Role("role", RoleArgs.builder()
///             .name("myrole")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var lambda = new Function("lambda", FunctionArgs.builder()
///             .code(new FileArchive("lambda.zip"))
///             .name("mylambda")
///             .role(role.arn())
///             .handler("lambda.lambda_handler")
///             .runtime("python3.12")
///             .sourceCodeHash(StdFunctions.filebase64sha256(Filebase64sha256Args.builder()
///                 .input("lambda.zip")
///                 .build()).result())
///             .build());
///
///         var integration = new Integration("integration", IntegrationArgs.builder()
///             .restApi(api.id())
///             .resourceId(resource.id())
///             .httpMethod(method.httpMethod())
///             .integrationHttpMethod("POST")
///             .type("AWS_PROXY")
///             .uri(lambda.invokeArn())
///             .build());
///
///         // Lambda
///         var apigwLambda = new Permission("apigwLambda", PermissionArgs.builder()
///             .statementId("AllowExecutionFromAPIGateway")
///             .action("lambda:InvokeFunction")
///             .function(lambda.name())
///             .principal("apigateway.amazonaws.com")
///             .sourceArn(Output.tuple(api.id(), method.httpMethod(), resource.path()).applyValue(values -> {
///                 var id = values.t1;
///                 var httpMethod = values.t2;
///                 var path = values.t3;
///                 return String.format("arn:%s:execute-api:%s:%s:%s/*/%s%s", currentGetPartition.partition(),currentGetRegion.region(),current.accountId(),id,httpMethod,path);
///             }))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # API Gateway
///   api:
///     type: aws:apigateway:RestApi
///     properties:
///       name: myapi
///   resource:
///     type: aws:apigateway:Resource
///     properties:
///       pathPart: resource
///       parentId: ${api.rootResourceId}
///       restApi: ${api.id}
///   method:
///     type: aws:apigateway:Method
///     properties:
///       restApi: ${api.id}
///       resourceId: ${resource.id}
///       httpMethod: GET
///       authorization: NONE
///   integration:
///     type: aws:apigateway:Integration
///     properties:
///       restApi: ${api.id}
///       resourceId: ${resource.id}
///       httpMethod: ${method.httpMethod}
///       integrationHttpMethod: POST
///       type: AWS_PROXY
///       uri: ${lambda.invokeArn}
///   # Lambda
///   apigwLambda:
///     type: aws:lambda:Permission
///     name: apigw_lambda
///     properties:
///       statementId: AllowExecutionFromAPIGateway
///       action: lambda:InvokeFunction
///       function: ${lambda.name}
///       principal: apigateway.amazonaws.com
///       sourceArn: arn:${currentGetPartition.partition}:execute-api:${currentGetRegion.region}:${current.accountId}:${api.id}/*/${method.httpMethod}${resource.path}
///   lambda:
///     type: aws:lambda:Function
///     properties:
///       code:
///         fn::FileArchive: lambda.zip
///       name: mylambda
///       role: ${role.arn}
///       handler: lambda.lambda_handler
///       runtime: python3.12
///       sourceCodeHash:
///         fn::invoke:
///           function: std:filebase64sha256
///           arguments:
///             input: lambda.zip
///           return: result
///   role:
///     type: aws:iam:Role
///     properties:
///       name: myrole
///       assumeRolePolicy: ${assumeRole.json}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetRegion:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   # IAM
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - lambda.amazonaws.com
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ## Lambda integration with response streaming
///
/// All other resources and data sources are the same as in the previous example; only the integration configuration differs.
/// Note that the `timeout` of the `aws.lambda.Function` may need to be adjusted.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const integration = new aws.apigateway.Integration("integration", {
///     restApi: api.id,
///     resourceId: resource.id,
///     httpMethod: method.httpMethod,
///     integrationHttpMethod: "POST",
///     type: "AWS_PROXY",
///     uri: lambda.responseStreamingInvokeArn,
///     responseTransferMode: "STREAM",
///     timeoutMilliseconds: 900000,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// integration = aws.apigateway.Integration("integration",
///     rest_api=api["id"],
///     resource_id=resource["id"],
///     http_method=method["httpMethod"],
///     integration_http_method="POST",
///     type="AWS_PROXY",
///     uri=lambda_["responseStreamingInvokeArn"],
///     response_transfer_mode="STREAM",
///     timeout_milliseconds=900000)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integration = new Aws.ApiGateway.Integration("integration", new()
///     {
///         RestApi = api.Id,
///         ResourceId = resource.Id,
///         HttpMethod = method.HttpMethod,
///         IntegrationHttpMethod = "POST",
///         Type = "AWS_PROXY",
///         Uri = lambda.ResponseStreamingInvokeArn,
///         ResponseTransferMode = "STREAM",
///         TimeoutMilliseconds = 900000,
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
/// 		_, err := apigateway.NewIntegration(ctx, "integration", &apigateway.IntegrationArgs{
/// 			RestApi:               pulumi.Any(api.Id),
/// 			ResourceId:            pulumi.Any(resource.Id),
/// 			HttpMethod:            pulumi.Any(method.HttpMethod),
/// 			IntegrationHttpMethod: pulumi.String("POST"),
/// 			Type:                  pulumi.String("AWS_PROXY"),
/// 			Uri:                   pulumi.Any(lambda.ResponseStreamingInvokeArn),
/// 			ResponseTransferMode:  pulumi.String("STREAM"),
/// 			TimeoutMilliseconds:   pulumi.Int(900000),
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
/// import com.pulumi.aws.apigateway.Integration;
/// import com.pulumi.aws.apigateway.IntegrationArgs;
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
///         var integration = new Integration("integration", IntegrationArgs.builder()
///             .restApi(api.id())
///             .resourceId(resource.id())
///             .httpMethod(method.httpMethod())
///             .integrationHttpMethod("POST")
///             .type("AWS_PROXY")
///             .uri(lambda.responseStreamingInvokeArn())
///             .responseTransferMode("STREAM")
///             .timeoutMilliseconds(900000)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   integration:
///     type: aws:apigateway:Integration
///     properties:
///       restApi: ${api.id}
///       resourceId: ${resource.id}
///       httpMethod: ${method.httpMethod}
///       integrationHttpMethod: POST
///       type: AWS_PROXY
///       uri: ${lambda.responseStreamingInvokeArn}
///       responseTransferMode: STREAM
///       timeoutMilliseconds: 900000
/// ```
///
///
/// ## VPC Link
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const name = config.requireObject<any>("name");
/// const subnetId = config.requireObject<any>("subnetId");
/// const test = new aws.lb.LoadBalancer("test", {
///     name: name,
///     internal: true,
///     loadBalancerType: "network",
///     subnets: [subnetId],
/// });
/// const testVpcLink = new aws.apigateway.VpcLink("test", {
///     name: name,
///     targetArn: test.arn,
/// });
/// const testRestApi = new aws.apigateway.RestApi("test", {name: name});
/// const testResource = new aws.apigateway.Resource("test", {
///     restApi: testRestApi.id,
///     parentId: testRestApi.rootResourceId,
///     pathPart: "test",
/// });
/// const testMethod = new aws.apigateway.Method("test", {
///     restApi: testRestApi.id,
///     resourceId: testResource.id,
///     httpMethod: "GET",
///     authorization: "NONE",
///     requestModels: {
///         "application/json": "Error",
///     },
/// });
/// const testIntegration = new aws.apigateway.Integration("test", {
///     restApi: testRestApi.id,
///     resourceId: testResource.id,
///     httpMethod: testMethod.httpMethod,
///     requestTemplates: {
///         "application/json": "",
///         "application/xml": `#set(inputRoot = input.path(''))
/// { }`,
///     },
///     requestParameters: {
///         "integration.request.header.X-Authorization": "'static'",
///         "integration.request.header.X-Foo": "'Bar'",
///     },
///     type: "HTTP",
///     uri: "https://www.google.de",
///     integrationHttpMethod: "GET",
///     passthroughBehavior: "WHEN_NO_MATCH",
///     contentHandling: "CONVERT_TO_TEXT",
///     connectionType: "VPC_LINK",
///     connectionId: testVpcLink.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// name = config.require_object("name")
/// subnet_id = config.require_object("subnetId")
/// test = aws.lb.LoadBalancer("test",
///     name=name,
///     internal=True,
///     load_balancer_type="network",
///     subnets=[subnet_id])
/// test_vpc_link = aws.apigateway.VpcLink("test",
///     name=name,
///     target_arn=test.arn)
/// test_rest_api = aws.apigateway.RestApi("test", name=name)
/// test_resource = aws.apigateway.Resource("test",
///     rest_api=test_rest_api.id,
///     parent_id=test_rest_api.root_resource_id,
///     path_part="test")
/// test_method = aws.apigateway.Method("test",
///     rest_api=test_rest_api.id,
///     resource_id=test_resource.id,
///     http_method="GET",
///     authorization="NONE",
///     request_models={
///         "application/json": "Error",
///     })
/// test_integration = aws.apigateway.Integration("test",
///     rest_api=test_rest_api.id,
///     resource_id=test_resource.id,
///     http_method=test_method.http_method,
///     request_templates={
///         "application/json": "",
///         "application/xml": """#set($inputRoot = $input.path('$'))
/// { }""",
///     },
///     request_parameters={
///         "integration.request.header.X-Authorization": "'static'",
///         "integration.request.header.X-Foo": "'Bar'",
///     },
///     type="HTTP",
///     uri="https://www.google.de",
///     integration_http_method="GET",
///     passthrough_behavior="WHEN_NO_MATCH",
///     content_handling="CONVERT_TO_TEXT",
///     connection_type="VPC_LINK",
///     connection_id=test_vpc_link.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.RequireObject<dynamic>("name");
///     var subnetId = config.RequireObject<dynamic>("subnetId");
///     var test = new Aws.LB.LoadBalancer("test", new()
///     {
///         Name = name,
///         Internal = true,
///         LoadBalancerType = "network",
///         Subnets = new[]
///         {
///             subnetId,
///         },
///     });
///
///     var testVpcLink = new Aws.ApiGateway.VpcLink("test", new()
///     {
///         Name = name,
///         TargetArn = test.Arn,
///     });
///
///     var testRestApi = new Aws.ApiGateway.RestApi("test", new()
///     {
///         Name = name,
///     });
///
///     var testResource = new Aws.ApiGateway.Resource("test", new()
///     {
///         RestApi = testRestApi.Id,
///         ParentId = testRestApi.RootResourceId,
///         PathPart = "test",
///     });
///
///     var testMethod = new Aws.ApiGateway.Method("test", new()
///     {
///         RestApi = testRestApi.Id,
///         ResourceId = testResource.Id,
///         HttpMethod = "GET",
///         Authorization = "NONE",
///         RequestModels =
///         {
///             { "application/json", "Error" },
///         },
///     });
///
///     var testIntegration = new Aws.ApiGateway.Integration("test", new()
///     {
///         RestApi = testRestApi.Id,
///         ResourceId = testResource.Id,
///         HttpMethod = testMethod.HttpMethod,
///         RequestTemplates =
///         {
///             { "application/json", "" },
///             { "application/xml", @"#set($inputRoot = $input.path('$'))
/// { }" },
///         },
///         RequestParameters =
///         {
///             { "integration.request.header.X-Authorization", "'static'" },
///             { "integration.request.header.X-Foo", "'Bar'" },
///         },
///         Type = "HTTP",
///         Uri = "https://www.google.de",
///         IntegrationHttpMethod = "GET",
///         PassthroughBehavior = "WHEN_NO_MATCH",
///         ContentHandling = "CONVERT_TO_TEXT",
///         ConnectionType = "VPC_LINK",
///         ConnectionId = testVpcLink.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := cfg.RequireObject("name")
/// 		subnetId := cfg.RequireObject("subnetId")
/// 		test, err := lb.NewLoadBalancer(ctx, "test", &lb.LoadBalancerArgs{
/// 			Name:             pulumi.Any(name),
/// 			Internal:         pulumi.Bool(true),
/// 			LoadBalancerType: pulumi.String("network"),
/// 			Subnets: pulumi.StringArray{
/// 				subnetId,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVpcLink, err := apigateway.NewVpcLink(ctx, "test", &apigateway.VpcLinkArgs{
/// 			Name:      pulumi.Any(name),
/// 			TargetArn: test.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testRestApi, err := apigateway.NewRestApi(ctx, "test", &apigateway.RestApiArgs{
/// 			Name: pulumi.Any(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testResource, err := apigateway.NewResource(ctx, "test", &apigateway.ResourceArgs{
/// 			RestApi:  testRestApi.ID(),
/// 			ParentId: testRestApi.RootResourceId,
/// 			PathPart: pulumi.String("test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testMethod, err := apigateway.NewMethod(ctx, "test", &apigateway.MethodArgs{
/// 			RestApi:       testRestApi.ID(),
/// 			ResourceId:    testResource.ID(),
/// 			HttpMethod:    pulumi.String("GET"),
/// 			Authorization: pulumi.String("NONE"),
/// 			RequestModels: pulumi.StringMap{
/// 				"application/json": pulumi.String("Error"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewIntegration(ctx, "test", &apigateway.IntegrationArgs{
/// 			RestApi:    testRestApi.ID(),
/// 			ResourceId: testResource.ID(),
/// 			HttpMethod: testMethod.HttpMethod,
/// 			RequestTemplates: pulumi.StringMap{
/// 				"application/json": pulumi.String(""),
/// 				"application/xml":  pulumi.String("#set($inputRoot = $input.path('$'))\n{ }"),
/// 			},
/// 			RequestParameters: pulumi.StringMap{
/// 				"integration.request.header.X-Authorization": pulumi.String("'static'"),
/// 				"integration.request.header.X-Foo":           pulumi.String("'Bar'"),
/// 			},
/// 			Type:                  pulumi.String("HTTP"),
/// 			Uri:                   pulumi.String("https://www.google.de"),
/// 			IntegrationHttpMethod: pulumi.String("GET"),
/// 			PassthroughBehavior:   pulumi.String("WHEN_NO_MATCH"),
/// 			ContentHandling:       pulumi.String("CONVERT_TO_TEXT"),
/// 			ConnectionType:        pulumi.String("VPC_LINK"),
/// 			ConnectionId:          testVpcLink.ID(),
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
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.LoadBalancerArgs;
/// import com.pulumi.aws.apigateway.VpcLink;
/// import com.pulumi.aws.apigateway.VpcLinkArgs;
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.apigateway.RestApiArgs;
/// import com.pulumi.aws.apigateway.Resource;
/// import com.pulumi.aws.apigateway.ResourceArgs;
/// import com.pulumi.aws.apigateway.Method;
/// import com.pulumi.aws.apigateway.MethodArgs;
/// import com.pulumi.aws.apigateway.Integration;
/// import com.pulumi.aws.apigateway.IntegrationArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name");
///         final var subnetId = config.get("subnetId");
///         var test = new LoadBalancer("test", LoadBalancerArgs.builder()
///             .name(name)
///             .internal(true)
///             .loadBalancerType("network")
///             .subnets(subnetId)
///             .build());
///
///         var testVpcLink = new VpcLink("testVpcLink", VpcLinkArgs.builder()
///             .name(name)
///             .targetArn(test.arn())
///             .build());
///
///         var testRestApi = new RestApi("testRestApi", RestApiArgs.builder()
///             .name(name)
///             .build());
///
///         var testResource = new Resource("testResource", ResourceArgs.builder()
///             .restApi(testRestApi.id())
///             .parentId(testRestApi.rootResourceId())
///             .pathPart("test")
///             .build());
///
///         var testMethod = new Method("testMethod", MethodArgs.builder()
///             .restApi(testRestApi.id())
///             .resourceId(testResource.id())
///             .httpMethod("GET")
///             .authorization("NONE")
///             .requestModels(Map.of("application/json", "Error"))
///             .build());
///
///         var testIntegration = new Integration("testIntegration", IntegrationArgs.builder()
///             .restApi(testRestApi.id())
///             .resourceId(testResource.id())
///             .httpMethod(testMethod.httpMethod())
///             .requestTemplates(Map.ofEntries(
///                 Map.entry("application/json", ""),
///                 Map.entry("application/xml", """
/// #set($inputRoot = $input.path('$'))
/// { }                """)
///             ))
///             .requestParameters(Map.ofEntries(
///                 Map.entry("integration.request.header.X-Authorization", "'static'"),
///                 Map.entry("integration.request.header.X-Foo", "'Bar'")
///             ))
///             .type("HTTP")
///             .uri("https://www.google.de")
///             .integrationHttpMethod("GET")
///             .passthroughBehavior("WHEN_NO_MATCH")
///             .contentHandling("CONVERT_TO_TEXT")
///             .connectionType("VPC_LINK")
///             .connectionId(testVpcLink.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: dynamic
///   subnetId:
///     type: dynamic
/// resources:
///   test:
///     type: aws:lb:LoadBalancer
///     properties:
///       name: ${name}
///       internal: true
///       loadBalancerType: network
///       subnets:
///         - ${subnetId}
///   testVpcLink:
///     type: aws:apigateway:VpcLink
///     name: test
///     properties:
///       name: ${name}
///       targetArn: ${test.arn}
///   testRestApi:
///     type: aws:apigateway:RestApi
///     name: test
///     properties:
///       name: ${name}
///   testResource:
///     type: aws:apigateway:Resource
///     name: test
///     properties:
///       restApi: ${testRestApi.id}
///       parentId: ${testRestApi.rootResourceId}
///       pathPart: test
///   testMethod:
///     type: aws:apigateway:Method
///     name: test
///     properties:
///       restApi: ${testRestApi.id}
///       resourceId: ${testResource.id}
///       httpMethod: GET
///       authorization: NONE
///       requestModels:
///         application/json: Error
///   testIntegration:
///     type: aws:apigateway:Integration
///     name: test
///     properties:
///       restApi: ${testRestApi.id}
///       resourceId: ${testResource.id}
///       httpMethod: ${testMethod.httpMethod}
///       requestTemplates:
///         application/json: ""
///         application/xml: |-
///           #set($inputRoot = $input.path('$'))
///           { }
///       requestParameters:
///         integration.request.header.X-Authorization: '''static'''
///         integration.request.header.X-Foo: '''Bar'''
///       type: HTTP
///       uri: https://www.google.de
///       integrationHttpMethod: GET
///       passthroughBehavior: WHEN_NO_MATCH
///       contentHandling: CONVERT_TO_TEXT
///       connectionType: VPC_LINK
///       connectionId: ${testVpcLink.id}
/// ```
///
///
/// ## VPC Link V2 with Application Load Balancer
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.VpcLink("example", {
///     name: "example",
///     securityGroupIds: [exampleAwsSecurityGroup.id],
///     subnetIds: exampleAwsSubnet.map(__item => __item.id),
/// });
/// const exampleLoadBalancer = new aws.lb.LoadBalancer("example", {
///     name: "example-alb",
///     internal: true,
///     loadBalancerType: "application",
///     securityGroups: [exampleAwsSecurityGroup.id],
///     subnets: exampleAwsSubnet.map(__item => __item.id),
/// });
/// const exampleListener = new aws.lb.Listener("example", {
///     loadBalancerArn: exampleLoadBalancer.arn,
///     port: 80,
///     protocol: "HTTP",
///     defaultActions: [{
///         type: "fixed-response",
///         fixedResponse: {
///             contentType: "text/plain",
///             messageBody: "OK",
///             statusCode: "200",
///         },
///     }],
/// });
/// const exampleRestApi = new aws.apigateway.RestApi("example", {name: "example"});
/// const exampleResource = new aws.apigateway.Resource("example", {
///     restApi: exampleRestApi.id,
///     parentId: exampleRestApi.rootResourceId,
///     pathPart: "example",
/// });
/// const exampleMethod = new aws.apigateway.Method("example", {
///     restApi: exampleRestApi.id,
///     resourceId: exampleResource.id,
///     httpMethod: "GET",
///     authorization: "NONE",
/// });
/// const exampleIntegration = new aws.apigateway.Integration("example", {
///     restApi: exampleRestApi.id,
///     resourceId: exampleResource.id,
///     httpMethod: exampleMethod.httpMethod,
///     integrationHttpMethod: "GET",
///     type: "HTTP_PROXY",
///     connectionType: "VPC_LINK",
///     connectionId: example.id,
///     integrationTarget: exampleLoadBalancer.arn,
///     uri: "http://example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.VpcLink("example",
///     name="example",
///     security_group_ids=[example_aws_security_group["id"]],
///     subnet_ids=[__item["id"] for __item in example_aws_subnet])
/// example_load_balancer = aws.lb.LoadBalancer("example",
///     name="example-alb",
///     internal=True,
///     load_balancer_type="application",
///     security_groups=[example_aws_security_group["id"]],
///     subnets=[__item["id"] for __item in example_aws_subnet])
/// example_listener = aws.lb.Listener("example",
///     load_balancer_arn=example_load_balancer.arn,
///     port=80,
///     protocol="HTTP",
///     default_actions=[{
///         "type": "fixed-response",
///         "fixed_response": {
///             "content_type": "text/plain",
///             "message_body": "OK",
///             "status_code": "200",
///         },
///     }])
/// example_rest_api = aws.apigateway.RestApi("example", name="example")
/// example_resource = aws.apigateway.Resource("example",
///     rest_api=example_rest_api.id,
///     parent_id=example_rest_api.root_resource_id,
///     path_part="example")
/// example_method = aws.apigateway.Method("example",
///     rest_api=example_rest_api.id,
///     resource_id=example_resource.id,
///     http_method="GET",
///     authorization="NONE")
/// example_integration = aws.apigateway.Integration("example",
///     rest_api=example_rest_api.id,
///     resource_id=example_resource.id,
///     http_method=example_method.http_method,
///     integration_http_method="GET",
///     type="HTTP_PROXY",
///     connection_type="VPC_LINK",
///     connection_id=example.id,
///     integration_target=example_load_balancer.arn,
///     uri="http://example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGatewayV2.VpcLink("example", new()
///     {
///         Name = "example",
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///     });
///
///     var exampleLoadBalancer = new Aws.LB.LoadBalancer("example", new()
///     {
///         Name = "example-alb",
///         Internal = true,
///         LoadBalancerType = "application",
///         SecurityGroups = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         Subnets = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///     });
///
///     var exampleListener = new Aws.LB.Listener("example", new()
///     {
///         LoadBalancerArn = exampleLoadBalancer.Arn,
///         Port = 80,
///         Protocol = "HTTP",
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "fixed-response",
///                 FixedResponse = new Aws.LB.Inputs.ListenerDefaultActionFixedResponseArgs
///                 {
///                     ContentType = "text/plain",
///                     MessageBody = "OK",
///                     StatusCode = "200",
///                 },
///             },
///         },
///     });
///
///     var exampleRestApi = new Aws.ApiGateway.RestApi("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleResource = new Aws.ApiGateway.Resource("example", new()
///     {
///         RestApi = exampleRestApi.Id,
///         ParentId = exampleRestApi.RootResourceId,
///         PathPart = "example",
///     });
///
///     var exampleMethod = new Aws.ApiGateway.Method("example", new()
///     {
///         RestApi = exampleRestApi.Id,
///         ResourceId = exampleResource.Id,
///         HttpMethod = "GET",
///         Authorization = "NONE",
///     });
///
///     var exampleIntegration = new Aws.ApiGateway.Integration("example", new()
///     {
///         RestApi = exampleRestApi.Id,
///         ResourceId = exampleResource.Id,
///         HttpMethod = exampleMethod.HttpMethod,
///         IntegrationHttpMethod = "GET",
///         Type = "HTTP_PROXY",
///         ConnectionType = "VPC_LINK",
///         ConnectionId = example.Id,
///         IntegrationTarget = exampleLoadBalancer.Arn,
///         Uri = "http://example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.Id)
/// }
/// example, err := apigatewayv2.NewVpcLink(ctx, "example", &apigatewayv2.VpcLinkArgs{
/// Name: pulumi.String("example"),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// SubnetIds: toPulumiArray(splat0),
/// })
/// if err != nil {
/// return err
/// }
/// var splat1 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat1 = append(splat1, val0.Id)
/// }
/// exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// Name: pulumi.String("example-alb"),
/// Internal: pulumi.Bool(true),
/// LoadBalancerType: pulumi.String("application"),
/// SecurityGroups: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// Subnets: toPulumiArray(splat1),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListener(ctx, "example", &lb.ListenerArgs{
/// LoadBalancerArn: exampleLoadBalancer.Arn,
/// Port: pulumi.Int(80),
/// Protocol: pulumi.String("HTTP"),
/// DefaultActions: lb.ListenerDefaultActionArray{
/// &lb.ListenerDefaultActionArgs{
/// Type: pulumi.String("fixed-response"),
/// FixedResponse: &lb.ListenerDefaultActionFixedResponseArgs{
/// ContentType: pulumi.String("text/plain"),
/// MessageBody: pulumi.String("OK"),
/// StatusCode: pulumi.String("200"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleRestApi, err := apigateway.NewRestApi(ctx, "example", &apigateway.RestApiArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleResource, err := apigateway.NewResource(ctx, "example", &apigateway.ResourceArgs{
/// RestApi: exampleRestApi.ID(),
/// ParentId: exampleRestApi.RootResourceId,
/// PathPart: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleMethod, err := apigateway.NewMethod(ctx, "example", &apigateway.MethodArgs{
/// RestApi: exampleRestApi.ID(),
/// ResourceId: exampleResource.ID(),
/// HttpMethod: pulumi.String("GET"),
/// Authorization: pulumi.String("NONE"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = apigateway.NewIntegration(ctx, "example", &apigateway.IntegrationArgs{
/// RestApi: exampleRestApi.ID(),
/// ResourceId: exampleResource.ID(),
/// HttpMethod: exampleMethod.HttpMethod,
/// IntegrationHttpMethod: pulumi.String("GET"),
/// Type: pulumi.String("HTTP_PROXY"),
/// ConnectionType: pulumi.String("VPC_LINK"),
/// ConnectionId: example.ID(),
/// IntegrationTarget: exampleLoadBalancer.Arn,
/// Uri: pulumi.String("http://example.com"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.VpcLink;
/// import com.pulumi.aws.apigatewayv2.VpcLinkArgs;
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.LoadBalancerArgs;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionFixedResponseArgs;
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.apigateway.RestApiArgs;
/// import com.pulumi.aws.apigateway.Resource;
/// import com.pulumi.aws.apigateway.ResourceArgs;
/// import com.pulumi.aws.apigateway.Method;
/// import com.pulumi.aws.apigateway.MethodArgs;
/// import com.pulumi.aws.apigateway.Integration;
/// import com.pulumi.aws.apigateway.IntegrationArgs;
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
///         var example = new VpcLink("example", VpcLinkArgs.builder()
///             .name("example")
///             .securityGroupIds(exampleAwsSecurityGroup.id())
///             .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///             .build());
///
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name("example-alb")
///             .internal(true)
///             .loadBalancerType("application")
///             .securityGroups(exampleAwsSecurityGroup.id())
///             .subnets(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///             .build());
///
///         var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
///             .loadBalancerArn(exampleLoadBalancer.arn())
///             .port(80)
///             .protocol("HTTP")
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .type("fixed-response")
///                 .fixedResponse(ListenerDefaultActionFixedResponseArgs.builder()
///                     .contentType("text/plain")
///                     .messageBody("OK")
///                     .statusCode("200")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleRestApi = new RestApi("exampleRestApi", RestApiArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleResource = new Resource("exampleResource", ResourceArgs.builder()
///             .restApi(exampleRestApi.id())
///             .parentId(exampleRestApi.rootResourceId())
///             .pathPart("example")
///             .build());
///
///         var exampleMethod = new Method("exampleMethod", MethodArgs.builder()
///             .restApi(exampleRestApi.id())
///             .resourceId(exampleResource.id())
///             .httpMethod("GET")
///             .authorization("NONE")
///             .build());
///
///         var exampleIntegration = new Integration("exampleIntegration", IntegrationArgs.builder()
///             .restApi(exampleRestApi.id())
///             .resourceId(exampleResource.id())
///             .httpMethod(exampleMethod.httpMethod())
///             .integrationHttpMethod("GET")
///             .type("HTTP_PROXY")
///             .connectionType("VPC_LINK")
///             .connectionId(example.id())
///             .integrationTarget(exampleLoadBalancer.arn())
///             .uri("http://example.com")
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.Integration` using `REST-API-ID/RESOURCE-ID/HTTP-METHOD`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/integration:Integration example 12345abcde/67890fghij/GET
/// ```
class Integration extends pulumi.CustomResource {
  /// List of cache key parameters for the integration.
  late final pulumi.Output<List<String>?> cacheKeyParameters;

  /// Integration's cache namespace.
  late final pulumi.Output<String> cacheNamespace;

  /// ID of the VpcLink used for the integration. **Required** if `connection_type` is `VPC_LINK`
  late final pulumi.Output<String?> connectionId;

  /// Integration input's [connectionType](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/#connectionType). Valid values are `INTERNET` (default for connections through the public routable internet), and `VPC_LINK` (for private connections between API Gateway and a network load balancer in a VPC).
  late final pulumi.Output<String?> connectionType;

  /// How to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the passthroughBehaviors is configured to support payload pass-through.
  late final pulumi.Output<String?> contentHandling;

  /// Credentials required for the integration. For `AWS` integrations, 2 options are available. To specify an IAM Role for Amazon API Gateway to assume, use the role's ARN. To require that the caller's identity be passed through from the request, specify the string `arn:aws:iam::\*:user/\*`.
  late final pulumi.Output<String?> credentials;

  /// HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTION`, `ANY`)
  /// when calling the associated resource.
  late final pulumi.Output<String> httpMethod;

  /// Integration HTTP method
  /// (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONs`, `ANY`, `PATCH`) specifying how API Gateway will interact with the back end.
  /// **Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
  /// Not all methods are compatible with all `AWS` integrations.
  /// e.g., Lambda function [can only be invoked](https://github.com/awslabs/aws-apigateway-importer/issues/9#issuecomment-129651005) via `POST`.
  late final pulumi.Output<String?> integrationHttpMethod;

  /// The ALB or NLB ARN to send the request to. Used for private integrations with VPC Link V2. When using VPC Link V2, this parameter specifies the load balancer ARN, while `uri` is used to set the Host header.
  late final pulumi.Output<String?> integrationTarget;

  /// Integration passthrough behavior (`WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`).  **Required** if `request_templates` is used.
  late final pulumi.Output<String> passthroughBehavior;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of request query string parameters and headers that should be passed to the backend responder.
  /// For example: `request_parameters = { "integration.request.header.X-Some-Other-Header" = "method.request.header.X-Some-Header" }`
  late final pulumi.Output<Map<String, String>?> requestParameters;

  /// Map of the integration's request templates.
  late final pulumi.Output<Map<String, String>?> requestTemplates;

  /// API resource ID.
  late final pulumi.Output<String> resourceId;

  /// Specifies the response transfer mode of the integration. Valid values are `BUFFERED` and `STREAM`. Default to `BUFFERED`.
  /// Once set, setting the value to `BUFFERED` requires explicitly specifying `BUFFERED`, rather than removing this argument.
  late final pulumi.Output<String> responseTransferMode;

  /// ID of the associated REST API.
  late final pulumi.Output<String> restApi;

  /// Custom timeout in milliseconds. The minimum value is 50. The maximum value is 300,000 when `response_transfer_mode` is `BUFFERED`, and 900,000 when `response_transfer_mode` is `STREAM`. The default value is 29,000 milliseconds. You need to raise a [Service Quota Ticket](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) to increase time beyond 29,000 milliseconds for `BUFFERED` mode.
  late final pulumi.Output<int?> timeoutMilliseconds;

  /// TLS configuration. See below.
  late final pulumi.Output<IntegrationTlsConfig?> tlsConfig;

  /// Integration input's [type](https://docs.aws.amazon.com/apigateway/api-reference/resource/integration/). Valid values are `HTTP` (for HTTP backends), `MOCK` (not calling any real backend), `AWS` (for AWS services), `AWS_PROXY` (for Lambda proxy integration) and `HTTP_PROXY` (for HTTP proxy integration). An `HTTP` or `HTTP_PROXY` integration with a `connection_type` of `VPC_LINK` is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC.
  late final pulumi.Output<String> type;

  /// Input's URI. **Required** if `type` is `AWS`, `AWS_PROXY`, `HTTP` or `HTTP_PROXY`.
  /// For HTTP integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the RFC-3986 specification . For AWS integrations, the URI should be of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}`. `region`, `subdomain` and `service` are used to determine the right endpoint.
  /// e.g., `arn:aws:apigateway:eu-west-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-1:123456789012:function:my-func/invocations`. For private integrations, the URI parameter is not used for routing requests to your endpoint, but is used for setting the Host header and for certificate validation.
  late final pulumi.Output<String?> uri;

  /// Creates a new [Integration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Integration]. {@macro pulumi_apigateway_integration_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Integration(
    String name, {
    IntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apigateway/integration:Integration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cacheKeyParameters = registerOutput<List<String>?>('cacheKeyParameters');
    cacheNamespace = registerOutput<String>('cacheNamespace');
    connectionId = registerOutput<String?>('connectionId');
    connectionType = registerOutput<String?>('connectionType');
    contentHandling = registerOutput<String?>('contentHandling');
    credentials = registerOutput<String?>('credentials');
    httpMethod = registerOutput<String>('httpMethod');
    integrationHttpMethod = registerOutput<String?>('integrationHttpMethod');
    integrationTarget = registerOutput<String?>('integrationTarget');
    passthroughBehavior = registerOutput<String>('passthroughBehavior');
    region = registerOutput<String>('region');
    requestParameters = registerOutput<Map<String, String>?>(
      'requestParameters',
    );
    requestTemplates = registerOutput<Map<String, String>?>('requestTemplates');
    resourceId = registerOutput<String>('resourceId');
    responseTransferMode = registerOutput<String>('responseTransferMode');
    restApi = registerOutput<String>('restApi');
    timeoutMilliseconds = registerOutput<int?>('timeoutMilliseconds');
    tlsConfig = registerOutput<IntegrationTlsConfig?>(
      'tlsConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IntegrationTlsConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    uri = registerOutput<String?>('uri');
  }

  /// Gets an existing [Integration] resource's state with the given [name] and [id].
  static Integration get(
    String name,
    pulumi.Input<String> id, {
    IntegrationState? state,
  }) {
    return Integration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Integration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apigateway/integration:Integration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cacheKeyParameters = registerOutput<List<String>?>('cacheKeyParameters');
    cacheNamespace = registerOutput<String>('cacheNamespace');
    connectionId = registerOutput<String?>('connectionId');
    connectionType = registerOutput<String?>('connectionType');
    contentHandling = registerOutput<String?>('contentHandling');
    credentials = registerOutput<String?>('credentials');
    httpMethod = registerOutput<String>('httpMethod');
    integrationHttpMethod = registerOutput<String?>('integrationHttpMethod');
    integrationTarget = registerOutput<String?>('integrationTarget');
    passthroughBehavior = registerOutput<String>('passthroughBehavior');
    region = registerOutput<String>('region');
    requestParameters = registerOutput<Map<String, String>?>(
      'requestParameters',
    );
    requestTemplates = registerOutput<Map<String, String>?>('requestTemplates');
    resourceId = registerOutput<String>('resourceId');
    responseTransferMode = registerOutput<String>('responseTransferMode');
    restApi = registerOutput<String>('restApi');
    timeoutMilliseconds = registerOutput<int?>('timeoutMilliseconds');
    tlsConfig = registerOutput<IntegrationTlsConfig?>(
      'tlsConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IntegrationTlsConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    uri = registerOutput<String?>('uri');
  }
}
