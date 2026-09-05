import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_qlapi_additional_authentication_provider.dart';
import 'graph_qlapi_args.dart';
import 'graph_qlapi_enhanced_metrics_config.dart';
import 'graph_qlapi_lambda_authorizer_config.dart';
import 'graph_qlapi_log_config.dart';
import 'graph_qlapi_openid_connect_config.dart';
import 'graph_qlapi_state.dart';
import 'graph_qlapi_user_pool_config.dart';

/// Provides an AppSync GraphQL API.
///
/// ## Example Usage
///
/// ### API Key Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.GraphQLApi("example", {
///     authenticationType: "API_KEY",
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     authentication_type="API_KEY",
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         AuthenticationType = "API_KEY",
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AuthenticationType: pulumi.String("API_KEY"),
/// 			Name:               pulumi.String("example"),
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
/// resource "aws_appsync_graphqlapi" "example" {
///   authentication_type = "API_KEY"
///   name                = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .authenticationType("API_KEY")
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:GraphQLApi
///     properties:
///       authenticationType: API_KEY
///       name: example
/// ```
///
///
/// ### AWS IAM Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.GraphQLApi("example", {
///     authenticationType: "AWS_IAM",
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     authentication_type="AWS_IAM",
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         AuthenticationType = "AWS_IAM",
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AuthenticationType: pulumi.String("AWS_IAM"),
/// 			Name:               pulumi.String("example"),
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
/// resource "aws_appsync_graphqlapi" "example" {
///   authentication_type = "AWS_IAM"
///   name                = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .authenticationType("AWS_IAM")
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:GraphQLApi
///     properties:
///       authenticationType: AWS_IAM
///       name: example
/// ```
///
///
/// ### AWS Cognito User Pool Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.GraphQLApi("example", {
///     userPoolConfig: {
///         awsRegion: current.region,
///         defaultAction: "DENY",
///         userPoolId: exampleAwsCognitoUserPool.id,
///     },
///     authenticationType: "AMAZON_COGNITO_USER_POOLS",
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     user_pool_config={
///         "aws_region": current["region"],
///         "default_action": "DENY",
///         "user_pool_id": example_aws_cognito_user_pool["id"],
///     },
///     authentication_type="AMAZON_COGNITO_USER_POOLS",
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         UserPoolConfig = new Aws.AppSync.Inputs.GraphQLApiUserPoolConfigArgs
///         {
///             AwsRegion = current.Region,
///             DefaultAction = "DENY",
///             UserPoolId = exampleAwsCognitoUserPool.Id,
///         },
///         AuthenticationType = "AMAZON_COGNITO_USER_POOLS",
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			UserPoolConfig: &appsync.GraphQLApiUserPoolConfigArgs{
/// 				AwsRegion:     pulumi.Any(current.Region),
/// 				DefaultAction: pulumi.String("DENY"),
/// 				UserPoolId:    pulumi.Any(exampleAwsCognitoUserPool.Id),
/// 			},
/// 			AuthenticationType: pulumi.String("AMAZON_COGNITO_USER_POOLS"),
/// 			Name:               pulumi.String("example"),
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
/// resource "aws_appsync_graphqlapi" "example" {
///   user_pool_config = {
///     aws_region     = current.region
///     default_action = "DENY"
///     user_pool_id   = exampleAwsCognitoUserPool.id
///   }
///   authentication_type = "AMAZON_COGNITO_USER_POOLS"
///   name                = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.appsync.inputs.GraphQLApiUserPoolConfigArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .userPoolConfig(GraphQLApiUserPoolConfigArgs.builder()
///                 .awsRegion(current.region())
///                 .defaultAction("DENY")
///                 .userPoolId(exampleAwsCognitoUserPool.id())
///                 .build())
///             .authenticationType("AMAZON_COGNITO_USER_POOLS")
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:GraphQLApi
///     properties:
///       userPoolConfig:
///         awsRegion: ${current.region}
///         defaultAction: DENY
///         userPoolId: ${exampleAwsCognitoUserPool.id}
///       authenticationType: AMAZON_COGNITO_USER_POOLS
///       name: example
/// ```
///
///
/// ### OpenID Connect Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.GraphQLApi("example", {
///     openidConnectConfig: {
///         issuer: "https://example.com",
///     },
///     authenticationType: "OPENID_CONNECT",
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     openid_connect_config={
///         "issuer": "https://example.com",
///     },
///     authentication_type="OPENID_CONNECT",
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         OpenidConnectConfig = new Aws.AppSync.Inputs.GraphQLApiOpenidConnectConfigArgs
///         {
///             Issuer = "https://example.com",
///         },
///         AuthenticationType = "OPENID_CONNECT",
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			OpenidConnectConfig: &appsync.GraphQLApiOpenidConnectConfigArgs{
/// 				Issuer: pulumi.String("https://example.com"),
/// 			},
/// 			AuthenticationType: pulumi.String("OPENID_CONNECT"),
/// 			Name:               pulumi.String("example"),
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
/// resource "aws_appsync_graphqlapi" "example" {
///   openid_connect_config = {
///     issuer = "https://example.com"
///   }
///   authentication_type = "OPENID_CONNECT"
///   name                = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.appsync.inputs.GraphQLApiOpenidConnectConfigArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .openidConnectConfig(GraphQLApiOpenidConnectConfigArgs.builder()
///                 .issuer("https://example.com")
///                 .build())
///             .authenticationType("OPENID_CONNECT")
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:GraphQLApi
///     properties:
///       openidConnectConfig:
///         issuer: https://example.com
///       authenticationType: OPENID_CONNECT
///       name: example
/// ```
///
///
/// ### AWS Lambda Authorizer Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.GraphQLApi("example", {
///     lambdaAuthorizerConfig: {
///         authorizerUri: "arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer",
///     },
///     authenticationType: "AWS_LAMBDA",
///     name: "example",
/// });
/// const appsyncLambdaAuthorizer = new aws.lambda.Permission("appsync_lambda_authorizer", {
///     statementId: "appsync_lambda_authorizer",
///     action: "lambda:InvokeFunction",
///     "function": "custom_lambda_authorizer",
///     principal: "appsync.amazonaws.com",
///     sourceArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     lambda_authorizer_config={
///         "authorizer_uri": "arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer",
///     },
///     authentication_type="AWS_LAMBDA",
///     name="example")
/// appsync_lambda_authorizer = aws.lambda_.Permission("appsync_lambda_authorizer",
///     statement_id="appsync_lambda_authorizer",
///     action="lambda:InvokeFunction",
///     function="custom_lambda_authorizer",
///     principal="appsync.amazonaws.com",
///     source_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         LambdaAuthorizerConfig = new Aws.AppSync.Inputs.GraphQLApiLambdaAuthorizerConfigArgs
///         {
///             AuthorizerUri = "arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer",
///         },
///         AuthenticationType = "AWS_LAMBDA",
///         Name = "example",
///     });
///
///     var appsyncLambdaAuthorizer = new Aws.Lambda.Permission("appsync_lambda_authorizer", new()
///     {
///         StatementId = "appsync_lambda_authorizer",
///         Action = "lambda:InvokeFunction",
///         Function = "custom_lambda_authorizer",
///         Principal = "appsync.amazonaws.com",
///         SourceArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			LambdaAuthorizerConfig: &appsync.GraphQLApiLambdaAuthorizerConfigArgs{
/// 				AuthorizerUri: pulumi.String("arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer"),
/// 			},
/// 			AuthenticationType: pulumi.String("AWS_LAMBDA"),
/// 			Name:               pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewPermission(ctx, "appsync_lambda_authorizer", &lambda.PermissionArgs{
/// 			StatementId: pulumi.String("appsync_lambda_authorizer"),
/// 			Action:      pulumi.String("lambda:InvokeFunction"),
/// 			Function:    pulumi.Any("custom_lambda_authorizer"),
/// 			Principal:   pulumi.String("appsync.amazonaws.com"),
/// 			SourceArn:   example.Arn,
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
/// resource "aws_appsync_graphqlapi" "example" {
///   lambda_authorizer_config = {
///     authorizer_uri = "arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer"
///   }
///   authentication_type = "AWS_LAMBDA"
///   name                = "example"
/// }
/// resource "aws_lambda_permission" "appsync_lambda_authorizer" {
///   statement_id = "appsync_lambda_authorizer"
///   action       = "lambda:InvokeFunction"
///   function     = "custom_lambda_authorizer"
///   principal    = "appsync.amazonaws.com"
///   source_arn   = aws_appsync_graphqlapi.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.appsync.inputs.GraphQLApiLambdaAuthorizerConfigArgs;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .lambdaAuthorizerConfig(GraphQLApiLambdaAuthorizerConfigArgs.builder()
///                 .authorizerUri("arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer")
///                 .build())
///             .authenticationType("AWS_LAMBDA")
///             .name("example")
///             .build());
///
///         var appsyncLambdaAuthorizer = new Permission("appsyncLambdaAuthorizer", PermissionArgs.builder()
///             .statementId("appsync_lambda_authorizer")
///             .action("lambda:InvokeFunction")
///             .function("custom_lambda_authorizer")
///             .principal("appsync.amazonaws.com")
///             .sourceArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:GraphQLApi
///     properties:
///       lambdaAuthorizerConfig:
///         authorizerUri: arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer
///       authenticationType: AWS_LAMBDA
///       name: example
///   appsyncLambdaAuthorizer:
///     type: aws:lambda:Permission
///     name: appsync_lambda_authorizer
///     properties:
///       statementId: appsync_lambda_authorizer
///       action: lambda:InvokeFunction
///       function: custom_lambda_authorizer
///       principal: appsync.amazonaws.com
///       sourceArn: ${example.arn}
/// ```
///
///
/// ### With Multiple Authentication Providers
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.GraphQLApi("example", {
///     additionalAuthenticationProviders: [{
///         authenticationType: "AWS_IAM",
///     }],
///     authenticationType: "API_KEY",
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     additional_authentication_providers=[{
///         "authentication_type": "AWS_IAM",
///     }],
///     authentication_type="API_KEY",
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         AdditionalAuthenticationProviders = new[]
///         {
///             new Aws.AppSync.Inputs.GraphQLApiAdditionalAuthenticationProviderArgs
///             {
///                 AuthenticationType = "AWS_IAM",
///             },
///         },
///         AuthenticationType = "API_KEY",
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AdditionalAuthenticationProviders: appsync.GraphQLApiAdditionalAuthenticationProviderArray{
/// 				&appsync.GraphQLApiAdditionalAuthenticationProviderArgs{
/// 					AuthenticationType: pulumi.String("AWS_IAM"),
/// 				},
/// 			},
/// 			AuthenticationType: pulumi.String("API_KEY"),
/// 			Name:               pulumi.String("example"),
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
/// resource "aws_appsync_graphqlapi" "example" {
///   additional_authentication_providers {
///     authentication_type = "AWS_IAM"
///   }
///   authentication_type = "API_KEY"
///   name                = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.appsync.inputs.GraphQLApiAdditionalAuthenticationProviderArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .additionalAuthenticationProviders(GraphQLApiAdditionalAuthenticationProviderArgs.builder()
///                 .authenticationType("AWS_IAM")
///                 .build())
///             .authenticationType("API_KEY")
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:GraphQLApi
///     properties:
///       additionalAuthenticationProviders:
///         - authenticationType: AWS_IAM
///       authenticationType: API_KEY
///       name: example
/// ```
///
///
/// ### With Schema
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.GraphQLApi("example", {
///     authenticationType: "AWS_IAM",
///     name: "example",
///     schema: `schema {
/// \\tquery: Query
/// }
/// type Query {
///   test: Int
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     authentication_type="AWS_IAM",
///     name="example",
///     schema="""schema {
/// \tquery: Query
/// }
/// type Query {
///   test: Int
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         AuthenticationType = "AWS_IAM",
///         Name = "example",
///         Schema = @"schema {
/// \tquery: Query
/// }
/// type Query {
///   test: Int
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AuthenticationType: pulumi.String("AWS_IAM"),
/// 			Name:               pulumi.String("example"),
/// 			Schema: pulumi.String(`schema {
/// \tquery: Query
/// }
/// type Query {
///   test: Int
/// }
/// `),
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
/// resource "aws_appsync_graphqlapi" "example" {
///   authentication_type = "AWS_IAM"
///   name                = "example"
///   schema              = "schema {\n\\tquery: Query\n}\ntype Query {\n  test: Int\n}\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .authenticationType("AWS_IAM")
///             .name("example")
///             .schema("""
/// schema {
/// \tquery: Query
/// }
/// type Query {
///   test: Int
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:GraphQLApi
///     properties:
///       authenticationType: AWS_IAM
///       name: example
///       schema: |
///         schema {
///         \tquery: Query
///         }
///         type Query {
///           test: Int
///         }
/// ```
///
///
/// ### Enabling Logging
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["appsync.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const example = new aws.iam.Role("example", {
///     name: "example",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
///     policyArn: "arn:aws:iam::aws:policy/service-role/AWSAppSyncPushToCloudWatchLogs",
///     role: example.name,
/// });
/// const exampleGraphQLApi = new aws.appsync.GraphQLApi("example", {logConfig: {
///     cloudwatchLogsRoleArn: example.arn,
///     fieldLogLevel: "ERROR",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["appsync.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// example = aws.iam.Role("example",
///     name="example",
///     assume_role_policy=assume_role.json)
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
///     policy_arn="arn:aws:iam::aws:policy/service-role/AWSAppSyncPushToCloudWatchLogs",
///     role=example.name)
/// example_graph_ql_api = aws.appsync.GraphQLApi("example", log_config={
///     "cloudwatch_logs_role_arn": example.arn,
///     "field_log_level": "ERROR",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "appsync.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "example",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/service-role/AWSAppSyncPushToCloudWatchLogs",
///         Role = example.Name,
///     });
///
///     var exampleGraphQLApi = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         LogConfig = new Aws.AppSync.Inputs.GraphQLApiLogConfigArgs
///         {
///             CloudwatchLogsRoleArn = example.Arn,
///             FieldLogLevel = "ERROR",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"appsync.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AWSAppSyncPushToCloudWatchLogs"),
/// 			Role:      example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			LogConfig: &appsync.GraphQLApiLogConfigArgs{
/// 				CloudwatchLogsRoleArn: example.Arn,
/// 				FieldLogLevel:         pulumi.String("ERROR"),
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
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["appsync.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_iam_role" "example" {
///   name               = "example"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicyattachment" "example" {
///   policy_arn = "arn:aws:iam::aws:policy/service-role/AWSAppSyncPushToCloudWatchLogs"
///   role       = aws_iam_role.example.name
/// }
/// resource "aws_appsync_graphqlapi" "example" {
///   log_config = {
///     cloudwatch_logs_role_arn = aws_iam_role.example.arn
///     field_log_level          = "ERROR"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.appsync.inputs.GraphQLApiLogConfigArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("appsync.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/service-role/AWSAppSyncPushToCloudWatchLogs")
///             .role(example.name())
///             .build());
///
///         var exampleGraphQLApi = new GraphQLApi("exampleGraphQLApi", GraphQLApiArgs.builder()
///             .logConfig(GraphQLApiLogConfigArgs.builder()
///                 .cloudwatchLogsRoleArn(example.arn())
///                 .fieldLogLevel("ERROR")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: example
///       assumeRolePolicy: ${assumeRole.json}
///   exampleRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: example
///     properties:
///       policyArn: arn:aws:iam::aws:policy/service-role/AWSAppSyncPushToCloudWatchLogs
///       role: ${example.name}
///   exampleGraphQLApi:
///     type: aws:appsync:GraphQLApi
///     name: example
///     properties:
///       logConfig:
///         cloudwatchLogsRoleArn: ${example.arn}
///         fieldLogLevel: ERROR
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - appsync.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ### Associate Web ACL (v2)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.GraphQLApi("example", {
///     authenticationType: "API_KEY",
///     name: "example",
/// });
/// const exampleWebAcl = new aws.wafv2.WebAcl("example", {
///     defaultAction: {
///         allow: {},
///     },
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: false,
///         metricName: "friendly-metric-name",
///         sampledRequestsEnabled: false,
///     },
///     rules: [{
///         overrideAction: {
///             block: [{}],
///         },
///         statement: {
///             managedRuleGroupStatement: {
///                 name: "AWSManagedRulesCommonRuleSet",
///                 vendorName: "AWS",
///             },
///         },
///         visibilityConfig: {
///             cloudwatchMetricsEnabled: false,
///             metricName: "friendly-rule-metric-name",
///             sampledRequestsEnabled: false,
///         },
///         name: "rule-1",
///         priority: 1,
///     }],
///     name: "managed-rule-example",
///     description: "Example of a managed rule.",
///     scope: "REGIONAL",
/// });
/// const exampleWebAclAssociation = new aws.wafv2.WebAclAssociation("example", {
///     resourceArn: example.arn,
///     webAclArn: exampleWebAcl.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     authentication_type="API_KEY",
///     name="example")
/// example_web_acl = aws.wafv2.WebAcl("example",
///     default_action={
///         "allow": {},
///     },
///     visibility_config={
///         "cloudwatch_metrics_enabled": False,
///         "metric_name": "friendly-metric-name",
///         "sampled_requests_enabled": False,
///     },
///     rules=[{
///         "override_action": {
///             "block": [{}],
///         },
///         "statement": {
///             "managed_rule_group_statement": {
///                 "name": "AWSManagedRulesCommonRuleSet",
///                 "vendor_name": "AWS",
///             },
///         },
///         "visibility_config": {
///             "cloudwatch_metrics_enabled": False,
///             "metric_name": "friendly-rule-metric-name",
///             "sampled_requests_enabled": False,
///         },
///         "name": "rule-1",
///         "priority": 1,
///     }],
///     name="managed-rule-example",
///     description="Example of a managed rule.",
///     scope="REGIONAL")
/// example_web_acl_association = aws.wafv2.WebAclAssociation("example",
///     resource_arn=example.arn,
///     web_acl_arn=example_web_acl.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         AuthenticationType = "API_KEY",
///         Name = "example",
///     });
///
///     var exampleWebAcl = new Aws.WafV2.WebAcl("example", new()
///     {
///         DefaultAction = new Aws.WafV2.Inputs.WebAclDefaultActionArgs
///         {
///             Allow = null,
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = false,
///             MetricName = "friendly-metric-name",
///             SampledRequestsEnabled = false,
///         },
///         Rules =
///         {
///             new Aws.WafV2.Inputs.WebAclRuleArgs
///             {
///                 OverrideAction = new Aws.WafV2.Inputs.WebAclRuleOverrideActionArgs
///                 {
///                     Block = new[]
///                     {
///                         null,
///                     },
///                 },
///                 Statement = new Aws.WafV2.Inputs.WebAclRuleStatementArgs
///                 {
///                     ManagedRuleGroupStatement = new Aws.WafV2.Inputs.WebAclRuleStatementManagedRuleGroupStatementArgs
///                     {
///                         Name = "AWSManagedRulesCommonRuleSet",
///                         VendorName = "AWS",
///                     },
///                 },
///                 VisibilityConfig = new Aws.WafV2.Inputs.WebAclRuleVisibilityConfigArgs
///                 {
///                     CloudwatchMetricsEnabled = false,
///                     MetricName = "friendly-rule-metric-name",
///                     SampledRequestsEnabled = false,
///                 },
///                 Name = "rule-1",
///                 Priority = 1,
///             },
///         },
///         Name = "managed-rule-example",
///         Description = "Example of a managed rule.",
///         Scope = "REGIONAL",
///     });
///
///     var exampleWebAclAssociation = new Aws.WafV2.WebAclAssociation("example", new()
///     {
///         ResourceArn = example.Arn,
///         WebAclArn = exampleWebAcl.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AuthenticationType: pulumi.String("API_KEY"),
/// 			Name:               pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWebAcl, err := wafv2.NewWebAcl(ctx, "example", &wafv2.WebAclArgs{
/// 			DefaultAction: &wafv2.WebAclDefaultActionArgs{
/// 				Allow: &wafv2.WebAclDefaultActionAllowArgs{},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 				MetricName:               pulumi.String("friendly-metric-name"),
/// 				SampledRequestsEnabled:   pulumi.Bool(false),
/// 			},
/// 			Rules: wafv2.WebAclRuleTypeArray{
/// 				&wafv2.WebAclRuleTypeArgs{
/// 					OverrideAction: &wafv2.WebAclRuleOverrideActionArgs{
/// 						Block: []map[string]interface{}{
/// 							map[string]interface{}{},
/// 						},
/// 					},
/// 					Statement: &wafv2.WebAclRuleStatementArgs{
/// 						ManagedRuleGroupStatement: &wafv2.WebAclRuleStatementManagedRuleGroupStatementArgs{
/// 							Name:       pulumi.String("AWSManagedRulesCommonRuleSet"),
/// 							VendorName: pulumi.String("AWS"),
/// 						},
/// 					},
/// 					VisibilityConfig: &wafv2.WebAclRuleVisibilityConfigArgs{
/// 						CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 						MetricName:               pulumi.String("friendly-rule-metric-name"),
/// 						SampledRequestsEnabled:   pulumi.Bool(false),
/// 					},
/// 					Name:     pulumi.String("rule-1"),
/// 					Priority: pulumi.Int(1),
/// 				},
/// 			},
/// 			Name:        pulumi.String("managed-rule-example"),
/// 			Description: pulumi.String("Example of a managed rule."),
/// 			Scope:       pulumi.String("REGIONAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafv2.NewWebAclAssociation(ctx, "example", &wafv2.WebAclAssociationArgs{
/// 			ResourceArn: example.Arn,
/// 			WebAclArn:   exampleWebAcl.Arn,
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
/// resource "aws_appsync_graphqlapi" "example" {
///   authentication_type = "API_KEY"
///   name                = "example"
/// }
/// resource "aws_wafv2_webaclassociation" "example" {
///   resource_arn = aws_appsync_graphqlapi.example.arn
///   web_acl_arn  = aws_wafv2_webacl.example.arn
/// }
/// resource "aws_wafv2_webacl" "example" {
///   default_action = {
///     allow = {}
///   }
///   visibility_config = {
///     cloudwatch_metrics_enabled = false
///     metric_name                = "friendly-metric-name"
///     sampled_requests_enabled   = false
///   }
///   rules {
///     override_action = {
///       block = [{}]
///     }
///     statement = {
///       managed_rule_group_statement = {
///         name        = "AWSManagedRulesCommonRuleSet"
///         vendor_name = "AWS"
///       }
///     }
///     visibility_config = {
///       cloudwatch_metrics_enabled = false
///       metric_name                = "friendly-rule-metric-name"
///       sampled_requests_enabled   = false
///     }
///     name     = "rule-1"
///     priority = 1
///   }
///   name        = "managed-rule-example"
///   description = "Example of a managed rule."
///   scope       = "REGIONAL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.wafv2.WebAcl;
/// import com.pulumi.aws.wafv2.WebAclArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclDefaultActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclDefaultActionAllowArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleOverrideActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementManagedRuleGroupStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.WebAclAssociation;
/// import com.pulumi.aws.wafv2.WebAclAssociationArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .authenticationType("API_KEY")
///             .name("example")
///             .build());
///
///         var exampleWebAcl = new WebAcl("exampleWebAcl", WebAclArgs.builder()
///             .defaultAction(WebAclDefaultActionArgs.builder()
///                 .allow(WebAclDefaultActionAllowArgs.builder()
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(false)
///                 .metricName("friendly-metric-name")
///                 .sampledRequestsEnabled(false)
///                 .build())
///             .rules(WebAclRuleArgs.builder()
///                 .overrideAction(WebAclRuleOverrideActionArgs.builder()
///                     .block(Arrays.asList(Map.ofEntries(
///                     )))
///                     .build())
///                 .statement(WebAclRuleStatementArgs.builder()
///                     .managedRuleGroupStatement(WebAclRuleStatementManagedRuleGroupStatementArgs.builder()
///                         .name("AWSManagedRulesCommonRuleSet")
///                         .vendorName("AWS")
///                         .build())
///                     .build())
///                 .visibilityConfig(WebAclRuleVisibilityConfigArgs.builder()
///                     .cloudwatchMetricsEnabled(false)
///                     .metricName("friendly-rule-metric-name")
///                     .sampledRequestsEnabled(false)
///                     .build())
///                 .name("rule-1")
///                 .priority(1)
///                 .build())
///             .name("managed-rule-example")
///             .description("Example of a managed rule.")
///             .scope("REGIONAL")
///             .build());
///
///         var exampleWebAclAssociation = new WebAclAssociation("exampleWebAclAssociation", WebAclAssociationArgs.builder()
///             .resourceArn(example.arn())
///             .webAclArn(exampleWebAcl.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:GraphQLApi
///     properties:
///       authenticationType: API_KEY
///       name: example
///   exampleWebAclAssociation:
///     type: aws:wafv2:WebAclAssociation
///     name: example
///     properties:
///       resourceArn: ${example.arn}
///       webAclArn: ${exampleWebAcl.arn}
///   exampleWebAcl:
///     type: aws:wafv2:WebAcl
///     name: example
///     properties:
///       defaultAction:
///         allow: {}
///       visibilityConfig:
///         cloudwatchMetricsEnabled: false
///         metricName: friendly-metric-name
///         sampledRequestsEnabled: false
///       rules:
///         - overrideAction:
///             block:
///               - {}
///           statement:
///             managedRuleGroupStatement:
///               name: AWSManagedRulesCommonRuleSet
///               vendorName: AWS
///           visibilityConfig:
///             cloudwatchMetricsEnabled: false
///             metricName: friendly-rule-metric-name
///             sampledRequestsEnabled: false
///           name: rule-1
///           priority: 1
///       name: managed-rule-example
///       description: Example of a managed rule.
///       scope: REGIONAL
/// ```
///
///
/// ### GraphQL run complexity, query depth, and introspection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.GraphQLApi("example", {
///     authenticationType: "AWS_IAM",
///     name: "example",
///     introspectionConfig: "ENABLED",
///     queryDepthLimit: 2,
///     resolverCountLimit: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     authentication_type="AWS_IAM",
///     name="example",
///     introspection_config="ENABLED",
///     query_depth_limit=2,
///     resolver_count_limit=2)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         AuthenticationType = "AWS_IAM",
///         Name = "example",
///         IntrospectionConfig = "ENABLED",
///         QueryDepthLimit = 2,
///         ResolverCountLimit = 2,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AuthenticationType:  pulumi.String("AWS_IAM"),
/// 			Name:                pulumi.String("example"),
/// 			IntrospectionConfig: pulumi.String("ENABLED"),
/// 			QueryDepthLimit:     pulumi.Int(2),
/// 			ResolverCountLimit:  pulumi.Int(2),
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
/// resource "aws_appsync_graphqlapi" "example" {
///   authentication_type  = "AWS_IAM"
///   name                 = "example"
///   introspection_config = "ENABLED"
///   query_depth_limit    = 2
///   resolver_count_limit = 2
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .authenticationType("AWS_IAM")
///             .name("example")
///             .introspectionConfig("ENABLED")
///             .queryDepthLimit(2)
///             .resolverCountLimit(2)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:GraphQLApi
///     properties:
///       authenticationType: AWS_IAM
///       name: example
///       introspectionConfig: ENABLED
///       queryDepthLimit: 2
///       resolverCountLimit: 2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AppSync GraphQL API using the GraphQL API ID. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/graphQLApi:GraphQLApi example 0123456789
/// ```
class GraphQLApi extends pulumi.CustomResource {
  /// One or more additional authentication providers for the GraphQL API. See `additionalAuthenticationProvider` Block for details.
  late final pulumi.Output<List<GraphQLApiAdditionalAuthenticationProvider>?> additionalAuthenticationProviders;
  /// API type. Valid values are `GRAPHQL` or `MERGED`. A `MERGED` type requires `mergedApiExecutionRoleArn` to be set.
  late final pulumi.Output<String?> apiType;
  /// ARN
  late final pulumi.Output<String> arn;
  /// Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  late final pulumi.Output<String> authenticationType;
  /// Enables and controls the enhanced metrics feature. See `enhancedMetricsConfig` Block for details.
  late final pulumi.Output<GraphQLApiEnhancedMetricsConfig?> enhancedMetricsConfig;
  /// Sets the value of the GraphQL API to enable (`ENABLED`) or disable (`DISABLED`) introspection. If no value is provided, the introspection configuration will be set to ENABLED by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled. For more information about introspection, see [GraphQL introspection](https://graphql.org/learn/introspection/).
  late final pulumi.Output<String?> introspectionConfig;
  /// Nested argument containing Lambda authorizer configuration. See `lambdaAuthorizerConfig` Block for details.
  late final pulumi.Output<GraphQLApiLambdaAuthorizerConfig?> lambdaAuthorizerConfig;
  /// Nested argument containing logging configuration. See `logConfig` Block for details.
  late final pulumi.Output<GraphQLApiLogConfig?> logConfig;
  /// ARN of the execution role when `apiType` is set to `MERGED`.
  late final pulumi.Output<String?> mergedApiExecutionRoleArn;
  /// User-supplied name for the GraphQL API.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Nested argument containing OpenID Connect configuration. See `openidConnectConfig` Block for details.
  late final pulumi.Output<GraphQLApiOpenidConnectConfig?> openidConnectConfig;
  /// Maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is `0` (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between `1` and `75` nested levels. This field will produce a limit error if the operation falls out of bounds.
  ///
  /// Note that fields can still be set to nullable or non-nullable. If a non-nullable field produces an error, the error will be thrown upwards to the first nullable field available.
  late final pulumi.Output<int?> queryDepthLimit;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Maximum number of resolvers that can be invoked in a single request. The default value is `0` (or unspecified), which will set the limit to `10000`. When specified, the limit value can be between `1` and `10000`. This field will produce a limit error if the operation falls out of bounds.
  late final pulumi.Output<int?> resolverCountLimit;
  /// Schema definition, in GraphQL schema language format. This provider cannot perform drift detection of this configuration.
  late final pulumi.Output<String?> schema;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Map of URIs associated with the API E.g., `uris["GRAPHQL"] = https://ID.appsync-api.REGION.amazonaws.com/graphql`
  late final pulumi.Output<Map<String, String>> uris;
  /// Amazon Cognito User Pool configuration. See `userPoolConfig` Block for details.
  late final pulumi.Output<GraphQLApiUserPoolConfig?> userPoolConfig;
  /// Sets the value of the GraphQL API to public (`GLOBAL`) or private (`PRIVATE`). If no value is provided, the visibility will be set to `GLOBAL` by default. This value cannot be changed once the API has been created.
  late final pulumi.Output<String?> visibility;
  /// Whether tracing with X-ray is enabled. Defaults to false.
  late final pulumi.Output<bool?> xrayEnabled;

  /// Creates a new [GraphQLApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GraphQLApi]. {@macro pulumi_appsync_graph_qlapi_graph_qlapi_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GraphQLApi(
    String name, {
    GraphQLApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/graphQLApi:GraphQLApi',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    additionalAuthenticationProviders = registerOutput<List<GraphQLApiAdditionalAuthenticationProvider>?>('additionalAuthenticationProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GraphQLApiAdditionalAuthenticationProvider>(guardedValue, (value) => GraphQLApiAdditionalAuthenticationProvider.fromMap((value as Map).cast<String, dynamic>())); });
    apiType = registerOutput<String?>('apiType');
    arn = registerOutput<String>('arn');
    authenticationType = registerOutput<String>('authenticationType');
    enhancedMetricsConfig = registerOutput<GraphQLApiEnhancedMetricsConfig?>('enhancedMetricsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiEnhancedMetricsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    introspectionConfig = registerOutput<String?>('introspectionConfig');
    lambdaAuthorizerConfig = registerOutput<GraphQLApiLambdaAuthorizerConfig?>('lambdaAuthorizerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiLambdaAuthorizerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logConfig = registerOutput<GraphQLApiLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mergedApiExecutionRoleArn = registerOutput<String?>('mergedApiExecutionRoleArn');
    this.name = registerOutput<String>('name');
    openidConnectConfig = registerOutput<GraphQLApiOpenidConnectConfig?>('openidConnectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiOpenidConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    queryDepthLimit = registerOutput<int?>('queryDepthLimit');
    region = registerOutput<String>('region');
    resolverCountLimit = registerOutput<int?>('resolverCountLimit');
    schema = registerOutput<String?>('schema');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uris = registerOutput<Map<String, String>>('uris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userPoolConfig = registerOutput<GraphQLApiUserPoolConfig?>('userPoolConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiUserPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    visibility = registerOutput<String?>('visibility');
    xrayEnabled = registerOutput<bool?>('xrayEnabled');
  }

  /// Gets an existing [GraphQLApi] resource's state with the given [name] and [id].
  static GraphQLApi get(
    String name,
    pulumi.Input<String> id, {
    GraphQLApiState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GraphQLApi._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GraphQLApi._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/graphQLApi:GraphQLApi',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalAuthenticationProviders = registerOutput<List<GraphQLApiAdditionalAuthenticationProvider>?>('additionalAuthenticationProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GraphQLApiAdditionalAuthenticationProvider>(guardedValue, (value) => GraphQLApiAdditionalAuthenticationProvider.fromMap((value as Map).cast<String, dynamic>())); });
    apiType = registerOutput<String?>('apiType');
    arn = registerOutput<String>('arn');
    authenticationType = registerOutput<String>('authenticationType');
    enhancedMetricsConfig = registerOutput<GraphQLApiEnhancedMetricsConfig?>('enhancedMetricsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiEnhancedMetricsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    introspectionConfig = registerOutput<String?>('introspectionConfig');
    lambdaAuthorizerConfig = registerOutput<GraphQLApiLambdaAuthorizerConfig?>('lambdaAuthorizerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiLambdaAuthorizerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logConfig = registerOutput<GraphQLApiLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mergedApiExecutionRoleArn = registerOutput<String?>('mergedApiExecutionRoleArn');
    this.name = registerOutput<String>('name');
    openidConnectConfig = registerOutput<GraphQLApiOpenidConnectConfig?>('openidConnectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiOpenidConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    queryDepthLimit = registerOutput<int?>('queryDepthLimit');
    region = registerOutput<String>('region');
    resolverCountLimit = registerOutput<int?>('resolverCountLimit');
    schema = registerOutput<String?>('schema');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uris = registerOutput<Map<String, String>>('uris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userPoolConfig = registerOutput<GraphQLApiUserPoolConfig?>('userPoolConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiUserPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    visibility = registerOutput<String?>('visibility');
    xrayEnabled = registerOutput<bool?>('xrayEnabled');
  }

  /// Creates a typed reference to an existing [GraphQLApi] resource.
  GraphQLApi.reference(String urn)
    : super(
        'aws:appsync/graphQLApi:GraphQLApi',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    additionalAuthenticationProviders = registerOutput<List<GraphQLApiAdditionalAuthenticationProvider>?>('additionalAuthenticationProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GraphQLApiAdditionalAuthenticationProvider>(guardedValue, (value) => GraphQLApiAdditionalAuthenticationProvider.fromMap((value as Map).cast<String, dynamic>())); });
    apiType = registerOutput<String?>('apiType');
    arn = registerOutput<String>('arn');
    authenticationType = registerOutput<String>('authenticationType');
    enhancedMetricsConfig = registerOutput<GraphQLApiEnhancedMetricsConfig?>('enhancedMetricsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiEnhancedMetricsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    introspectionConfig = registerOutput<String?>('introspectionConfig');
    lambdaAuthorizerConfig = registerOutput<GraphQLApiLambdaAuthorizerConfig?>('lambdaAuthorizerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiLambdaAuthorizerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logConfig = registerOutput<GraphQLApiLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mergedApiExecutionRoleArn = registerOutput<String?>('mergedApiExecutionRoleArn');
    this.name = registerOutput<String>('name');
    openidConnectConfig = registerOutput<GraphQLApiOpenidConnectConfig?>('openidConnectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiOpenidConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    queryDepthLimit = registerOutput<int?>('queryDepthLimit');
    region = registerOutput<String>('region');
    resolverCountLimit = registerOutput<int?>('resolverCountLimit');
    schema = registerOutput<String?>('schema');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uris = registerOutput<Map<String, String>>('uris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userPoolConfig = registerOutput<GraphQLApiUserPoolConfig?>('userPoolConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiUserPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    visibility = registerOutput<String?>('visibility');
    xrayEnabled = registerOutput<bool?>('xrayEnabled');
  }
}
