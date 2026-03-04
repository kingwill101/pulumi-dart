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
///     name: "example-event-api",
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.Api("example",
///     name="example-event-api",
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
///     var example = new Aws.AppSync.Api("example", new()
///     {
///         Name = "example-event-api",
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
/// 			Name: pulumi.String("example-event-api"),
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
/// import com.pulumi.aws.appsync.Api;
/// import com.pulumi.aws.appsync.ApiArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigArgs;
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
///         var example = new Api("example", ApiArgs.builder()
///             .name("example-event-api")
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
///       name: example-event-api
///       eventConfig:
///         authProviders:
///           - authType: API_KEY
///         connectionAuthModes:
///           - authType: API_KEY
///         defaultPublishAuthModes:
///           - authType: API_KEY
///         defaultSubscribeAuthModes:
///           - authType: API_KEY
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
///     name: "example-event-api",
///     eventConfig: {
///         authProviders: [{
///             authType: "AMAZON_COGNITO_USER_POOLS",
///             cognitoConfig: {
///                 userPoolId: example.id,
///                 awsRegion: current.then(current => current.name),
///             },
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example", name="example-user-pool")
/// current = aws.get_region()
/// example_api = aws.appsync.Api("example",
///     name="example-event-api",
///     event_config={
///         "auth_providers": [{
///             "auth_type": "AMAZON_COGNITO_USER_POOLS",
///             "cognito_config": {
///                 "user_pool_id": example.id,
///                 "aws_region": current.name,
///             },
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
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "example-user-pool",
///     });
///
///     var current = Aws.GetRegion.Invoke();
///
///     var exampleApi = new Aws.AppSync.Api("example", new()
///     {
///         Name = "example-event-api",
///         EventConfig = new Aws.AppSync.Inputs.ApiEventConfigArgs
///         {
///             AuthProviders = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigAuthProviderArgs
///                 {
///                     AuthType = "AMAZON_COGNITO_USER_POOLS",
///                     CognitoConfig = new Aws.AppSync.Inputs.ApiEventConfigAuthProviderCognitoConfigArgs
///                     {
///                         UserPoolId = example.Id,
///                         AwsRegion = current.Apply(getRegionResult => getRegionResult.Name),
///                     },
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
/// 			Name: pulumi.String("example-event-api"),
/// 			EventConfig: &appsync.ApiEventConfigArgs{
/// 				AuthProviders: appsync.ApiEventConfigAuthProviderArray{
/// 					&appsync.ApiEventConfigAuthProviderArgs{
/// 						AuthType: pulumi.String("AMAZON_COGNITO_USER_POOLS"),
/// 						CognitoConfig: &appsync.ApiEventConfigAuthProviderCognitoConfigArgs{
/// 							UserPoolId: example.ID(),
/// 							AwsRegion:  pulumi.String(current.Name),
/// 						},
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.appsync.Api;
/// import com.pulumi.aws.appsync.ApiArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigArgs;
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .name("example-user-pool")
///             .build());
///
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var exampleApi = new Api("exampleApi", ApiArgs.builder()
///             .name("example-event-api")
///             .eventConfig(ApiEventConfigArgs.builder()
///                 .authProviders(ApiEventConfigAuthProviderArgs.builder()
///                     .authType("AMAZON_COGNITO_USER_POOLS")
///                     .cognitoConfig(ApiEventConfigAuthProviderCognitoConfigArgs.builder()
///                         .userPoolId(example.id())
///                         .awsRegion(current.name())
///                         .build())
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
///       name: example-event-api
///       eventConfig:
///         authProviders:
///           - authType: AMAZON_COGNITO_USER_POOLS
///             cognitoConfig:
///               userPoolId: ${example.id}
///               awsRegion: ${current.name}
///         connectionAuthModes:
///           - authType: AMAZON_COGNITO_USER_POOLS
///         defaultPublishAuthModes:
///           - authType: AMAZON_COGNITO_USER_POOLS
///         defaultSubscribeAuthModes:
///           - authType: AMAZON_COGNITO_USER_POOLS
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
///     name: "example-event-api",
///     eventConfig: {
///         authProviders: [{
///             authType: "AWS_LAMBDA",
///             lambdaAuthorizerConfig: {
///                 authorizerUri: exampleAwsLambdaFunction.arn,
///                 authorizerResultTtlInSeconds: 300,
///             },
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.Api("example",
///     name="example-event-api",
///     event_config={
///         "auth_providers": [{
///             "auth_type": "AWS_LAMBDA",
///             "lambda_authorizer_config": {
///                 "authorizer_uri": example_aws_lambda_function["arn"],
///                 "authorizer_result_ttl_in_seconds": 300,
///             },
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
///     var example = new Aws.AppSync.Api("example", new()
///     {
///         Name = "example-event-api",
///         EventConfig = new Aws.AppSync.Inputs.ApiEventConfigArgs
///         {
///             AuthProviders = new[]
///             {
///                 new Aws.AppSync.Inputs.ApiEventConfigAuthProviderArgs
///                 {
///                     AuthType = "AWS_LAMBDA",
///                     LambdaAuthorizerConfig = new Aws.AppSync.Inputs.ApiEventConfigAuthProviderLambdaAuthorizerConfigArgs
///                     {
///                         AuthorizerUri = exampleAwsLambdaFunction.Arn,
///                         AuthorizerResultTtlInSeconds = 300,
///                     },
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
/// 			Name: pulumi.String("example-event-api"),
/// 			EventConfig: &appsync.ApiEventConfigArgs{
/// 				AuthProviders: appsync.ApiEventConfigAuthProviderArray{
/// 					&appsync.ApiEventConfigAuthProviderArgs{
/// 						AuthType: pulumi.String("AWS_LAMBDA"),
/// 						LambdaAuthorizerConfig: &appsync.ApiEventConfigAuthProviderLambdaAuthorizerConfigArgs{
/// 							AuthorizerUri:                pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 							AuthorizerResultTtlInSeconds: pulumi.Int(300),
/// 						},
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
/// import com.pulumi.aws.appsync.Api;
/// import com.pulumi.aws.appsync.ApiArgs;
/// import com.pulumi.aws.appsync.inputs.ApiEventConfigArgs;
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
///         var example = new Api("example", ApiArgs.builder()
///             .name("example-event-api")
///             .eventConfig(ApiEventConfigArgs.builder()
///                 .authProviders(ApiEventConfigAuthProviderArgs.builder()
///                     .authType("AWS_LAMBDA")
///                     .lambdaAuthorizerConfig(ApiEventConfigAuthProviderLambdaAuthorizerConfigArgs.builder()
///                         .authorizerUri(exampleAwsLambdaFunction.arn())
///                         .authorizerResultTtlInSeconds(300)
///                         .build())
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
///       name: example-event-api
///       eventConfig:
///         authProviders:
///           - authType: AWS_LAMBDA
///             lambdaAuthorizerConfig:
///               authorizerUri: ${exampleAwsLambdaFunction.arn}
///               authorizerResultTtlInSeconds: 300
///         connectionAuthModes:
///           - authType: AWS_LAMBDA
///         defaultPublishAuthModes:
///           - authType: AWS_LAMBDA
///         defaultSubscribeAuthModes:
///           - authType: AWS_LAMBDA
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AppSync Event API using the `api_id`. For example:
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

  /// Configuration for the Event API. See Event Config below.
  late final pulumi.Output<ApiEventConfig> eventConfig;

  /// Name of the Event API.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Contact information for the owner of the Event API.
  late final pulumi.Output<String?> ownerContact;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of the associated WAF web ACL.
  late final pulumi.Output<String> wafWebAclArn;
  late final pulumi.Output<bool> xrayEnabled;

  /// Creates a new [Api].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Api]. {@macro pulumi_appsync_api_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Api(String name, {ApiArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:appsync/api:Api',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    apiArn = registerOutput<String>('apiArn');
    apiId = registerOutput<String>('apiId');
    dns = registerOutput<Map<String, String>>('dns');
    eventConfig = registerOutput<ApiEventConfig>('eventConfig');
    this.name = registerOutput<String>('name');
    ownerContact = registerOutput<String?>('ownerContact');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    wafWebAclArn = registerOutput<String>('wafWebAclArn');
    xrayEnabled = registerOutput<bool>('xrayEnabled');
  }

  /// Gets an existing [Api] resource's state with the given [name] and [id].
  static Api get(String name, pulumi.Input<String> id, {ApiState? state}) {
    return Api._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    dns = registerOutput<Map<String, String>>('dns');
    eventConfig = registerOutput<ApiEventConfig>('eventConfig');
    this.name = registerOutput<String>('name');
    ownerContact = registerOutput<String?>('ownerContact');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    wafWebAclArn = registerOutput<String>('wafWebAclArn');
    xrayEnabled = registerOutput<bool>('xrayEnabled');
  }
}
