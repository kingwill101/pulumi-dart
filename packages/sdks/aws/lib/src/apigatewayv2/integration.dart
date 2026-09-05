import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_args.dart';
import 'integration_response_parameter.dart';
import 'integration_state.dart';
import 'integration_tls_config.dart';

/// Manages an Amazon API Gateway Version 2 integration.
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
/// const example = new aws.apigatewayv2.Integration("example", {
///     apiId: exampleAwsApigatewayv2Api.id,
///     integrationType: "MOCK",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Integration("example",
///     api_id=example_aws_apigatewayv2_api["id"],
///     integration_type="MOCK")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGatewayV2.Integration("example", new()
///     {
///         ApiId = exampleAwsApigatewayv2Api.Id,
///         IntegrationType = "MOCK",
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
/// 		_, err := apigatewayv2.NewIntegration(ctx, "example", &apigatewayv2.IntegrationArgs{
/// 			ApiId:           pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// 			IntegrationType: pulumi.String("MOCK"),
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
/// resource "aws_apigatewayv2_integration" "example" {
///   api_id           = exampleAwsApigatewayv2Api.id
///   integration_type = "MOCK"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.Integration;
/// import com.pulumi.aws.apigatewayv2.IntegrationArgs;
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
///         var example = new Integration("example", IntegrationArgs.builder()
///             .apiId(exampleAwsApigatewayv2Api.id())
///             .integrationType("MOCK")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:Integration
///     properties:
///       apiId: ${exampleAwsApigatewayv2Api.id}
///       integrationType: MOCK
/// ```
///
///
/// ### Lambda Integration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.Function("example", {
///     code: new pulumi.asset.FileArchive("example.zip"),
///     name: "Example",
///     role: exampleAwsIamRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.NodeJS24dX,
/// });
/// const exampleIntegration = new aws.apigatewayv2.Integration("example", {
///     apiId: exampleAwsApigatewayv2Api.id,
///     integrationType: "AWS_PROXY",
///     connectionType: "INTERNET",
///     contentHandlingStrategy: "CONVERT_TO_TEXT",
///     description: "Lambda example",
///     integrationMethod: "POST",
///     integrationUri: example.invokeArn,
///     passthroughBehavior: "WHEN_NO_MATCH",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.Function("example",
///     code=pulumi.FileArchive("example.zip"),
///     name="Example",
///     role=example_aws_iam_role["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X)
/// example_integration = aws.apigatewayv2.Integration("example",
///     api_id=example_aws_apigatewayv2_api["id"],
///     integration_type="AWS_PROXY",
///     connection_type="INTERNET",
///     content_handling_strategy="CONVERT_TO_TEXT",
///     description="Lambda example",
///     integration_method="POST",
///     integration_uri=example.invoke_arn,
///     passthrough_behavior="WHEN_NO_MATCH")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         Code = new FileArchive("example.zip"),
///         Name = "Example",
///         Role = exampleAwsIamRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///     });
///
///     var exampleIntegration = new Aws.ApiGatewayV2.Integration("example", new()
///     {
///         ApiId = exampleAwsApigatewayv2Api.Id,
///         IntegrationType = "AWS_PROXY",
///         ConnectionType = "INTERNET",
///         ContentHandlingStrategy = "CONVERT_TO_TEXT",
///         Description = "Lambda example",
///         IntegrationMethod = "POST",
///         IntegrationUri = example.InvokeArn,
///         PassthroughBehavior = "WHEN_NO_MATCH",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			Code:    pulumi.NewFileArchive("example.zip"),
/// 			Name:    pulumi.String("Example"),
/// 			Role:    pulumi.Any(exampleAwsIamRole.Arn),
/// 			Handler: pulumi.String("index.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS24dX),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigatewayv2.NewIntegration(ctx, "example", &apigatewayv2.IntegrationArgs{
/// 			ApiId:                   pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// 			IntegrationType:         pulumi.String("AWS_PROXY"),
/// 			ConnectionType:          pulumi.String("INTERNET"),
/// 			ContentHandlingStrategy: pulumi.String("CONVERT_TO_TEXT"),
/// 			Description:             pulumi.String("Lambda example"),
/// 			IntegrationMethod:       pulumi.String("POST"),
/// 			IntegrationUri:          example.InvokeArn,
/// 			PassthroughBehavior:     pulumi.String("WHEN_NO_MATCH"),
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
/// resource "aws_lambda_function" "example" {
///   code    = fileArchive("example.zip")
///   name    = "Example"
///   role    = exampleAwsIamRole.arn
///   handler = "index.handler"
///   runtime = "nodejs24.x"
/// }
/// resource "aws_apigatewayv2_integration" "example" {
///   api_id                    = exampleAwsApigatewayv2Api.id
///   integration_type          = "AWS_PROXY"
///   connection_type           = "INTERNET"
///   content_handling_strategy = "CONVERT_TO_TEXT"
///   description               = "Lambda example"
///   integration_method        = "POST"
///   integration_uri           = aws_lambda_function.example.invoke_arn
///   passthrough_behavior      = "WHEN_NO_MATCH"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.apigatewayv2.Integration;
/// import com.pulumi.aws.apigatewayv2.IntegrationArgs;
/// import com.pulumi.asset.FileArchive;
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
///         var example = new Function("example", FunctionArgs.builder()
///             .code(new FileArchive("example.zip"))
///             .name("Example")
///             .role(exampleAwsIamRole.arn())
///             .handler("index.handler")
///             .runtime("nodejs24.x")
///             .build());
///
///         var exampleIntegration = new Integration("exampleIntegration", IntegrationArgs.builder()
///             .apiId(exampleAwsApigatewayv2Api.id())
///             .integrationType("AWS_PROXY")
///             .connectionType("INTERNET")
///             .contentHandlingStrategy("CONVERT_TO_TEXT")
///             .description("Lambda example")
///             .integrationMethod("POST")
///             .integrationUri(example.invokeArn())
///             .passthroughBehavior("WHEN_NO_MATCH")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:Function
///     properties:
///       code:
///         fn::fileArchive: example.zip
///       name: Example
///       role: ${exampleAwsIamRole.arn}
///       handler: index.handler
///       runtime: nodejs24.x
///   exampleIntegration:
///     type: aws:apigatewayv2:Integration
///     name: example
///     properties:
///       apiId: ${exampleAwsApigatewayv2Api.id}
///       integrationType: AWS_PROXY
///       connectionType: INTERNET
///       contentHandlingStrategy: CONVERT_TO_TEXT
///       description: Lambda example
///       integrationMethod: POST
///       integrationUri: ${example.invokeArn}
///       passthroughBehavior: WHEN_NO_MATCH
/// ```
///
///
/// ### AWS Service Integration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Integration("example", {
///     apiId: exampleAwsApigatewayv2Api.id,
///     credentialsArn: exampleAwsIamRole.arn,
///     description: "SQS example",
///     integrationType: "AWS_PROXY",
///     integrationSubtype: "SQS-SendMessage",
///     requestParameters: {
///         QueueUrl: "$request.header.queueUrl",
///         MessageBody: "$request.body.message",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Integration("example",
///     api_id=example_aws_apigatewayv2_api["id"],
///     credentials_arn=example_aws_iam_role["arn"],
///     description="SQS example",
///     integration_type="AWS_PROXY",
///     integration_subtype="SQS-SendMessage",
///     request_parameters={
///         "QueueUrl": "$request.header.queueUrl",
///         "MessageBody": "$request.body.message",
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
///     var example = new Aws.ApiGatewayV2.Integration("example", new()
///     {
///         ApiId = exampleAwsApigatewayv2Api.Id,
///         CredentialsArn = exampleAwsIamRole.Arn,
///         Description = "SQS example",
///         IntegrationType = "AWS_PROXY",
///         IntegrationSubtype = "SQS-SendMessage",
///         RequestParameters =
///         {
///             { "QueueUrl", "$request.header.queueUrl" },
///             { "MessageBody", "$request.body.message" },
///         },
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
/// 		_, err := apigatewayv2.NewIntegration(ctx, "example", &apigatewayv2.IntegrationArgs{
/// 			ApiId:              pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// 			CredentialsArn:     pulumi.Any(exampleAwsIamRole.Arn),
/// 			Description:        pulumi.String("SQS example"),
/// 			IntegrationType:    pulumi.String("AWS_PROXY"),
/// 			IntegrationSubtype: pulumi.String("SQS-SendMessage"),
/// 			RequestParameters: pulumi.StringMap{
/// 				"QueueUrl":    pulumi.String("$request.header.queueUrl"),
/// 				"MessageBody": pulumi.String("$request.body.message"),
/// 			},
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
/// resource "aws_apigatewayv2_integration" "example" {
///   api_id              = exampleAwsApigatewayv2Api.id
///   credentials_arn     = exampleAwsIamRole.arn
///   description         = "SQS example"
///   integration_type    = "AWS_PROXY"
///   integration_subtype = "SQS-SendMessage"
///   request_parameters = {
///     "QueueUrl"    = "$request.header.queueUrl"
///     "MessageBody" = "$request.body.message"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.Integration;
/// import com.pulumi.aws.apigatewayv2.IntegrationArgs;
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
///         var example = new Integration("example", IntegrationArgs.builder()
///             .apiId(exampleAwsApigatewayv2Api.id())
///             .credentialsArn(exampleAwsIamRole.arn())
///             .description("SQS example")
///             .integrationType("AWS_PROXY")
///             .integrationSubtype("SQS-SendMessage")
///             .requestParameters(Map.ofEntries(
///                 Map.entry("QueueUrl", "$request.header.queueUrl"),
///                 Map.entry("MessageBody", "$request.body.message")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:Integration
///     properties:
///       apiId: ${exampleAwsApigatewayv2Api.id}
///       credentialsArn: ${exampleAwsIamRole.arn}
///       description: SQS example
///       integrationType: AWS_PROXY
///       integrationSubtype: SQS-SendMessage
///       requestParameters:
///         QueueUrl: $request.header.queueUrl
///         MessageBody: $request.body.message
/// ```
///
///
/// ### Private Integration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Integration("example", {
///     tlsConfig: {
///         serverNameToVerify: "example.com",
///     },
///     responseParameters: [
///         {
///             statusCode: "403",
///             mappings: {
///                 "append:header.auth": "$context.authorizer.authorizerResponse",
///             },
///         },
///         {
///             statusCode: "200",
///             mappings: {
///                 "overwrite:statuscode": "204",
///             },
///         },
///     ],
///     apiId: exampleAwsApigatewayv2Api.id,
///     credentialsArn: exampleAwsIamRole.arn,
///     description: "Example with a load balancer",
///     integrationType: "HTTP_PROXY",
///     integrationUri: exampleAwsLbListener.arn,
///     integrationMethod: "ANY",
///     connectionType: "VPC_LINK",
///     connectionId: exampleAwsApigatewayv2VpcLink.id,
///     requestParameters: {
///         "append:header.authforintegration": "$context.authorizer.authorizerResponse",
///         "overwrite:path": "staticValueForIntegration",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Integration("example",
///     tls_config={
///         "server_name_to_verify": "example.com",
///     },
///     response_parameters=[
///         {
///             "status_code": "403",
///             "mappings": {
///                 "append:header.auth": "$context.authorizer.authorizerResponse",
///             },
///         },
///         {
///             "status_code": "200",
///             "mappings": {
///                 "overwrite:statuscode": "204",
///             },
///         },
///     ],
///     api_id=example_aws_apigatewayv2_api["id"],
///     credentials_arn=example_aws_iam_role["arn"],
///     description="Example with a load balancer",
///     integration_type="HTTP_PROXY",
///     integration_uri=example_aws_lb_listener["arn"],
///     integration_method="ANY",
///     connection_type="VPC_LINK",
///     connection_id=example_aws_apigatewayv2_vpc_link["id"],
///     request_parameters={
///         "append:header.authforintegration": "$context.authorizer.authorizerResponse",
///         "overwrite:path": "staticValueForIntegration",
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
///     var example = new Aws.ApiGatewayV2.Integration("example", new()
///     {
///         TlsConfig = new Aws.ApiGatewayV2.Inputs.IntegrationTlsConfigArgs
///         {
///             ServerNameToVerify = "example.com",
///         },
///         ResponseParameters = new[]
///         {
///             new Aws.ApiGatewayV2.Inputs.IntegrationResponseParameterArgs
///             {
///                 StatusCode = "403",
///                 Mappings =
///                 {
///                     { "append:header.auth", "$context.authorizer.authorizerResponse" },
///                 },
///             },
///             new Aws.ApiGatewayV2.Inputs.IntegrationResponseParameterArgs
///             {
///                 StatusCode = "200",
///                 Mappings =
///                 {
///                     { "overwrite:statuscode", "204" },
///                 },
///             },
///         },
///         ApiId = exampleAwsApigatewayv2Api.Id,
///         CredentialsArn = exampleAwsIamRole.Arn,
///         Description = "Example with a load balancer",
///         IntegrationType = "HTTP_PROXY",
///         IntegrationUri = exampleAwsLbListener.Arn,
///         IntegrationMethod = "ANY",
///         ConnectionType = "VPC_LINK",
///         ConnectionId = exampleAwsApigatewayv2VpcLink.Id,
///         RequestParameters =
///         {
///             { "append:header.authforintegration", "$context.authorizer.authorizerResponse" },
///             { "overwrite:path", "staticValueForIntegration" },
///         },
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
/// 		_, err := apigatewayv2.NewIntegration(ctx, "example", &apigatewayv2.IntegrationArgs{
/// 			TlsConfig: &apigatewayv2.IntegrationTlsConfigArgs{
/// 				ServerNameToVerify: pulumi.String("example.com"),
/// 			},
/// 			ResponseParameters: apigatewayv2.IntegrationResponseParameterArray{
/// 				&apigatewayv2.IntegrationResponseParameterArgs{
/// 					StatusCode: pulumi.String("403"),
/// 					Mappings: pulumi.StringMap{
/// 						"append:header.auth": pulumi.String("$context.authorizer.authorizerResponse"),
/// 					},
/// 				},
/// 				&apigatewayv2.IntegrationResponseParameterArgs{
/// 					StatusCode: pulumi.String("200"),
/// 					Mappings: pulumi.StringMap{
/// 						"overwrite:statuscode": pulumi.String("204"),
/// 					},
/// 				},
/// 			},
/// 			ApiId:             pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// 			CredentialsArn:    pulumi.Any(exampleAwsIamRole.Arn),
/// 			Description:       pulumi.String("Example with a load balancer"),
/// 			IntegrationType:   pulumi.String("HTTP_PROXY"),
/// 			IntegrationUri:    pulumi.Any(exampleAwsLbListener.Arn),
/// 			IntegrationMethod: pulumi.String("ANY"),
/// 			ConnectionType:    pulumi.String("VPC_LINK"),
/// 			ConnectionId:      pulumi.Any(exampleAwsApigatewayv2VpcLink.Id),
/// 			RequestParameters: pulumi.StringMap{
/// 				"append:header.authforintegration": pulumi.String("$context.authorizer.authorizerResponse"),
/// 				"overwrite:path":                   pulumi.String("staticValueForIntegration"),
/// 			},
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
/// resource "aws_apigatewayv2_integration" "example" {
///   tls_config = {
///     server_name_to_verify = "example.com"
///   }
///   response_parameters {
///     status_code = 403
///     mappings = {
///       "append:header.auth" = "$context.authorizer.authorizerResponse"
///     }
///   }
///   response_parameters {
///     status_code = 200
///     mappings = {
///       "overwrite:statuscode" = "204"
///     }
///   }
///   api_id             = exampleAwsApigatewayv2Api.id
///   credentials_arn    = exampleAwsIamRole.arn
///   description        = "Example with a load balancer"
///   integration_type   = "HTTP_PROXY"
///   integration_uri    = exampleAwsLbListener.arn
///   integration_method = "ANY"
///   connection_type    = "VPC_LINK"
///   connection_id      = exampleAwsApigatewayv2VpcLink.id
///   request_parameters = {
///     "append:header.authforintegration" = "$context.authorizer.authorizerResponse"
///     "overwrite:path"                   = "staticValueForIntegration"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.Integration;
/// import com.pulumi.aws.apigatewayv2.IntegrationArgs;
/// import com.pulumi.aws.apigatewayv2.inputs.IntegrationTlsConfigArgs;
/// import com.pulumi.aws.apigatewayv2.inputs.IntegrationResponseParameterArgs;
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
///         var example = new Integration("example", IntegrationArgs.builder()
///             .tlsConfig(IntegrationTlsConfigArgs.builder()
///                 .serverNameToVerify("example.com")
///                 .build())
///             .responseParameters(
///                 IntegrationResponseParameterArgs.builder()
///                     .statusCode("403")
///                     .mappings(Map.of("append:header.auth", "$context.authorizer.authorizerResponse"))
///                     .build(),
///                 IntegrationResponseParameterArgs.builder()
///                     .statusCode("200")
///                     .mappings(Map.of("overwrite:statuscode", "204"))
///                     .build())
///             .apiId(exampleAwsApigatewayv2Api.id())
///             .credentialsArn(exampleAwsIamRole.arn())
///             .description("Example with a load balancer")
///             .integrationType("HTTP_PROXY")
///             .integrationUri(exampleAwsLbListener.arn())
///             .integrationMethod("ANY")
///             .connectionType("VPC_LINK")
///             .connectionId(exampleAwsApigatewayv2VpcLink.id())
///             .requestParameters(Map.ofEntries(
///                 Map.entry("append:header.authforintegration", "$context.authorizer.authorizerResponse"),
///                 Map.entry("overwrite:path", "staticValueForIntegration")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:Integration
///     properties:
///       tlsConfig:
///         serverNameToVerify: example.com
///       responseParameters:
///         - statusCode: 403
///           mappings:
///             append:header.auth: $context.authorizer.authorizerResponse
///         - statusCode: 200
///           mappings:
///             overwrite:statuscode: '204'
///       apiId: ${exampleAwsApigatewayv2Api.id}
///       credentialsArn: ${exampleAwsIamRole.arn}
///       description: Example with a load balancer
///       integrationType: HTTP_PROXY
///       integrationUri: ${exampleAwsLbListener.arn}
///       integrationMethod: ANY
///       connectionType: VPC_LINK
///       connectionId: ${exampleAwsApigatewayv2VpcLink.id}
///       requestParameters:
///         append:header.authforintegration: $context.authorizer.authorizerResponse
///         overwrite:path: staticValueForIntegration
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.Integration` using the API identifier and integration identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/integration:Integration example aabbccddee/1122334
/// ```
///
/// &gt; **Note:** The API Gateway managed integration created as part of [_quick_create_](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-basic-concept.html#apigateway-definition-quick-create) cannot be imported.
class Integration extends pulumi.CustomResource {
  /// API identifier.
  late final pulumi.Output<String> apiId;
  /// ID of the VPC link for a private integration. Supported only for HTTP APIs. Must be between 1 and 1024 characters in length.
  late final pulumi.Output<String?> connectionId;
  /// Type of the network connection to the integration endpoint. Valid values: `INTERNET`, `VPC_LINK`. Default is `INTERNET`.
  late final pulumi.Output<String?> connectionType;
  /// How to handle response payload content type conversions. Valid values: `CONVERT_TO_BINARY`, `CONVERT_TO_TEXT`. Supported only for WebSocket APIs.
  late final pulumi.Output<String?> contentHandlingStrategy;
  /// Credentials required for the integration, if any.
  late final pulumi.Output<String?> credentialsArn;
  /// Description of the integration.
  late final pulumi.Output<String?> description;
  /// Integration's HTTP method. Must be specified if `integrationType` is not `MOCK`.
  late final pulumi.Output<String?> integrationMethod;
  /// [Integration response selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions) for the integration.
  late final pulumi.Output<String> integrationResponseSelectionExpression;
  /// AWS service action to invoke. Supported only for HTTP APIs when `integrationType` is `AWS_PROXY`. See the [AWS service integration reference](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html) documentation for supported values. Must be between 1 and 128 characters in length.
  late final pulumi.Output<String?> integrationSubtype;
  /// Integration type of an integration. Valid values: `AWS` (supported only for WebSocket APIs), `AWS_PROXY`, `HTTP` (supported only for WebSocket APIs), `HTTP_PROXY`, `MOCK` (supported only for WebSocket APIs). For an HTTP API private integration, use `HTTP_PROXY`.
  late final pulumi.Output<String> integrationType;
  /// URI of the Lambda function for a Lambda proxy integration, when `integrationType` is `AWS_PROXY`. For an `HTTP` integration, specify a fully-qualified URL. For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service.
  late final pulumi.Output<String?> integrationUri;
  /// Pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the `requestTemplates` attribute. Valid values: `WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`. Default is `WHEN_NO_MATCH`. Supported only for WebSocket APIs.
  late final pulumi.Output<String?> passthroughBehavior;
  /// [Format of the payload](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html#http-api-develop-integrations-lambda.proxy-format) sent to an integration. Valid values: `1.0`, `2.0`. Default is `1.0`.
  late final pulumi.Output<String?> payloadFormatVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. For HTTP APIs with a specified `integrationSubtype`, a key-value map specifying parameters that are passed to `AWS_PROXY` integrations. For HTTP APIs without a specified `integrationSubtype`, a key-value map specifying how to transform HTTP requests before sending them to the backend. See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html) for details.
  late final pulumi.Output<Map<String, String>?> requestParameters;
  /// Map of [Velocity](https://velocity.apache.org/) templates that are applied on the request payload based on the value of the Content-Type header sent by the client. Supported only for WebSocket APIs.
  late final pulumi.Output<Map<String, String>?> requestTemplates;
  /// Mappings to transform the HTTP response from a backend integration before returning the response to clients. Supported only for HTTP APIs.
  late final pulumi.Output<List<IntegrationResponseParameter>?> responseParameters;
  /// [Template selection expression](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-template-selection-expressions) for the integration.
  late final pulumi.Output<String?> templateSelectionExpression;
  /// Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs. this provider will only perform drift detection of its value when present in a configuration.
  late final pulumi.Output<int> timeoutMilliseconds;
  /// TLS configuration for a private integration. Supported only for HTTP APIs.
  late final pulumi.Output<IntegrationTlsConfig?> tlsConfig;

  /// Creates a new [Integration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Integration]. {@macro pulumi_apigatewayv2_integration_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Integration(
    String name, {
    IntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/integration:Integration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    apiId = registerOutput<String>('apiId');
    connectionId = registerOutput<String?>('connectionId');
    connectionType = registerOutput<String?>('connectionType');
    contentHandlingStrategy = registerOutput<String?>('contentHandlingStrategy');
    credentialsArn = registerOutput<String?>('credentialsArn');
    description = registerOutput<String?>('description');
    integrationMethod = registerOutput<String?>('integrationMethod');
    integrationResponseSelectionExpression = registerOutput<String>('integrationResponseSelectionExpression');
    integrationSubtype = registerOutput<String?>('integrationSubtype');
    integrationType = registerOutput<String>('integrationType');
    integrationUri = registerOutput<String?>('integrationUri');
    passthroughBehavior = registerOutput<String?>('passthroughBehavior');
    payloadFormatVersion = registerOutput<String?>('payloadFormatVersion');
    region = registerOutput<String>('region');
    requestParameters = registerOutput<Map<String, String>?>('requestParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    requestTemplates = registerOutput<Map<String, String>?>('requestTemplates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    responseParameters = registerOutput<List<IntegrationResponseParameter>?>('responseParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IntegrationResponseParameter>(guardedValue, (value) => IntegrationResponseParameter.fromMap((value as Map).cast<String, dynamic>())); });
    templateSelectionExpression = registerOutput<String?>('templateSelectionExpression');
    timeoutMilliseconds = registerOutput<int>('timeoutMilliseconds');
    tlsConfig = registerOutput<IntegrationTlsConfig?>('tlsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationTlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Integration] resource's state with the given [name] and [id].
  static Integration get(
    String name,
    pulumi.Input<String> id, {
    IntegrationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Integration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Integration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/integration:Integration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String>('apiId');
    connectionId = registerOutput<String?>('connectionId');
    connectionType = registerOutput<String?>('connectionType');
    contentHandlingStrategy = registerOutput<String?>('contentHandlingStrategy');
    credentialsArn = registerOutput<String?>('credentialsArn');
    description = registerOutput<String?>('description');
    integrationMethod = registerOutput<String?>('integrationMethod');
    integrationResponseSelectionExpression = registerOutput<String>('integrationResponseSelectionExpression');
    integrationSubtype = registerOutput<String?>('integrationSubtype');
    integrationType = registerOutput<String>('integrationType');
    integrationUri = registerOutput<String?>('integrationUri');
    passthroughBehavior = registerOutput<String?>('passthroughBehavior');
    payloadFormatVersion = registerOutput<String?>('payloadFormatVersion');
    region = registerOutput<String>('region');
    requestParameters = registerOutput<Map<String, String>?>('requestParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    requestTemplates = registerOutput<Map<String, String>?>('requestTemplates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    responseParameters = registerOutput<List<IntegrationResponseParameter>?>('responseParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IntegrationResponseParameter>(guardedValue, (value) => IntegrationResponseParameter.fromMap((value as Map).cast<String, dynamic>())); });
    templateSelectionExpression = registerOutput<String?>('templateSelectionExpression');
    timeoutMilliseconds = registerOutput<int>('timeoutMilliseconds');
    tlsConfig = registerOutput<IntegrationTlsConfig?>('tlsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationTlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Integration] resource.
  Integration.reference(String urn)
    : super(
        'aws:apigatewayv2/integration:Integration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiId = registerOutput<String>('apiId');
    connectionId = registerOutput<String?>('connectionId');
    connectionType = registerOutput<String?>('connectionType');
    contentHandlingStrategy = registerOutput<String?>('contentHandlingStrategy');
    credentialsArn = registerOutput<String?>('credentialsArn');
    description = registerOutput<String?>('description');
    integrationMethod = registerOutput<String?>('integrationMethod');
    integrationResponseSelectionExpression = registerOutput<String>('integrationResponseSelectionExpression');
    integrationSubtype = registerOutput<String?>('integrationSubtype');
    integrationType = registerOutput<String>('integrationType');
    integrationUri = registerOutput<String?>('integrationUri');
    passthroughBehavior = registerOutput<String?>('passthroughBehavior');
    payloadFormatVersion = registerOutput<String?>('payloadFormatVersion');
    region = registerOutput<String>('region');
    requestParameters = registerOutput<Map<String, String>?>('requestParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    requestTemplates = registerOutput<Map<String, String>?>('requestTemplates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    responseParameters = registerOutput<List<IntegrationResponseParameter>?>('responseParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IntegrationResponseParameter>(guardedValue, (value) => IntegrationResponseParameter.fromMap((value as Map).cast<String, dynamic>())); });
    templateSelectionExpression = registerOutput<String?>('templateSelectionExpression');
    timeoutMilliseconds = registerOutput<int>('timeoutMilliseconds');
    tlsConfig = registerOutput<IntegrationTlsConfig?>('tlsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationTlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
