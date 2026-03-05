import 'package:pulumi/pulumi.dart' as pulumi;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
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
///     authenticationType: "AMAZON_COGNITO_USER_POOLS",
///     name: "example",
///     userPoolConfig: {
///         awsRegion: current.region,
///         defaultAction: "DENY",
///         userPoolId: exampleAwsCognitoUserPool.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     authentication_type="AMAZON_COGNITO_USER_POOLS",
///     name="example",
///     user_pool_config={
///         "aws_region": current["region"],
///         "default_action": "DENY",
///         "user_pool_id": example_aws_cognito_user_pool["id"],
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
///     var example = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         AuthenticationType = "AMAZON_COGNITO_USER_POOLS",
///         Name = "example",
///         UserPoolConfig = new Aws.AppSync.Inputs.GraphQLApiUserPoolConfigArgs
///         {
///             AwsRegion = current.Region,
///             DefaultAction = "DENY",
///             UserPoolId = exampleAwsCognitoUserPool.Id,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AuthenticationType: pulumi.String("AMAZON_COGNITO_USER_POOLS"),
/// 			Name:               pulumi.String("example"),
/// 			UserPoolConfig: &appsync.GraphQLApiUserPoolConfigArgs{
/// 				AwsRegion:     pulumi.Any(current.Region),
/// 				DefaultAction: pulumi.String("DENY"),
/// 				UserPoolId:    pulumi.Any(exampleAwsCognitoUserPool.Id),
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
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.appsync.inputs.GraphQLApiUserPoolConfigArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .authenticationType("AMAZON_COGNITO_USER_POOLS")
///             .name("example")
///             .userPoolConfig(GraphQLApiUserPoolConfigArgs.builder()
///                 .awsRegion(current.region())
///                 .defaultAction("DENY")
///                 .userPoolId(exampleAwsCognitoUserPool.id())
///                 .build())
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
///       authenticationType: AMAZON_COGNITO_USER_POOLS
///       name: example
///       userPoolConfig:
///         awsRegion: ${current.region}
///         defaultAction: DENY
///         userPoolId: ${exampleAwsCognitoUserPool.id}
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
///     authenticationType: "OPENID_CONNECT",
///     name: "example",
///     openidConnectConfig: {
///         issuer: "https://example.com",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     authentication_type="OPENID_CONNECT",
///     name="example",
///     openid_connect_config={
///         "issuer": "https://example.com",
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
///     var example = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         AuthenticationType = "OPENID_CONNECT",
///         Name = "example",
///         OpenidConnectConfig = new Aws.AppSync.Inputs.GraphQLApiOpenidConnectConfigArgs
///         {
///             Issuer = "https://example.com",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AuthenticationType: pulumi.String("OPENID_CONNECT"),
/// 			Name:               pulumi.String("example"),
/// 			OpenidConnectConfig: &appsync.GraphQLApiOpenidConnectConfigArgs{
/// 				Issuer: pulumi.String("https://example.com"),
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
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.appsync.inputs.GraphQLApiOpenidConnectConfigArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .authenticationType("OPENID_CONNECT")
///             .name("example")
///             .openidConnectConfig(GraphQLApiOpenidConnectConfigArgs.builder()
///                 .issuer("https://example.com")
///                 .build())
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
///       authenticationType: OPENID_CONNECT
///       name: example
///       openidConnectConfig:
///         issuer: https://example.com
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
///     authenticationType: "AWS_LAMBDA",
///     name: "example",
///     lambdaAuthorizerConfig: {
///         authorizerUri: "arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer",
///     },
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
///     authentication_type="AWS_LAMBDA",
///     name="example",
///     lambda_authorizer_config={
///         "authorizer_uri": "arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer",
///     })
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
///         AuthenticationType = "AWS_LAMBDA",
///         Name = "example",
///         LambdaAuthorizerConfig = new Aws.AppSync.Inputs.GraphQLApiLambdaAuthorizerConfigArgs
///         {
///             AuthorizerUri = "arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer",
///         },
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
/// 			AuthenticationType: pulumi.String("AWS_LAMBDA"),
/// 			Name:               pulumi.String("example"),
/// 			LambdaAuthorizerConfig: &appsync.GraphQLApiLambdaAuthorizerConfigArgs{
/// 				AuthorizerUri: pulumi.String("arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer"),
/// 			},
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .authenticationType("AWS_LAMBDA")
///             .name("example")
///             .lambdaAuthorizerConfig(GraphQLApiLambdaAuthorizerConfigArgs.builder()
///                 .authorizerUri("arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer")
///                 .build())
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
///       authenticationType: AWS_LAMBDA
///       name: example
///       lambdaAuthorizerConfig:
///         authorizerUri: arn:aws:lambda:us-east-1:123456789012:function:custom_lambda_authorizer
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
///     authenticationType: "API_KEY",
///     name: "example",
///     additionalAuthenticationProviders: [{
///         authenticationType: "AWS_IAM",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     authentication_type="API_KEY",
///     name="example",
///     additional_authentication_providers=[{
///         "authentication_type": "AWS_IAM",
///     }])
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
///         AdditionalAuthenticationProviders = new[]
///         {
///             new Aws.AppSync.Inputs.GraphQLApiAdditionalAuthenticationProviderArgs
///             {
///                 AuthenticationType = "AWS_IAM",
///             },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AuthenticationType: pulumi.String("API_KEY"),
/// 			Name:               pulumi.String("example"),
/// 			AdditionalAuthenticationProviders: appsync.GraphQLApiAdditionalAuthenticationProviderArray{
/// 				&appsync.GraphQLApiAdditionalAuthenticationProviderArgs{
/// 					AuthenticationType: pulumi.String("AWS_IAM"),
/// 				},
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
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.appsync.inputs.GraphQLApiAdditionalAuthenticationProviderArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .authenticationType("API_KEY")
///             .name("example")
///             .additionalAuthenticationProviders(GraphQLApiAdditionalAuthenticationProviderArgs.builder()
///                 .authenticationType("AWS_IAM")
///                 .build())
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
///       additionalAuthenticationProviders:
///         - authenticationType: AWS_IAM
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
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
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["appsync.amazonaws.com"],
///         }],
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
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["appsync.amazonaws.com"],
///     }],
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
///                 Effect = "Allow",
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
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"appsync.amazonaws.com",
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.appsync.inputs.GraphQLApiLogConfigArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("appsync.amazonaws.com")
///                     .build())
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
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - appsync.amazonaws.com
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
///     name: "managed-rule-example",
///     description: "Example of a managed rule.",
///     scope: "REGIONAL",
///     defaultAction: {
///         allow: {},
///     },
///     rules: [{
///         name: "rule-1",
///         priority: 1,
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
///     }],
///     visibilityConfig: {
///         cloudwatchMetricsEnabled: false,
///         metricName: "friendly-metric-name",
///         sampledRequestsEnabled: false,
///     },
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
///     name="managed-rule-example",
///     description="Example of a managed rule.",
///     scope="REGIONAL",
///     default_action={
///         "allow": {},
///     },
///     rules=[{
///         "name": "rule-1",
///         "priority": 1,
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
///     }],
///     visibility_config={
///         "cloudwatch_metrics_enabled": False,
///         "metric_name": "friendly-metric-name",
///         "sampled_requests_enabled": False,
///     })
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
///         Name = "managed-rule-example",
///         Description = "Example of a managed rule.",
///         Scope = "REGIONAL",
///         DefaultAction = new Aws.WafV2.Inputs.WebAclDefaultActionArgs
///         {
///             Allow = null,
///         },
///         Rules = new[]
///         {
///             new Aws.WafV2.Inputs.WebAclRuleArgs
///             {
///                 Name = "rule-1",
///                 Priority = 1,
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
///             },
///         },
///         VisibilityConfig = new Aws.WafV2.Inputs.WebAclVisibilityConfigArgs
///         {
///             CloudwatchMetricsEnabled = false,
///             MetricName = "friendly-metric-name",
///             SampledRequestsEnabled = false,
///         },
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
/// 			Name:        pulumi.String("managed-rule-example"),
/// 			Description: pulumi.String("Example of a managed rule."),
/// 			Scope:       pulumi.String("REGIONAL"),
/// 			DefaultAction: &wafv2.WebAclDefaultActionArgs{
/// 				Allow: &wafv2.WebAclDefaultActionAllowArgs{},
/// 			},
/// 			Rules: wafv2.WebAclRuleArray{
/// 				&wafv2.WebAclRuleArgs{
/// 					Name:     pulumi.String("rule-1"),
/// 					Priority: pulumi.Int(1),
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
/// 				},
/// 			},
/// 			VisibilityConfig: &wafv2.WebAclVisibilityConfigArgs{
/// 				CloudwatchMetricsEnabled: pulumi.Bool(false),
/// 				MetricName:               pulumi.String("friendly-metric-name"),
/// 				SampledRequestsEnabled:   pulumi.Bool(false),
/// 			},
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
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleOverrideActionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleStatementManagedRuleGroupStatementArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclRuleVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclVisibilityConfigArgs;
/// import com.pulumi.aws.wafv2.WebAclAssociation;
/// import com.pulumi.aws.wafv2.WebAclAssociationArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .authenticationType("API_KEY")
///             .name("example")
///             .build());
///
///         var exampleWebAcl = new WebAcl("exampleWebAcl", WebAclArgs.builder()
///             .name("managed-rule-example")
///             .description("Example of a managed rule.")
///             .scope("REGIONAL")
///             .defaultAction(WebAclDefaultActionArgs.builder()
///                 .allow(WebAclDefaultActionAllowArgs.builder()
///                     .build())
///                 .build())
///             .rules(WebAclRuleArgs.builder()
///                 .name("rule-1")
///                 .priority(1)
///                 .overrideAction(WebAclRuleOverrideActionArgs.builder()
///                     .block(List.of(Map.ofEntries(
///                     )))
///                     .build())
///                 .statement(Map.of("managedRuleGroupStatement", WebAclRuleStatementManagedRuleGroupStatementArgs.builder()
///                     .name("AWSManagedRulesCommonRuleSet")
///                     .vendorName("AWS")
///                     .build()))
///                 .visibilityConfig(WebAclRuleVisibilityConfigArgs.builder()
///                     .cloudwatchMetricsEnabled(false)
///                     .metricName("friendly-rule-metric-name")
///                     .sampledRequestsEnabled(false)
///                     .build())
///                 .build())
///             .visibilityConfig(WebAclVisibilityConfigArgs.builder()
///                 .cloudwatchMetricsEnabled(false)
///                 .metricName("friendly-metric-name")
///                 .sampledRequestsEnabled(false)
///                 .build())
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
///       name: managed-rule-example
///       description: Example of a managed rule.
///       scope: REGIONAL
///       defaultAction:
///         allow: {}
///       rules:
///         - name: rule-1
///           priority: 1
///           overrideAction:
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
///       visibilityConfig:
///         cloudwatchMetricsEnabled: false
///         metricName: friendly-metric-name
///         sampledRequestsEnabled: false
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
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
  /// One or more additional authentication providers for the GraphQL API. See `additional_authentication_provider` Block for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> additionalAuthenticationProviders;
  /// API type. Valid values are `GRAPHQL` or `MERGED`. A `MERGED` type requires `merged_api_execution_role_arn` to be set.
  late final pulumi.Output<String?> apiType;
  /// ARN
  late final pulumi.Output<String> arn;
  /// Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  late final pulumi.Output<String> authenticationType;
  /// Enables and controls the enhanced metrics feature. See `enhanced_metrics_config` Block for details.
  late final pulumi.Output<GraphQLApiEnhancedMetricsConfig?> enhancedMetricsConfig;
  /// Sets the value of the GraphQL API to enable (`ENABLED`) or disable (`DISABLED`) introspection. If no value is provided, the introspection configuration will be set to ENABLED by default. This field will produce an error if the operation attempts to use the introspection feature while this field is disabled. For more information about introspection, see [GraphQL introspection](https://graphql.org/learn/introspection/).
  late final pulumi.Output<String?> introspectionConfig;
  /// Nested argument containing Lambda authorizer configuration. See `lambda_authorizer_config` Block for details.
  late final pulumi.Output<GraphQLApiLambdaAuthorizerConfig?> lambdaAuthorizerConfig;
  /// Nested argument containing logging configuration. See `log_config` Block for details.
  late final pulumi.Output<GraphQLApiLogConfig?> logConfig;
  /// ARN of the execution role when `api_type` is set to `MERGED`.
  late final pulumi.Output<String?> mergedApiExecutionRoleArn;
  /// User-supplied name for the GraphQL API.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Nested argument containing OpenID Connect configuration. See `openid_connect_config` Block for details.
  late final pulumi.Output<GraphQLApiOpenidConnectConfig?> openidConnectConfig;
  /// The maximum depth a query can have in a single request. Depth refers to the amount of nested levels allowed in the body of query. The default value is `0` (or unspecified), which indicates there's no depth limit. If you set a limit, it can be between `1` and `75` nested levels. This field will produce a limit error if the operation falls out of bounds.
  ///
  /// Note that fields can still be set to nullable or non-nullable. If a non-nullable field produces an error, the error will be thrown upwards to the first nullable field available.
  late final pulumi.Output<int?> queryDepthLimit;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The maximum number of resolvers that can be invoked in a single request. The default value is `0` (or unspecified), which will set the limit to `10000`. When specified, the limit value can be between `1` and `10000`. This field will produce a limit error if the operation falls out of bounds.
  late final pulumi.Output<int?> resolverCountLimit;
  /// Schema definition, in GraphQL schema language format. This provider cannot perform drift detection of this configuration.
  late final pulumi.Output<String?> schema;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Map of URIs associated with the API E.g., `uris["GRAPHQL"] = https://ID.appsync-api.REGION.amazonaws.com/graphql`
  late final pulumi.Output<Map<String, String>> uris;
  /// Amazon Cognito User Pool configuration. See `user_pool_config` Block for details.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalAuthenticationProviders = registerOutput<List<Map<String, dynamic>>?>('additionalAuthenticationProviders');
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
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uris = registerOutput<Map<String, String>>('uris');
    userPoolConfig = registerOutput<GraphQLApiUserPoolConfig?>('userPoolConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiUserPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    visibility = registerOutput<String?>('visibility');
    xrayEnabled = registerOutput<bool?>('xrayEnabled');
  }

  /// Gets an existing [GraphQLApi] resource's state with the given [name] and [id].
  static GraphQLApi get(
    String name,
    pulumi.Input<String> id, {
    GraphQLApiState? state,
  }) {
    return GraphQLApi._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    additionalAuthenticationProviders = registerOutput<List<Map<String, dynamic>>?>('additionalAuthenticationProviders');
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
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uris = registerOutput<Map<String, String>>('uris');
    userPoolConfig = registerOutput<GraphQLApiUserPoolConfig?>('userPoolConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphQLApiUserPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    visibility = registerOutput<String?>('visibility');
    xrayEnabled = registerOutput<bool?>('xrayEnabled');
  }
}
