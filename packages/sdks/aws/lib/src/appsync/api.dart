import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_args.dart';
import 'api_event_config.dart';
import 'api_state.dart';

/// Manages an [AWS AppSync Event API](https://docs.aws.amazon.com/appsync/latest/eventapi/event-api-concepts.html#API). Event APIs enable real-time subscriptions and event-driven communication in AppSync applications.
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
/// const example = new aws.appsync.Api("example", {
///     eventConfig: {
///         authProviders: [{
///             authType: "API_KEY",
///         }],
///         connectionAuthModes: [{
///             authType: "API_KEY",
///         }],
///         defaultPublishAuthModes: [{
///             authType: "API_KEY",
///         }],
///         defaultSubscribeAuthModes: [{
///             authType: "API_KEY",
///         }],
///     },
///     name: "example-event-api",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.Api("example",
///     event_config={
///         "auth_providers": [{
///             "auth_type": "API_KEY",
///         }],
///         "connection_auth_modes": [{
///             "auth_type": "API_KEY",
///         }],
///         "default_publish_auth_modes": [{
///             "auth_type": "API_KEY",
///         }],
///         "default_subscribe_auth_modes": [{
///             "auth_type": "API_KEY",
///         }],
///     },
///     name="example-event-api")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.Api("example", new()
///     {
///         EventConfig = new Aws.AppSync.Inputs.ApiEventConfigArgs
///         {
///             AuthProviders = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigAuthProviderArgs
///                 {
///                     AuthType = "API_KEY",
///                 },
///             },
///             ConnectionAuthModes = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigConnectionAuthModeArgs
///                 {
///                     AuthType = "API_KEY",
///                 },
///             },
///             DefaultPublishAuthModes = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigDefaultPublishAuthModeArgs
///                 {
///                     AuthType = "API_KEY",
///                 },
///             },
///             DefaultSubscribeAuthModes = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigDefaultSubscribeAuthModeArgs
///                 {
///                     AuthType = "API_KEY",
///                 },
///             },
///         },
///         Name = "example-event-api",
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
/// 		_, err := appsync.NewApi(ctx, "example", &appsync.ApiArgs{
/// 			EventConfig: &appsync.ApiEventConfigArgs{
/// 				AuthProviders: appsync.ApiEventConfigAuthProviderArray{
/// 					&appsync.ApiEventConfigAuthProviderArgs{
/// 						AuthType: pulumi.String("API_KEY"),
/// 					},
/// 				},
/// 				ConnectionAuthModes: appsync.ApiEventConfigConnectionAuthModeArray{
/// 					&appsync.ApiEventConfigConnectionAuthModeArgs{
/// 						AuthType: pulumi.String("API_KEY"),
/// 					},
/// 				},
/// 				DefaultPublishAuthModes: appsync.ApiEventConfigDefaultPublishAuthModeArray{
/// 					&appsync.ApiEventConfigDefaultPublishAuthModeArgs{
/// 						AuthType: pulumi.String("API_KEY"),
/// 					},
/// 				},
/// 				DefaultSubscribeAuthModes: appsync.ApiEventConfigDefaultSubscribeAuthModeArray{
/// 					&appsync.ApiEventConfigDefaultSubscribeAuthModeArgs{
/// 						AuthType: pulumi.String("API_KEY"),
/// 					},
/// 				},
/// 			},
/// 			Name: pulumi.String("example-event-api"),
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
/// resource "aws_appsync_api" "example" {
///   event_config = {
///     auth_providers = [{
///       "authType" = "API_KEY"
///     }]
///     connection_auth_modes = [{
///       "authType" = "API_KEY"
///     }]
///     default_publish_auth_modes = [{
///       "authType" = "API_KEY"
///     }]
///     default_subscribe_auth_modes = [{
///       "authType" = "API_KEY"
///     }]
///   }
///   name = "example-event-api"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.Api;
/// import com.pulumi.aws.appsync.ApiArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigAuthProviderArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigConnectionAuthModeArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigDefaultPublishAuthModeArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigDefaultSubscribeAuthModeArgs;
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
///         var example = new Api("example", ApiArgs.builder()
///             .eventConfig(ApiEventConfigArgs.builder()
///                 .authProviders(ApiEventConfigAuthProviderArgs.builder()
///                     .authType("API_KEY")
///                     .build())
///                 .connectionAuthModes(ApiEventConfigConnectionAuthModeArgs.builder()
///                     .authType("API_KEY")
///                     .build())
///                 .defaultPublishAuthModes(ApiEventConfigDefaultPublishAuthModeArgs.builder()
///                     .authType("API_KEY")
///                     .build())
///                 .defaultSubscribeAuthModes(ApiEventConfigDefaultSubscribeAuthModeArgs.builder()
///                     .authType("API_KEY")
///                     .build())
///                 .build())
///             .name("example-event-api")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:Api
///     properties:
///       eventConfig:
///         authProviders:
///           - authType: API_KEY
///         connectionAuthModes:
///           - authType: API_KEY
///         defaultPublishAuthModes:
///           - authType: API_KEY
///         defaultSubscribeAuthModes:
///           - authType: API_KEY
///       name: example-event-api
/// ```
///
///
/// ### With Cognito Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {name: "example-user-pool"});
/// const current = aws.getRegion({});
/// const exampleApi = new aws.appsync.Api("example", {
///     eventConfig: {
///         authProviders: [{
///             cognitoConfig: {
///                 userPoolId: example.id,
///                 awsRegion: current.then(current => current.region),
///             },
///             authType: "AMAZON_COGNITO_USER_POOLS",
///         }],
///         connectionAuthModes: [{
///             authType: "AMAZON_COGNITO_USER_POOLS",
///         }],
///         defaultPublishAuthModes: [{
///             authType: "AMAZON_COGNITO_USER_POOLS",
///         }],
///         defaultSubscribeAuthModes: [{
///             authType: "AMAZON_COGNITO_USER_POOLS",
///         }],
///     },
///     name: "example-event-api",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example", name="example-user-pool")
/// current = aws.get_region()
/// example_api = aws.appsync.Api("example",
///     event_config={
///         "auth_providers": [{
///             "cognito_config": {
///                 "user_pool_id": example.id,
///                 "aws_region": current.region,
///             },
///             "auth_type": "AMAZON_COGNITO_USER_POOLS",
///         }],
///         "connection_auth_modes": [{
///             "auth_type": "AMAZON_COGNITO_USER_POOLS",
///         }],
///         "default_publish_auth_modes": [{
///             "auth_type": "AMAZON_COGNITO_USER_POOLS",
///         }],
///         "default_subscribe_auth_modes": [{
///             "auth_type": "AMAZON_COGNITO_USER_POOLS",
///         }],
///     },
///     name="example-event-api")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "example-user-pool",
///     });
///
///     var current = Aws.GetRegion.Invoke();
///
///     var exampleApi = new Aws.AppSync.Api("example", new()
///     {
///         EventConfig = new Aws.AppSync.Inputs.ApiEventConfigArgs
///         {
///             AuthProviders = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigAuthProviderArgs
///                 {
///                     CognitoConfig = new Aws.AppSync.Inputs.ApiEventConfigAuthProviderCognitoConfigArgs
///                     {
///                         UserPoolId = example.Id,
///                         AwsRegion = current.Apply(getRegionResult => getRegionResult.Region),
///                     },
///                     AuthType = "AMAZON_COGNITO_USER_POOLS",
///                 },
///             },
///             ConnectionAuthModes = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigConnectionAuthModeArgs
///                 {
///                     AuthType = "AMAZON_COGNITO_USER_POOLS",
///                 },
///             },
///             DefaultPublishAuthModes = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigDefaultPublishAuthModeArgs
///                 {
///                     AuthType = "AMAZON_COGNITO_USER_POOLS",
///                 },
///             },
///             DefaultSubscribeAuthModes = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigDefaultSubscribeAuthModeArgs
///                 {
///                     AuthType = "AMAZON_COGNITO_USER_POOLS",
///                 },
///             },
///         },
///         Name = "example-event-api",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("example-user-pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appsync.NewApi(ctx, "example", &appsync.ApiArgs{
/// 			EventConfig: &appsync.ApiEventConfigArgs{
/// 				AuthProviders: appsync.ApiEventConfigAuthProviderArray{
/// 					&appsync.ApiEventConfigAuthProviderArgs{
/// 						CognitoConfig: &appsync.ApiEventConfigAuthProviderCognitoConfigArgs{
/// 							UserPoolId: example.ID().ToIDOutput().ToStringOutput(),
/// 							AwsRegion:  pulumi.String(current.Region),
/// 						},
/// 						AuthType: pulumi.String("AMAZON_COGNITO_USER_POOLS"),
/// 					},
/// 				},
/// 				ConnectionAuthModes: appsync.ApiEventConfigConnectionAuthModeArray{
/// 					&appsync.ApiEventConfigConnectionAuthModeArgs{
/// 						AuthType: pulumi.String("AMAZON_COGNITO_USER_POOLS"),
/// 					},
/// 				},
/// 				DefaultPublishAuthModes: appsync.ApiEventConfigDefaultPublishAuthModeArray{
/// 					&appsync.ApiEventConfigDefaultPublishAuthModeArgs{
/// 						AuthType: pulumi.String("AMAZON_COGNITO_USER_POOLS"),
/// 					},
/// 				},
/// 				DefaultSubscribeAuthModes: appsync.ApiEventConfigDefaultSubscribeAuthModeArray{
/// 					&appsync.ApiEventConfigDefaultSubscribeAuthModeArgs{
/// 						AuthType: pulumi.String("AMAZON_COGNITO_USER_POOLS"),
/// 					},
/// 				},
/// 			},
/// 			Name: pulumi.String("example-event-api"),
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
/// data "aws_getregion" "current" {
/// }
///
/// resource "aws_cognito_userpool" "example" {
///   name = "example-user-pool"
/// }
/// resource "aws_appsync_api" "example" {
///   event_config = {
///     auth_providers = [{
///       "cognitoConfig" = {
///         "userPoolId" = aws_cognito_userpool.example.id
///         "awsRegion"  = data.aws_getregion.current.region
///       }
///       "authType" = "AMAZON_COGNITO_USER_POOLS"
///     }]
///     connection_auth_modes = [{
///       "authType" = "AMAZON_COGNITO_USER_POOLS"
///     }]
///     default_publish_auth_modes = [{
///       "authType" = "AMAZON_COGNITO_USER_POOLS"
///     }]
///     default_subscribe_auth_modes = [{
///       "authType" = "AMAZON_COGNITO_USER_POOLS"
///     }]
///   }
///   name = "example-event-api"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.appsync.Api;
/// import com.pulumi.aws.appsync.ApiArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigAuthProviderArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigAuthProviderCognitoConfigArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigConnectionAuthModeArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigDefaultPublishAuthModeArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigDefaultSubscribeAuthModeArgs;
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .name("example-user-pool")
///             .build());
///
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var exampleApi = new Api("exampleApi", ApiArgs.builder()
///             .eventConfig(ApiEventConfigArgs.builder()
///                 .authProviders(ApiEventConfigAuthProviderArgs.builder()
///                     .cognitoConfig(ApiEventConfigAuthProviderCognitoConfigArgs.builder()
///                         .userPoolId(example.id())
///                         .awsRegion(current.region())
///                         .build())
///                     .authType("AMAZON_COGNITO_USER_POOLS")
///                     .build())
///                 .connectionAuthModes(ApiEventConfigConnectionAuthModeArgs.builder()
///                     .authType("AMAZON_COGNITO_USER_POOLS")
///                     .build())
///                 .defaultPublishAuthModes(ApiEventConfigDefaultPublishAuthModeArgs.builder()
///                     .authType("AMAZON_COGNITO_USER_POOLS")
///                     .build())
///                 .defaultSubscribeAuthModes(ApiEventConfigDefaultSubscribeAuthModeArgs.builder()
///                     .authType("AMAZON_COGNITO_USER_POOLS")
///                     .build())
///                 .build())
///             .name("example-event-api")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cognito:UserPool
///     properties:
///       name: example-user-pool
///   exampleApi:
///     type: aws:appsync:Api
///     name: example
///     properties:
///       eventConfig:
///         authProviders:
///           - cognitoConfig:
///               userPoolId: ${example.id}
///               awsRegion: ${current.region}
///             authType: AMAZON_COGNITO_USER_POOLS
///         connectionAuthModes:
///           - authType: AMAZON_COGNITO_USER_POOLS
///         defaultPublishAuthModes:
///           - authType: AMAZON_COGNITO_USER_POOLS
///         defaultSubscribeAuthModes:
///           - authType: AMAZON_COGNITO_USER_POOLS
///       name: example-event-api
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ### With Lambda Authorizer
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.Api("example", {
///     eventConfig: {
///         authProviders: [{
///             lambdaAuthorizerConfig: {
///                 authorizerUri: exampleAwsLambdaFunction.arn,
///                 authorizerResultTtlInSeconds: 300,
///             },
///             authType: "AWS_LAMBDA",
///         }],
///         connectionAuthModes: [{
///             authType: "AWS_LAMBDA",
///         }],
///         defaultPublishAuthModes: [{
///             authType: "AWS_LAMBDA",
///         }],
///         defaultSubscribeAuthModes: [{
///             authType: "AWS_LAMBDA",
///         }],
///     },
///     name: "example-event-api",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.Api("example",
///     event_config={
///         "auth_providers": [{
///             "lambda_authorizer_config": {
///                 "authorizer_uri": example_aws_lambda_function["arn"],
///                 "authorizer_result_ttl_in_seconds": 300,
///             },
///             "auth_type": "AWS_LAMBDA",
///         }],
///         "connection_auth_modes": [{
///             "auth_type": "AWS_LAMBDA",
///         }],
///         "default_publish_auth_modes": [{
///             "auth_type": "AWS_LAMBDA",
///         }],
///         "default_subscribe_auth_modes": [{
///             "auth_type": "AWS_LAMBDA",
///         }],
///     },
///     name="example-event-api")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.Api("example", new()
///     {
///         EventConfig = new Aws.AppSync.Inputs.ApiEventConfigArgs
///         {
///             AuthProviders = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigAuthProviderArgs
///                 {
///                     LambdaAuthorizerConfig = new Aws.AppSync.Inputs.ApiEventConfigAuthProviderLambdaAuthorizerConfigArgs
///                     {
///                         AuthorizerUri = exampleAwsLambdaFunction.Arn,
///                         AuthorizerResultTtlInSeconds = 300,
///                     },
///                     AuthType = "AWS_LAMBDA",
///                 },
///             },
///             ConnectionAuthModes = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigConnectionAuthModeArgs
///                 {
///                     AuthType = "AWS_LAMBDA",
///                 },
///             },
///             DefaultPublishAuthModes = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigDefaultPublishAuthModeArgs
///                 {
///                     AuthType = "AWS_LAMBDA",
///                 },
///             },
///             DefaultSubscribeAuthModes = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigDefaultSubscribeAuthModeArgs
///                 {
///                     AuthType = "AWS_LAMBDA",
///                 },
///             },
///         },
///         Name = "example-event-api",
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
/// 		_, err := appsync.NewApi(ctx, "example", &appsync.ApiArgs{
/// 			EventConfig: &appsync.ApiEventConfigArgs{
/// 				AuthProviders: appsync.ApiEventConfigAuthProviderArray{
/// 					&appsync.ApiEventConfigAuthProviderArgs{
/// 						LambdaAuthorizerConfig: &appsync.ApiEventConfigAuthProviderLambdaAuthorizerConfigArgs{
/// 							AuthorizerUri:                pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 							AuthorizerResultTtlInSeconds: pulumi.Int(300),
/// 						},
/// 						AuthType: pulumi.String("AWS_LAMBDA"),
/// 					},
/// 				},
/// 				ConnectionAuthModes: appsync.ApiEventConfigConnectionAuthModeArray{
/// 					&appsync.ApiEventConfigConnectionAuthModeArgs{
/// 						AuthType: pulumi.String("AWS_LAMBDA"),
/// 					},
/// 				},
/// 				DefaultPublishAuthModes: appsync.ApiEventConfigDefaultPublishAuthModeArray{
/// 					&appsync.ApiEventConfigDefaultPublishAuthModeArgs{
/// 						AuthType: pulumi.String("AWS_LAMBDA"),
/// 					},
/// 				},
/// 				DefaultSubscribeAuthModes: appsync.ApiEventConfigDefaultSubscribeAuthModeArray{
/// 					&appsync.ApiEventConfigDefaultSubscribeAuthModeArgs{
/// 						AuthType: pulumi.String("AWS_LAMBDA"),
/// 					},
/// 				},
/// 			},
/// 			Name: pulumi.String("example-event-api"),
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
/// resource "aws_appsync_api" "example" {
///   event_config = {
///     auth_providers = [{
///       "lambdaAuthorizerConfig" = {
///         "authorizerUri"                = exampleAwsLambdaFunction.arn
///         "authorizerResultTtlInSeconds" = 300
///       }
///       "authType" = "AWS_LAMBDA"
///     }]
///     connection_auth_modes = [{
///       "authType" = "AWS_LAMBDA"
///     }]
///     default_publish_auth_modes = [{
///       "authType" = "AWS_LAMBDA"
///     }]
///     default_subscribe_auth_modes = [{
///       "authType" = "AWS_LAMBDA"
///     }]
///   }
///   name = "example-event-api"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.Api;
/// import com.pulumi.aws.appsync.ApiArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigAuthProviderArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigAuthProviderLambdaAuthorizerConfigArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigConnectionAuthModeArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigDefaultPublishAuthModeArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigDefaultSubscribeAuthModeArgs;
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
///         var example = new Api("example", ApiArgs.builder()
///             .eventConfig(ApiEventConfigArgs.builder()
///                 .authProviders(ApiEventConfigAuthProviderArgs.builder()
///                     .lambdaAuthorizerConfig(ApiEventConfigAuthProviderLambdaAuthorizerConfigArgs.builder()
///                         .authorizerUri(exampleAwsLambdaFunction.arn())
///                         .authorizerResultTtlInSeconds(300)
///                         .build())
///                     .authType("AWS_LAMBDA")
///                     .build())
///                 .connectionAuthModes(ApiEventConfigConnectionAuthModeArgs.builder()
///                     .authType("AWS_LAMBDA")
///                     .build())
///                 .defaultPublishAuthModes(ApiEventConfigDefaultPublishAuthModeArgs.builder()
///                     .authType("AWS_LAMBDA")
///                     .build())
///                 .defaultSubscribeAuthModes(ApiEventConfigDefaultSubscribeAuthModeArgs.builder()
///                     .authType("AWS_LAMBDA")
///                     .build())
///                 .build())
///             .name("example-event-api")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:Api
///     properties:
///       eventConfig:
///         authProviders:
///           - lambdaAuthorizerConfig:
///               authorizerUri: ${exampleAwsLambdaFunction.arn}
///               authorizerResultTtlInSeconds: 300
///             authType: AWS_LAMBDA
///         connectionAuthModes:
///           - authType: AWS_LAMBDA
///         defaultPublishAuthModes:
///           - authType: AWS_LAMBDA
///         defaultSubscribeAuthModes:
///           - authType: AWS_LAMBDA
///       name: example-event-api
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AppSync Event API using the `apiId`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/api:Api example example-api-id
/// ```
class Api extends pulumi.CustomResource {
  /// ARN of the Event API.
  late final pulumi.Output<String> apiArn;
  /// ID of the Event API.
  late final pulumi.Output<String> apiId;
  /// DNS configuration for the Event API.
  late final pulumi.Output<Map<String, String>> dns;
  /// Configuration for the Event API. See `eventConfig` Block below.
  late final pulumi.Output<ApiEventConfig> eventConfig;
  /// Name of the Event API.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Contact information for the owner of the Event API.
  late final pulumi.Output<String?> ownerContact;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of the associated WAF web ACL.
  late final pulumi.Output<String> wafWebAclArn;
  /// Whether X-Ray tracing is enabled for the Event API.
  late final pulumi.Output<bool> xrayEnabled;

  /// Creates a new [Api].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Api]. {@macro pulumi_appsync_api_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Api(
    String name, {
    ApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/api:Api',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    apiArn = registerOutput<String>('apiArn');
    apiId = registerOutput<String>('apiId');
    dns = registerOutput<Map<String, String>>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    eventConfig = registerOutput<ApiEventConfig>('eventConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiEventConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    ownerContact = registerOutput<String?>('ownerContact');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    wafWebAclArn = registerOutput<String>('wafWebAclArn');
    xrayEnabled = registerOutput<bool>('xrayEnabled');
  }

  /// Gets an existing [Api] resource's state with the given [name] and [id].
  static Api get(
    String name,
    pulumi.Input<String> id, {
    ApiState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Api._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Api._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/api:Api',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiArn = registerOutput<String>('apiArn');
    apiId = registerOutput<String>('apiId');
    dns = registerOutput<Map<String, String>>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    eventConfig = registerOutput<ApiEventConfig>('eventConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiEventConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    ownerContact = registerOutput<String?>('ownerContact');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    wafWebAclArn = registerOutput<String>('wafWebAclArn');
    xrayEnabled = registerOutput<bool>('xrayEnabled');
  }

  /// Creates a typed reference to an existing [Api] resource.
  Api.reference(String urn)
    : super(
        'aws:appsync/api:Api',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiArn = registerOutput<String>('apiArn');
    apiId = registerOutput<String>('apiId');
    dns = registerOutput<Map<String, String>>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    eventConfig = registerOutput<ApiEventConfig>('eventConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiEventConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    ownerContact = registerOutput<String?>('ownerContact');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    wafWebAclArn = registerOutput<String>('wafWebAclArn');
    xrayEnabled = registerOutput<bool>('xrayEnabled');
  }
}
