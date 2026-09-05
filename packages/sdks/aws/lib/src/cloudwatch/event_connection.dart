import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_connection_args.dart';
import 'event_connection_auth_parameters.dart';
import 'event_connection_invocation_connectivity_parameters.dart';
import 'event_connection_state.dart';

/// Provides an EventBridge connection resource.
///
/// &gt; **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cloudwatch.EventConnection("test", {
///     authParameters: {
///         apiKey: {
///             key: "x-signature",
///             value: "1234",
///         },
///     },
///     name: "ngrok-connection",
///     description: "A connection description",
///     authorizationType: "API_KEY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.EventConnection("test",
///     auth_parameters={
///         "api_key": {
///             "key": "x-signature",
///             "value": "1234",
///         },
///     },
///     name="ngrok-connection",
///     description="A connection description",
///     authorization_type="API_KEY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CloudWatch.EventConnection("test", new()
///     {
///         AuthParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersArgs
///         {
///             ApiKey = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersApiKeyArgs
///             {
///                 Key = "x-signature",
///                 Value = "1234",
///             },
///         },
///         Name = "ngrok-connection",
///         Description = "A connection description",
///         AuthorizationType = "API_KEY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewEventConnection(ctx, "test", &cloudwatch.EventConnectionArgs{
/// 			AuthParameters: &cloudwatch.EventConnectionAuthParametersArgs{
/// 				ApiKey: &cloudwatch.EventConnectionAuthParametersApiKeyArgs{
/// 					Key:   pulumi.String("x-signature"),
/// 					Value: pulumi.String("1234"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("ngrok-connection"),
/// 			Description:       pulumi.String("A connection description"),
/// 			AuthorizationType: pulumi.String("API_KEY"),
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
/// resource "aws_cloudwatch_eventconnection" "test" {
///   auth_parameters = {
///     api_key = {
///       key   = "x-signature"
///       value = "1234"
///     }
///   }
///   name               = "ngrok-connection"
///   description        = "A connection description"
///   authorization_type = "API_KEY"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.EventConnection;
/// import com.pulumi.aws.cloudwatch.EventConnectionArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersApiKeyArgs;
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
///         var test = new EventConnection("test", EventConnectionArgs.builder()
///             .authParameters(EventConnectionAuthParametersArgs.builder()
///                 .apiKey(EventConnectionAuthParametersApiKeyArgs.builder()
///                     .key("x-signature")
///                     .value("1234")
///                     .build())
///                 .build())
///             .name("ngrok-connection")
///             .description("A connection description")
///             .authorizationType("API_KEY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:cloudwatch:EventConnection
///     properties:
///       authParameters:
///         apiKey:
///           key: x-signature
///           value: '1234'
///       name: ngrok-connection
///       description: A connection description
///       authorizationType: API_KEY
/// ```
///
///
/// ### Example Usage Basic Authorization
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cloudwatch.EventConnection("test", {
///     authParameters: {
///         basic: {
///             username: "user",
///             password: "Pass1234!",
///         },
///     },
///     name: "ngrok-connection",
///     description: "A connection description",
///     authorizationType: "BASIC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.EventConnection("test",
///     auth_parameters={
///         "basic": {
///             "username": "user",
///             "password": "Pass1234!",
///         },
///     },
///     name="ngrok-connection",
///     description="A connection description",
///     authorization_type="BASIC")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CloudWatch.EventConnection("test", new()
///     {
///         AuthParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersArgs
///         {
///             Basic = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersBasicArgs
///             {
///                 Username = "user",
///                 Password = "Pass1234!",
///             },
///         },
///         Name = "ngrok-connection",
///         Description = "A connection description",
///         AuthorizationType = "BASIC",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewEventConnection(ctx, "test", &cloudwatch.EventConnectionArgs{
/// 			AuthParameters: &cloudwatch.EventConnectionAuthParametersArgs{
/// 				Basic: &cloudwatch.EventConnectionAuthParametersBasicArgs{
/// 					Username: pulumi.String("user"),
/// 					Password: pulumi.String("Pass1234!"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("ngrok-connection"),
/// 			Description:       pulumi.String("A connection description"),
/// 			AuthorizationType: pulumi.String("BASIC"),
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
/// resource "aws_cloudwatch_eventconnection" "test" {
///   auth_parameters = {
///     basic = {
///       username = "user"
///       password = "Pass1234!"
///     }
///   }
///   name               = "ngrok-connection"
///   description        = "A connection description"
///   authorization_type = "BASIC"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.EventConnection;
/// import com.pulumi.aws.cloudwatch.EventConnectionArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersBasicArgs;
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
///         var test = new EventConnection("test", EventConnectionArgs.builder()
///             .authParameters(EventConnectionAuthParametersArgs.builder()
///                 .basic(EventConnectionAuthParametersBasicArgs.builder()
///                     .username("user")
///                     .password("Pass1234!")
///                     .build())
///                 .build())
///             .name("ngrok-connection")
///             .description("A connection description")
///             .authorizationType("BASIC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:cloudwatch:EventConnection
///     properties:
///       authParameters:
///         basic:
///           username: user
///           password: Pass1234!
///       name: ngrok-connection
///       description: A connection description
///       authorizationType: BASIC
/// ```
///
///
/// ### Example Usage OAuth Authorization
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cloudwatch.EventConnection("test", {
///     authParameters: {
///         oauth: {
///             clientParameters: {
///                 clientId: "1234567890",
///                 clientSecret: "Pass1234!",
///             },
///             oauthHttpParameters: {
///                 bodies: [{
///                     key: "body-parameter-key",
///                     value: "body-parameter-value",
///                     isValueSecret: false,
///                 }],
///                 headers: [{
///                     key: "header-parameter-key",
///                     value: "header-parameter-value",
///                     isValueSecret: false,
///                 }],
///                 queryStrings: [{
///                     key: "query-string-parameter-key",
///                     value: "query-string-parameter-value",
///                     isValueSecret: false,
///                 }],
///             },
///             authorizationEndpoint: "https://auth.url.com/endpoint",
///             httpMethod: "GET",
///         },
///     },
///     name: "ngrok-connection",
///     description: "A connection description",
///     authorizationType: "OAUTH_CLIENT_CREDENTIALS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.EventConnection("test",
///     auth_parameters={
///         "oauth": {
///             "client_parameters": {
///                 "client_id": "1234567890",
///                 "client_secret": "Pass1234!",
///             },
///             "oauth_http_parameters": {
///                 "bodies": [{
///                     "key": "body-parameter-key",
///                     "value": "body-parameter-value",
///                     "is_value_secret": False,
///                 }],
///                 "headers": [{
///                     "key": "header-parameter-key",
///                     "value": "header-parameter-value",
///                     "is_value_secret": False,
///                 }],
///                 "query_strings": [{
///                     "key": "query-string-parameter-key",
///                     "value": "query-string-parameter-value",
///                     "is_value_secret": False,
///                 }],
///             },
///             "authorization_endpoint": "https://auth.url.com/endpoint",
///             "http_method": "GET",
///         },
///     },
///     name="ngrok-connection",
///     description="A connection description",
///     authorization_type="OAUTH_CLIENT_CREDENTIALS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CloudWatch.EventConnection("test", new()
///     {
///         AuthParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersArgs
///         {
///             Oauth = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersOauthArgs
///             {
///                 ClientParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersOauthClientParametersArgs
///                 {
///                     ClientId = "1234567890",
///                     ClientSecret = "Pass1234!",
///                 },
///                 OauthHttpParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersOauthOauthHttpParametersArgs
///                 {
///                     Bodies = new[]
///                     {
///                         new Aws.CloudWatch.Inputs.EventConnectionAuthParametersOauthOauthHttpParametersBodyArgs
///                         {
///                             Key = "body-parameter-key",
///                             Value = "body-parameter-value",
///                             IsValueSecret = false,
///                         },
///                     },
///                     Headers = new[]
///                     {
///                         new Aws.CloudWatch.Inputs.EventConnectionAuthParametersOauthOauthHttpParametersHeaderArgs
///                         {
///                             Key = "header-parameter-key",
///                             Value = "header-parameter-value",
///                             IsValueSecret = false,
///                         },
///                     },
///                     QueryStrings = new[]
///                     {
///                         new Aws.CloudWatch.Inputs.EventConnectionAuthParametersOauthOauthHttpParametersQueryStringArgs
///                         {
///                             Key = "query-string-parameter-key",
///                             Value = "query-string-parameter-value",
///                             IsValueSecret = false,
///                         },
///                     },
///                 },
///                 AuthorizationEndpoint = "https://auth.url.com/endpoint",
///                 HttpMethod = "GET",
///             },
///         },
///         Name = "ngrok-connection",
///         Description = "A connection description",
///         AuthorizationType = "OAUTH_CLIENT_CREDENTIALS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewEventConnection(ctx, "test", &cloudwatch.EventConnectionArgs{
/// 			AuthParameters: &cloudwatch.EventConnectionAuthParametersArgs{
/// 				Oauth: &cloudwatch.EventConnectionAuthParametersOauthArgs{
/// 					ClientParameters: &cloudwatch.EventConnectionAuthParametersOauthClientParametersArgs{
/// 						ClientId:     pulumi.String("1234567890"),
/// 						ClientSecret: pulumi.String("Pass1234!"),
/// 					},
/// 					OauthHttpParameters: &cloudwatch.EventConnectionAuthParametersOauthOauthHttpParametersArgs{
/// 						Bodies: cloudwatch.EventConnectionAuthParametersOauthOauthHttpParametersBodyArray{
/// 							&cloudwatch.EventConnectionAuthParametersOauthOauthHttpParametersBodyArgs{
/// 								Key:           pulumi.String("body-parameter-key"),
/// 								Value:         pulumi.String("body-parameter-value"),
/// 								IsValueSecret: pulumi.Bool(false),
/// 							},
/// 						},
/// 						Headers: cloudwatch.EventConnectionAuthParametersOauthOauthHttpParametersHeaderArray{
/// 							&cloudwatch.EventConnectionAuthParametersOauthOauthHttpParametersHeaderArgs{
/// 								Key:           pulumi.String("header-parameter-key"),
/// 								Value:         pulumi.String("header-parameter-value"),
/// 								IsValueSecret: pulumi.Bool(false),
/// 							},
/// 						},
/// 						QueryStrings: cloudwatch.EventConnectionAuthParametersOauthOauthHttpParametersQueryStringArray{
/// 							&cloudwatch.EventConnectionAuthParametersOauthOauthHttpParametersQueryStringArgs{
/// 								Key:           pulumi.String("query-string-parameter-key"),
/// 								Value:         pulumi.String("query-string-parameter-value"),
/// 								IsValueSecret: pulumi.Bool(false),
/// 							},
/// 						},
/// 					},
/// 					AuthorizationEndpoint: pulumi.String("https://auth.url.com/endpoint"),
/// 					HttpMethod:            pulumi.String("GET"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("ngrok-connection"),
/// 			Description:       pulumi.String("A connection description"),
/// 			AuthorizationType: pulumi.String("OAUTH_CLIENT_CREDENTIALS"),
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
/// resource "aws_cloudwatch_eventconnection" "test" {
///   auth_parameters = {
///     oauth = {
///       client_parameters = {
///         client_id     = "1234567890"
///         client_secret = "Pass1234!"
///       }
///       oauth_http_parameters = {
///         bodies = [{
///           "key"           = "body-parameter-key"
///           "value"         = "body-parameter-value"
///           "isValueSecret" = false
///         }]
///         headers = [{
///           "key"           = "header-parameter-key"
///           "value"         = "header-parameter-value"
///           "isValueSecret" = false
///         }]
///         query_strings = [{
///           "key"           = "query-string-parameter-key"
///           "value"         = "query-string-parameter-value"
///           "isValueSecret" = false
///         }]
///       }
///       authorization_endpoint = "https://auth.url.com/endpoint"
///       http_method            = "GET"
///     }
///   }
///   name               = "ngrok-connection"
///   description        = "A connection description"
///   authorization_type = "OAUTH_CLIENT_CREDENTIALS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.EventConnection;
/// import com.pulumi.aws.cloudwatch.EventConnectionArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthClientParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthOauthHttpParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthOauthHttpParametersBodyArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthOauthHttpParametersHeaderArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthOauthHttpParametersQueryStringArgs;
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
///         var test = new EventConnection("test", EventConnectionArgs.builder()
///             .authParameters(EventConnectionAuthParametersArgs.builder()
///                 .oauth(EventConnectionAuthParametersOauthArgs.builder()
///                     .clientParameters(EventConnectionAuthParametersOauthClientParametersArgs.builder()
///                         .clientId("1234567890")
///                         .clientSecret("Pass1234!")
///                         .build())
///                     .oauthHttpParameters(EventConnectionAuthParametersOauthOauthHttpParametersArgs.builder()
///                         .bodies(EventConnectionAuthParametersOauthOauthHttpParametersBodyArgs.builder()
///                             .key("body-parameter-key")
///                             .value("body-parameter-value")
///                             .isValueSecret(false)
///                             .build())
///                         .headers(EventConnectionAuthParametersOauthOauthHttpParametersHeaderArgs.builder()
///                             .key("header-parameter-key")
///                             .value("header-parameter-value")
///                             .isValueSecret(false)
///                             .build())
///                         .queryStrings(EventConnectionAuthParametersOauthOauthHttpParametersQueryStringArgs.builder()
///                             .key("query-string-parameter-key")
///                             .value("query-string-parameter-value")
///                             .isValueSecret(false)
///                             .build())
///                         .build())
///                     .authorizationEndpoint("https://auth.url.com/endpoint")
///                     .httpMethod("GET")
///                     .build())
///                 .build())
///             .name("ngrok-connection")
///             .description("A connection description")
///             .authorizationType("OAUTH_CLIENT_CREDENTIALS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:cloudwatch:EventConnection
///     properties:
///       authParameters:
///         oauth:
///           clientParameters:
///             clientId: '1234567890'
///             clientSecret: Pass1234!
///           oauthHttpParameters:
///             bodies:
///               - key: body-parameter-key
///                 value: body-parameter-value
///                 isValueSecret: false
///             headers:
///               - key: header-parameter-key
///                 value: header-parameter-value
///                 isValueSecret: false
///             queryStrings:
///               - key: query-string-parameter-key
///                 value: query-string-parameter-value
///                 isValueSecret: false
///           authorizationEndpoint: https://auth.url.com/endpoint
///           httpMethod: GET
///       name: ngrok-connection
///       description: A connection description
///       authorizationType: OAUTH_CLIENT_CREDENTIALS
/// ```
///
///
/// ### Example Usage Invocation Http Parameters
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cloudwatch.EventConnection("test", {
///     authParameters: {
///         basic: {
///             username: "user",
///             password: "Pass1234!",
///         },
///         invocationHttpParameters: {
///             bodies: [
///                 {
///                     key: "body-parameter-key",
///                     value: "body-parameter-value",
///                     isValueSecret: false,
///                 },
///                 {
///                     key: "body-parameter-key2",
///                     value: "body-parameter-value2",
///                     isValueSecret: true,
///                 },
///             ],
///             headers: [{
///                 key: "header-parameter-key",
///                 value: "header-parameter-value",
///                 isValueSecret: false,
///             }],
///             queryStrings: [{
///                 key: "query-string-parameter-key",
///                 value: "query-string-parameter-value",
///                 isValueSecret: false,
///             }],
///         },
///     },
///     name: "ngrok-connection",
///     description: "A connection description",
///     authorizationType: "BASIC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.EventConnection("test",
///     auth_parameters={
///         "basic": {
///             "username": "user",
///             "password": "Pass1234!",
///         },
///         "invocation_http_parameters": {
///             "bodies": [
///                 {
///                     "key": "body-parameter-key",
///                     "value": "body-parameter-value",
///                     "is_value_secret": False,
///                 },
///                 {
///                     "key": "body-parameter-key2",
///                     "value": "body-parameter-value2",
///                     "is_value_secret": True,
///                 },
///             ],
///             "headers": [{
///                 "key": "header-parameter-key",
///                 "value": "header-parameter-value",
///                 "is_value_secret": False,
///             }],
///             "query_strings": [{
///                 "key": "query-string-parameter-key",
///                 "value": "query-string-parameter-value",
///                 "is_value_secret": False,
///             }],
///         },
///     },
///     name="ngrok-connection",
///     description="A connection description",
///     authorization_type="BASIC")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CloudWatch.EventConnection("test", new()
///     {
///         AuthParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersArgs
///         {
///             Basic = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersBasicArgs
///             {
///                 Username = "user",
///                 Password = "Pass1234!",
///             },
///             InvocationHttpParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersInvocationHttpParametersArgs
///             {
///                 Bodies = new[]
///                 {
///                     new Aws.CloudWatch.Inputs.EventConnectionAuthParametersInvocationHttpParametersBodyArgs
///                     {
///                         Key = "body-parameter-key",
///                         Value = "body-parameter-value",
///                         IsValueSecret = false,
///                     },
///                     new Aws.CloudWatch.Inputs.EventConnectionAuthParametersInvocationHttpParametersBodyArgs
///                     {
///                         Key = "body-parameter-key2",
///                         Value = "body-parameter-value2",
///                         IsValueSecret = true,
///                     },
///                 },
///                 Headers = new[]
///                 {
///                     new Aws.CloudWatch.Inputs.EventConnectionAuthParametersInvocationHttpParametersHeaderArgs
///                     {
///                         Key = "header-parameter-key",
///                         Value = "header-parameter-value",
///                         IsValueSecret = false,
///                     },
///                 },
///                 QueryStrings = new[]
///                 {
///                     new Aws.CloudWatch.Inputs.EventConnectionAuthParametersInvocationHttpParametersQueryStringArgs
///                     {
///                         Key = "query-string-parameter-key",
///                         Value = "query-string-parameter-value",
///                         IsValueSecret = false,
///                     },
///                 },
///             },
///         },
///         Name = "ngrok-connection",
///         Description = "A connection description",
///         AuthorizationType = "BASIC",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewEventConnection(ctx, "test", &cloudwatch.EventConnectionArgs{
/// 			AuthParameters: &cloudwatch.EventConnectionAuthParametersArgs{
/// 				Basic: &cloudwatch.EventConnectionAuthParametersBasicArgs{
/// 					Username: pulumi.String("user"),
/// 					Password: pulumi.String("Pass1234!"),
/// 				},
/// 				InvocationHttpParameters: &cloudwatch.EventConnectionAuthParametersInvocationHttpParametersArgs{
/// 					Bodies: cloudwatch.EventConnectionAuthParametersInvocationHttpParametersBodyArray{
/// 						&cloudwatch.EventConnectionAuthParametersInvocationHttpParametersBodyArgs{
/// 							Key:           pulumi.String("body-parameter-key"),
/// 							Value:         pulumi.String("body-parameter-value"),
/// 							IsValueSecret: pulumi.Bool(false),
/// 						},
/// 						&cloudwatch.EventConnectionAuthParametersInvocationHttpParametersBodyArgs{
/// 							Key:           pulumi.String("body-parameter-key2"),
/// 							Value:         pulumi.String("body-parameter-value2"),
/// 							IsValueSecret: pulumi.Bool(true),
/// 						},
/// 					},
/// 					Headers: cloudwatch.EventConnectionAuthParametersInvocationHttpParametersHeaderArray{
/// 						&cloudwatch.EventConnectionAuthParametersInvocationHttpParametersHeaderArgs{
/// 							Key:           pulumi.String("header-parameter-key"),
/// 							Value:         pulumi.String("header-parameter-value"),
/// 							IsValueSecret: pulumi.Bool(false),
/// 						},
/// 					},
/// 					QueryStrings: cloudwatch.EventConnectionAuthParametersInvocationHttpParametersQueryStringArray{
/// 						&cloudwatch.EventConnectionAuthParametersInvocationHttpParametersQueryStringArgs{
/// 							Key:           pulumi.String("query-string-parameter-key"),
/// 							Value:         pulumi.String("query-string-parameter-value"),
/// 							IsValueSecret: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("ngrok-connection"),
/// 			Description:       pulumi.String("A connection description"),
/// 			AuthorizationType: pulumi.String("BASIC"),
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
/// resource "aws_cloudwatch_eventconnection" "test" {
///   auth_parameters = {
///     basic = {
///       username = "user"
///       password = "Pass1234!"
///     }
///     invocation_http_parameters = {
///       bodies = [{
///         "key"           = "body-parameter-key"
///         "value"         = "body-parameter-value"
///         "isValueSecret" = false
///         }, {
///         "key"           = "body-parameter-key2"
///         "value"         = "body-parameter-value2"
///         "isValueSecret" = true
///       }]
///       headers = [{
///         "key"           = "header-parameter-key"
///         "value"         = "header-parameter-value"
///         "isValueSecret" = false
///       }]
///       query_strings = [{
///         "key"           = "query-string-parameter-key"
///         "value"         = "query-string-parameter-value"
///         "isValueSecret" = false
///       }]
///     }
///   }
///   name               = "ngrok-connection"
///   description        = "A connection description"
///   authorization_type = "BASIC"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.EventConnection;
/// import com.pulumi.aws.cloudwatch.EventConnectionArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersBasicArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersInvocationHttpParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersInvocationHttpParametersBodyArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersInvocationHttpParametersHeaderArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersInvocationHttpParametersQueryStringArgs;
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
///         var test = new EventConnection("test", EventConnectionArgs.builder()
///             .authParameters(EventConnectionAuthParametersArgs.builder()
///                 .basic(EventConnectionAuthParametersBasicArgs.builder()
///                     .username("user")
///                     .password("Pass1234!")
///                     .build())
///                 .invocationHttpParameters(EventConnectionAuthParametersInvocationHttpParametersArgs.builder()
///                     .bodies(
///                         EventConnectionAuthParametersInvocationHttpParametersBodyArgs.builder()
///                             .key("body-parameter-key")
///                             .value("body-parameter-value")
///                             .isValueSecret(false)
///                             .build(),
///                         EventConnectionAuthParametersInvocationHttpParametersBodyArgs.builder()
///                             .key("body-parameter-key2")
///                             .value("body-parameter-value2")
///                             .isValueSecret(true)
///                             .build())
///                     .headers(EventConnectionAuthParametersInvocationHttpParametersHeaderArgs.builder()
///                         .key("header-parameter-key")
///                         .value("header-parameter-value")
///                         .isValueSecret(false)
///                         .build())
///                     .queryStrings(EventConnectionAuthParametersInvocationHttpParametersQueryStringArgs.builder()
///                         .key("query-string-parameter-key")
///                         .value("query-string-parameter-value")
///                         .isValueSecret(false)
///                         .build())
///                     .build())
///                 .build())
///             .name("ngrok-connection")
///             .description("A connection description")
///             .authorizationType("BASIC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:cloudwatch:EventConnection
///     properties:
///       authParameters:
///         basic:
///           username: user
///           password: Pass1234!
///         invocationHttpParameters:
///           bodies:
///             - key: body-parameter-key
///               value: body-parameter-value
///               isValueSecret: false
///             - key: body-parameter-key2
///               value: body-parameter-value2
///               isValueSecret: true
///           headers:
///             - key: header-parameter-key
///               value: header-parameter-value
///               isValueSecret: false
///           queryStrings:
///             - key: query-string-parameter-key
///               value: query-string-parameter-value
///               isValueSecret: false
///       name: ngrok-connection
///       description: A connection description
///       authorizationType: BASIC
/// ```
///
///
/// ### Example Usage OAuth Authorization with Connectivity Parameters
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cloudwatch.EventConnection("test", {
///     authParameters: {
///         connectivityParameters: {
///             resourceParameters: {
///                 resourceConfigurationArn: "arn:aws:vpc-lattice:us-east-1:12345678910:resourceconfiguration/rcfg-12345678910",
///             },
///         },
///         oauth: {
///             clientParameters: {
///                 clientId: "1234567890",
///                 clientSecret: "Pass1234!",
///             },
///             oauthHttpParameters: {
///                 bodies: [{
///                     key: "grant_type",
///                     value: "client_credentials",
///                     isValueSecret: false,
///                 }],
///             },
///             authorizationEndpoint: "https://private-api.example.com/auth",
///             httpMethod: "POST",
///         },
///     },
///     name: "private-api-connection",
///     description: "A connection to a private API",
///     authorizationType: "OAUTH_CLIENT_CREDENTIALS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.EventConnection("test",
///     auth_parameters={
///         "connectivity_parameters": {
///             "resource_parameters": {
///                 "resource_configuration_arn": "arn:aws:vpc-lattice:us-east-1:12345678910:resourceconfiguration/rcfg-12345678910",
///             },
///         },
///         "oauth": {
///             "client_parameters": {
///                 "client_id": "1234567890",
///                 "client_secret": "Pass1234!",
///             },
///             "oauth_http_parameters": {
///                 "bodies": [{
///                     "key": "grant_type",
///                     "value": "client_credentials",
///                     "is_value_secret": False,
///                 }],
///             },
///             "authorization_endpoint": "https://private-api.example.com/auth",
///             "http_method": "POST",
///         },
///     },
///     name="private-api-connection",
///     description="A connection to a private API",
///     authorization_type="OAUTH_CLIENT_CREDENTIALS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CloudWatch.EventConnection("test", new()
///     {
///         AuthParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersArgs
///         {
///             ConnectivityParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersConnectivityParametersArgs
///             {
///                 ResourceParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersConnectivityParametersResourceParametersArgs
///                 {
///                     ResourceConfigurationArn = "arn:aws:vpc-lattice:us-east-1:12345678910:resourceconfiguration/rcfg-12345678910",
///                 },
///             },
///             Oauth = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersOauthArgs
///             {
///                 ClientParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersOauthClientParametersArgs
///                 {
///                     ClientId = "1234567890",
///                     ClientSecret = "Pass1234!",
///                 },
///                 OauthHttpParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersOauthOauthHttpParametersArgs
///                 {
///                     Bodies = new[]
///                     {
///                         new Aws.CloudWatch.Inputs.EventConnectionAuthParametersOauthOauthHttpParametersBodyArgs
///                         {
///                             Key = "grant_type",
///                             Value = "client_credentials",
///                             IsValueSecret = false,
///                         },
///                     },
///                 },
///                 AuthorizationEndpoint = "https://private-api.example.com/auth",
///                 HttpMethod = "POST",
///             },
///         },
///         Name = "private-api-connection",
///         Description = "A connection to a private API",
///         AuthorizationType = "OAUTH_CLIENT_CREDENTIALS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewEventConnection(ctx, "test", &cloudwatch.EventConnectionArgs{
/// 			AuthParameters: &cloudwatch.EventConnectionAuthParametersArgs{
/// 				ConnectivityParameters: &cloudwatch.EventConnectionAuthParametersConnectivityParametersArgs{
/// 					ResourceParameters: &cloudwatch.EventConnectionAuthParametersConnectivityParametersResourceParametersArgs{
/// 						ResourceConfigurationArn: pulumi.String("arn:aws:vpc-lattice:us-east-1:12345678910:resourceconfiguration/rcfg-12345678910"),
/// 					},
/// 				},
/// 				Oauth: &cloudwatch.EventConnectionAuthParametersOauthArgs{
/// 					ClientParameters: &cloudwatch.EventConnectionAuthParametersOauthClientParametersArgs{
/// 						ClientId:     pulumi.String("1234567890"),
/// 						ClientSecret: pulumi.String("Pass1234!"),
/// 					},
/// 					OauthHttpParameters: &cloudwatch.EventConnectionAuthParametersOauthOauthHttpParametersArgs{
/// 						Bodies: cloudwatch.EventConnectionAuthParametersOauthOauthHttpParametersBodyArray{
/// 							&cloudwatch.EventConnectionAuthParametersOauthOauthHttpParametersBodyArgs{
/// 								Key:           pulumi.String("grant_type"),
/// 								Value:         pulumi.String("client_credentials"),
/// 								IsValueSecret: pulumi.Bool(false),
/// 							},
/// 						},
/// 					},
/// 					AuthorizationEndpoint: pulumi.String("https://private-api.example.com/auth"),
/// 					HttpMethod:            pulumi.String("POST"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("private-api-connection"),
/// 			Description:       pulumi.String("A connection to a private API"),
/// 			AuthorizationType: pulumi.String("OAUTH_CLIENT_CREDENTIALS"),
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
/// resource "aws_cloudwatch_eventconnection" "test" {
///   auth_parameters = {
///     connectivity_parameters = {
///       resource_parameters = {
///         resource_configuration_arn = "arn:aws:vpc-lattice:us-east-1:12345678910:resourceconfiguration/rcfg-12345678910"
///       }
///     }
///     oauth = {
///       client_parameters = {
///         client_id     = "1234567890"
///         client_secret = "Pass1234!"
///       }
///       oauth_http_parameters = {
///         bodies = [{
///           "key"           = "grant_type"
///           "value"         = "client_credentials"
///           "isValueSecret" = false
///         }]
///       }
///       authorization_endpoint = "https://private-api.example.com/auth"
///       http_method            = "POST"
///     }
///   }
///   name               = "private-api-connection"
///   description        = "A connection to a private API"
///   authorization_type = "OAUTH_CLIENT_CREDENTIALS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.EventConnection;
/// import com.pulumi.aws.cloudwatch.EventConnectionArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersConnectivityParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersConnectivityParametersResourceParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthClientParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthOauthHttpParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthOauthHttpParametersBodyArgs;
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
///         var test = new EventConnection("test", EventConnectionArgs.builder()
///             .authParameters(EventConnectionAuthParametersArgs.builder()
///                 .connectivityParameters(EventConnectionAuthParametersConnectivityParametersArgs.builder()
///                     .resourceParameters(EventConnectionAuthParametersConnectivityParametersResourceParametersArgs.builder()
///                         .resourceConfigurationArn("arn:aws:vpc-lattice:us-east-1:12345678910:resourceconfiguration/rcfg-12345678910")
///                         .build())
///                     .build())
///                 .oauth(EventConnectionAuthParametersOauthArgs.builder()
///                     .clientParameters(EventConnectionAuthParametersOauthClientParametersArgs.builder()
///                         .clientId("1234567890")
///                         .clientSecret("Pass1234!")
///                         .build())
///                     .oauthHttpParameters(EventConnectionAuthParametersOauthOauthHttpParametersArgs.builder()
///                         .bodies(EventConnectionAuthParametersOauthOauthHttpParametersBodyArgs.builder()
///                             .key("grant_type")
///                             .value("client_credentials")
///                             .isValueSecret(false)
///                             .build())
///                         .build())
///                     .authorizationEndpoint("https://private-api.example.com/auth")
///                     .httpMethod("POST")
///                     .build())
///                 .build())
///             .name("private-api-connection")
///             .description("A connection to a private API")
///             .authorizationType("OAUTH_CLIENT_CREDENTIALS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:cloudwatch:EventConnection
///     properties:
///       authParameters:
///         connectivityParameters:
///           resourceParameters:
///             resourceConfigurationArn: arn:aws:vpc-lattice:us-east-1:12345678910:resourceconfiguration/rcfg-12345678910
///         oauth:
///           clientParameters:
///             clientId: '1234567890'
///             clientSecret: Pass1234!
///           oauthHttpParameters:
///             bodies:
///               - key: grant_type
///                 value: client_credentials
///                 isValueSecret: false
///           authorizationEndpoint: https://private-api.example.com/auth
///           httpMethod: POST
///       name: private-api-connection
///       description: A connection to a private API
///       authorizationType: OAUTH_CLIENT_CREDENTIALS
/// ```
///
///
/// ### Example Usage CMK Encryption
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const test = new aws.kms.Key("test", {
///     deletionWindowInDays: 7,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Id: "key-policy-example",
///         Statement: [
///             {
///                 Sid: "Enable IAM User Permissions",
///                 Effect: "Allow",
///                 Principal: {
///                     AWS: Promise.all([currentGetPartition, current]).then(([currentGetPartition, current]) => `arn:${currentGetPartition.partition}:iam::${current.accountId}:root`),
///                 },
///                 Action: "kms:*",
///                 Resource: "*",
///             },
///             {
///                 Sid: "Allow use of the key",
///                 Effect: "Allow",
///                 Principal: {
///                     AWS: Promise.all([currentGetPartition, current]).then(([currentGetPartition, current]) => `arn:${currentGetPartition.partition}:iam::${current.accountId}:root`),
///                 },
///                 Action: [
///                     "kms:DescribeKey",
///                     "kms:Decrypt",
///                     "kms:GenerateDataKey",
///                 ],
///                 Resource: "*",
///                 Condition: {
///                     StringLike: {
///                         "kms:ViaService": "secretsmanager.*.amazonaws.com",
///                         "kms:EncryptionContext:SecretARN": ["arn:aws:secretsmanager:*:*:secret:events!connection/*"],
///                     },
///                 },
///             },
///         ],
///     }),
///     tags: {
///         EventBridgeApiDestinations: "true",
///     },
/// });
/// const testEventConnection = new aws.cloudwatch.EventConnection("test", {
///     authParameters: {
///         basic: {
///             username: "user",
///             password: "Pass1234!",
///         },
///     },
///     name: "ngrok-connection",
///     description: "A connection description",
///     authorizationType: "BASIC",
///     kmsKeyIdentifier: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// test = aws.kms.Key("test",
///     deletion_window_in_days=7,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Id": "key-policy-example",
///         "Statement": [
///             {
///                 "Sid": "Enable IAM User Permissions",
///                 "Effect": "Allow",
///                 "Principal": {
///                     "AWS": f"arn:{current_get_partition.partition}:iam::{current.account_id}:root",
///                 },
///                 "Action": "kms:*",
///                 "Resource": "*",
///             },
///             {
///                 "Sid": "Allow use of the key",
///                 "Effect": "Allow",
///                 "Principal": {
///                     "AWS": f"arn:{current_get_partition.partition}:iam::{current.account_id}:root",
///                 },
///                 "Action": [
///                     "kms:DescribeKey",
///                     "kms:Decrypt",
///                     "kms:GenerateDataKey",
///                 ],
///                 "Resource": "*",
///                 "Condition": {
///                     "StringLike": {
///                         "kms:ViaService": "secretsmanager.*.amazonaws.com",
///                         "kms:EncryptionContext:SecretARN": ["arn:aws:secretsmanager:*:*:secret:events!connection/*"],
///                     },
///                 },
///             },
///         ],
///     }),
///     tags={
///         "EventBridgeApiDestinations": "true",
///     })
/// test_event_connection = aws.cloudwatch.EventConnection("test",
///     auth_parameters={
///         "basic": {
///             "username": "user",
///             "password": "Pass1234!",
///         },
///     },
///     name="ngrok-connection",
///     description="A connection description",
///     authorization_type="BASIC",
///     kms_key_identifier=example["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var test = new Aws.Kms.Key("test", new()
///     {
///         DeletionWindowInDays = 7,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Id"] = "key-policy-example",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "Enable IAM User Permissions",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = Output.Tuple(currentGetPartition, current).Apply(values =>
///                         {
///                             var currentGetPartition = values.Item1;
///                             var current = values.Item2;
///                             return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root";
///                         }),
///                     },
///                     ["Action"] = "kms:*",
///                     ["Resource"] = "*",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "Allow use of the key",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = Output.Tuple(currentGetPartition, current).Apply(values =>
///                         {
///                             var currentGetPartition = values.Item1;
///                             var current = values.Item2;
///                             return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root";
///                         }),
///                     },
///                     ["Action"] = new[]
///                     {
///                         "kms:DescribeKey",
///                         "kms:Decrypt",
///                         "kms:GenerateDataKey",
///                     },
///                     ["Resource"] = "*",
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringLike"] = new Dictionary<string, object?>
///                         {
///                             ["kms:ViaService"] = "secretsmanager.*.amazonaws.com",
///                             ["kms:EncryptionContext:SecretARN"] = new[]
///                             {
///                                 "arn:aws:secretsmanager:*:*:secret:events!connection/*",
///                             },
///                         },
///                     },
///                 },
///             },
///         }),
///         Tags =
///         {
///             { "EventBridgeApiDestinations", "true" },
///         },
///     });
///
///     var testEventConnection = new Aws.CloudWatch.EventConnection("test", new()
///     {
///         AuthParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersArgs
///         {
///             Basic = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersBasicArgs
///             {
///                 Username = "user",
///                 Password = "Pass1234!",
///             },
///         },
///         Name = "ngrok-connection",
///         Description = "A connection description",
///         AuthorizationType = "BASIC",
///         KmsKeyIdentifier = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Id":      "key-policy-example",
/// 			"Statement": []interface{}{
/// 				map[string]interface{}{
/// 					"Sid":    "Enable IAM User Permissions",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"AWS": fmt.Sprintf("arn:%v:iam::%v:root", currentGetPartition.Partition, current.AccountId),
/// 					},
/// 					"Action":   "kms:*",
/// 					"Resource": "*",
/// 				},
/// 				map[string]interface{}{
/// 					"Sid":    "Allow use of the key",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"AWS": fmt.Sprintf("arn:%v:iam::%v:root", currentGetPartition.Partition, current.AccountId),
/// 					},
/// 					"Action": []string{
/// 						"kms:DescribeKey",
/// 						"kms:Decrypt",
/// 						"kms:GenerateDataKey",
/// 					},
/// 					"Resource": "*",
/// 					"Condition": map[string]map[string]interface{}{
/// 						"StringLike": map[string]interface{}{
/// 							"kms:ViaService": "secretsmanager.*.amazonaws.com",
/// 							"kms:EncryptionContext:SecretARN": []string{
/// 								"arn:aws:secretsmanager:*:*:secret:events!connection/*",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = kms.NewKey(ctx, "test", &kms.KeyArgs{
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 			Policy:               json0,
/// 			Tags: pulumi.StringMap{
/// 				"EventBridgeApiDestinations": pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewEventConnection(ctx, "test", &cloudwatch.EventConnectionArgs{
/// 			AuthParameters: &cloudwatch.EventConnectionAuthParametersArgs{
/// 				Basic: &cloudwatch.EventConnectionAuthParametersBasicArgs{
/// 					Username: pulumi.String("user"),
/// 					Password: pulumi.String("Pass1234!"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("ngrok-connection"),
/// 			Description:       pulumi.String("A connection description"),
/// 			AuthorizationType: pulumi.String("BASIC"),
/// 			KmsKeyIdentifier:  pulumi.Any(example.Id),
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_getpartition" "currentGetPartition" {
/// }
///
/// resource "aws_kms_key" "test" {
///   deletion_window_in_days = 7
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Id"      = "key-policy-example"
///     "Statement" = [{
///       "Sid"    = "Enable IAM User Permissions"
///       "Effect" = "Allow"
///       "Principal" = {
///         "AWS" ="arn:${data.aws_getpartition.currentGetPartition.partition}:iam::${data.aws_getcalleridentity.current.account_id}:root"
///       }
///       "Action"   = "kms:*"
///       "Resource" = "*"
///       }, {
///       "Sid"    = "Allow use of the key"
///       "Effect" = "Allow"
///       "Principal" = {
///         "AWS" ="arn:${data.aws_getpartition.currentGetPartition.partition}:iam::${data.aws_getcalleridentity.current.account_id}:root"
///       }
///       "Action"   = ["kms:DescribeKey", "kms:Decrypt", "kms:GenerateDataKey"]
///       "Resource" = "*"
///       "Condition" = {
///         "StringLike" = {
///           "kms:ViaService"                  = "secretsmanager.*.amazonaws.com"
///           "kms:EncryptionContext:SecretARN" = ["arn:aws:secretsmanager:*:*:secret:events!connection/*"]
///         }
///       }
///     }]
///   })
///   tags = {
///     "EventBridgeApiDestinations" = "true"
///   }
/// }
/// resource "aws_cloudwatch_eventconnection" "test" {
///   auth_parameters = {
///     basic = {
///       username = "user"
///       password = "Pass1234!"
///     }
///   }
///   name               = "ngrok-connection"
///   description        = "A connection description"
///   authorization_type = "BASIC"
///   kms_key_identifier = example.id
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
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.cloudwatch.EventConnection;
/// import com.pulumi.aws.cloudwatch.EventConnectionArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersBasicArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var test = new Key("test", KeyArgs.builder()
///             .deletionWindowInDays(7)
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Id", "key-policy-example"),
///                     jsonProperty("Statement", jsonArray(
///                         jsonObject(
///                             jsonProperty("Sid", "Enable IAM User Permissions"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("AWS", String.format("arn:%s:iam::%s:root", currentGetPartition.partition(),current.accountId()))
///                             )),
///                             jsonProperty("Action", "kms:*"),
///                             jsonProperty("Resource", "*")
///                         ),
///                         jsonObject(
///                             jsonProperty("Sid", "Allow use of the key"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("AWS", String.format("arn:%s:iam::%s:root", currentGetPartition.partition(),current.accountId()))
///                             )),
///                             jsonProperty("Action", jsonArray(
///                                 "kms:DescribeKey",
///                                 "kms:Decrypt",
///                                 "kms:GenerateDataKey"
///                             )),
///                             jsonProperty("Resource", "*"),
///                             jsonProperty("Condition", jsonObject(
///                                 jsonProperty("StringLike", jsonObject(
///                                     jsonProperty("kms:ViaService", "secretsmanager.*.amazonaws.com"),
///                                     jsonProperty("kms:EncryptionContext:SecretARN", jsonArray("arn:aws:secretsmanager:*:*:secret:events!connection/*"))
///                                 ))
///                             ))
///                         )
///                     ))
///                 )))
///             .tags(Map.of("EventBridgeApiDestinations", "true"))
///             .build());
///
///         var testEventConnection = new EventConnection("testEventConnection", EventConnectionArgs.builder()
///             .authParameters(EventConnectionAuthParametersArgs.builder()
///                 .basic(EventConnectionAuthParametersBasicArgs.builder()
///                     .username("user")
///                     .password("Pass1234!")
///                     .build())
///                 .build())
///             .name("ngrok-connection")
///             .description("A connection description")
///             .authorizationType("BASIC")
///             .kmsKeyIdentifier(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:kms:Key
///     properties:
///       deletionWindowInDays: 7
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Id: key-policy-example
///           Statement:
///             - Sid: Enable IAM User Permissions
///               Effect: Allow
///               Principal:
///                 AWS: arn:${currentGetPartition.partition}:iam::${current.accountId}:root
///               Action: kms:*
///               Resource: '*'
///             - Sid: Allow use of the key
///               Effect: Allow
///               Principal:
///                 AWS: arn:${currentGetPartition.partition}:iam::${current.accountId}:root
///               Action:
///                 - kms:DescribeKey
///                 - kms:Decrypt
///                 - kms:GenerateDataKey
///               Resource: '*'
///               Condition:
///                 StringLike:
///                   kms:ViaService: secretsmanager.*.amazonaws.com
///                   kms:EncryptionContext:SecretARN:
///                     - arn:aws:secretsmanager:*:*:secret:events!connection/*
///       tags:
///         EventBridgeApiDestinations: 'true'
///   testEventConnection:
///     type: aws:cloudwatch:EventConnection
///     name: test
///     properties:
///       authParameters:
///         basic:
///           username: user
///           password: Pass1234!
///       name: ngrok-connection
///       description: A connection description
///       authorizationType: BASIC
///       kmsKeyIdentifier: ${example.id}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the connection.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Connections using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventConnection:EventConnection example example-connection
/// ```
class EventConnection extends pulumi.CustomResource {
  /// ARN of the connection.
  late final pulumi.Output<String> arn;
  /// Parameters used for authorization. A maximum of 1 are allowed. Documented below.
  late final pulumi.Output<EventConnectionAuthParameters> authParameters;
  /// Type of authorization to use for the connection. One of `API_KEY`,`BASIC`,`OAUTH_CLIENT_CREDENTIALS`.
  late final pulumi.Output<String> authorizationType;
  /// Description for the connection. Maximum of 512 characters.
  late final pulumi.Output<String?> description;
  /// Parameters to use for invoking a private API. Documented below.
  late final pulumi.Output<EventConnectionInvocationConnectivityParameters?> invocationConnectivityParameters;
  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this connection. The identifier can be the key ARN, KeyId, key alias, or key alias ARN.
  late final pulumi.Output<String?> kmsKeyIdentifier;
  /// The name for the connection. Maximum of 64 characters consisting of numbers, lower/upper case letters, .,-,_.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the secret created from the authorization parameters specified for the connection.
  late final pulumi.Output<String> secretArn;

  /// Creates a new [EventConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventConnection]. {@macro pulumi_cloudwatch_event_connection_event_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventConnection(
    String name, {
    EventConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventConnection:EventConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    authParameters = registerOutput<EventConnectionAuthParameters>('authParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventConnectionAuthParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizationType = registerOutput<String>('authorizationType');
    description = registerOutput<String?>('description');
    invocationConnectivityParameters = registerOutput<EventConnectionInvocationConnectivityParameters?>('invocationConnectivityParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventConnectionInvocationConnectivityParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
  }

  /// Gets an existing [EventConnection] resource's state with the given [name] and [id].
  static EventConnection get(
    String name,
    pulumi.Input<String> id, {
    EventConnectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EventConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EventConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventConnection:EventConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    authParameters = registerOutput<EventConnectionAuthParameters>('authParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventConnectionAuthParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizationType = registerOutput<String>('authorizationType');
    description = registerOutput<String?>('description');
    invocationConnectivityParameters = registerOutput<EventConnectionInvocationConnectivityParameters?>('invocationConnectivityParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventConnectionInvocationConnectivityParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
  }

  /// Creates a typed reference to an existing [EventConnection] resource.
  EventConnection.reference(String urn)
    : super(
        'aws:cloudwatch/eventConnection:EventConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    authParameters = registerOutput<EventConnectionAuthParameters>('authParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventConnectionAuthParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizationType = registerOutput<String>('authorizationType');
    description = registerOutput<String?>('description');
    invocationConnectivityParameters = registerOutput<EventConnectionInvocationConnectivityParameters?>('invocationConnectivityParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventConnectionInvocationConnectivityParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
  }
}
