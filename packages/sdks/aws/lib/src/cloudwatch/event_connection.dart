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
///     name: "ngrok-connection",
///     description: "A connection description",
///     authorizationType: "API_KEY",
///     authParameters: {
///         apiKey: {
///             key: "x-signature",
///             value: "1234",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.EventConnection("test",
///     name="ngrok-connection",
///     description="A connection description",
///     authorization_type="API_KEY",
///     auth_parameters={
///         "api_key": {
///             "key": "x-signature",
///             "value": "1234",
///         },
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
///     var test = new Aws.CloudWatch.EventConnection("test", new()
///     {
///         Name = "ngrok-connection",
///         Description = "A connection description",
///         AuthorizationType = "API_KEY",
///         AuthParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersArgs
///         {
///             ApiKey = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersApiKeyArgs
///             {
///                 Key = "x-signature",
///                 Value = "1234",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewEventConnection(ctx, "test", &cloudwatch.EventConnectionArgs{
/// 			Name:              pulumi.String("ngrok-connection"),
/// 			Description:       pulumi.String("A connection description"),
/// 			AuthorizationType: pulumi.String("API_KEY"),
/// 			AuthParameters: &cloudwatch.EventConnectionAuthParametersArgs{
/// 				ApiKey: &cloudwatch.EventConnectionAuthParametersApiKeyArgs{
/// 					Key:   pulumi.String("x-signature"),
/// 					Value: pulumi.String("1234"),
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
/// import com.pulumi.aws.cloudwatch.EventConnection;
/// import com.pulumi.aws.cloudwatch.EventConnectionArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersApiKeyArgs;
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
///         var test = new EventConnection("test", EventConnectionArgs.builder()
///             .name("ngrok-connection")
///             .description("A connection description")
///             .authorizationType("API_KEY")
///             .authParameters(EventConnectionAuthParametersArgs.builder()
///                 .apiKey(EventConnectionAuthParametersApiKeyArgs.builder()
///                     .key("x-signature")
///                     .value("1234")
///                     .build())
///                 .build())
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
///       name: ngrok-connection
///       description: A connection description
///       authorizationType: API_KEY
///       authParameters:
///         apiKey:
///           key: x-signature
///           value: '1234'
/// ```
///
///
///
/// ### Basic Authorization
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cloudwatch.EventConnection("test", {
///     name: "ngrok-connection",
///     description: "A connection description",
///     authorizationType: "BASIC",
///     authParameters: {
///         basic: {
///             username: "user",
///             password: "Pass1234!",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.EventConnection("test",
///     name="ngrok-connection",
///     description="A connection description",
///     authorization_type="BASIC",
///     auth_parameters={
///         "basic": {
///             "username": "user",
///             "password": "Pass1234!",
///         },
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
///     var test = new Aws.CloudWatch.EventConnection("test", new()
///     {
///         Name = "ngrok-connection",
///         Description = "A connection description",
///         AuthorizationType = "BASIC",
///         AuthParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersArgs
///         {
///             Basic = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersBasicArgs
///             {
///                 Username = "user",
///                 Password = "Pass1234!",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewEventConnection(ctx, "test", &cloudwatch.EventConnectionArgs{
/// 			Name:              pulumi.String("ngrok-connection"),
/// 			Description:       pulumi.String("A connection description"),
/// 			AuthorizationType: pulumi.String("BASIC"),
/// 			AuthParameters: &cloudwatch.EventConnectionAuthParametersArgs{
/// 				Basic: &cloudwatch.EventConnectionAuthParametersBasicArgs{
/// 					Username: pulumi.String("user"),
/// 					Password: pulumi.String("Pass1234!"),
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
/// import com.pulumi.aws.cloudwatch.EventConnection;
/// import com.pulumi.aws.cloudwatch.EventConnectionArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersBasicArgs;
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
///         var test = new EventConnection("test", EventConnectionArgs.builder()
///             .name("ngrok-connection")
///             .description("A connection description")
///             .authorizationType("BASIC")
///             .authParameters(EventConnectionAuthParametersArgs.builder()
///                 .basic(EventConnectionAuthParametersBasicArgs.builder()
///                     .username("user")
///                     .password("Pass1234!")
///                     .build())
///                 .build())
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
///       name: ngrok-connection
///       description: A connection description
///       authorizationType: BASIC
///       authParameters:
///         basic:
///           username: user
///           password: Pass1234!
/// ```
///
///
///
/// ### OAuth Authorization
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cloudwatch.EventConnection("test", {
///     name: "ngrok-connection",
///     description: "A connection description",
///     authorizationType: "OAUTH_CLIENT_CREDENTIALS",
///     authParameters: {
///         oauth: {
///             authorizationEndpoint: "https://auth.url.com/endpoint",
///             httpMethod: "GET",
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
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.EventConnection("test",
///     name="ngrok-connection",
///     description="A connection description",
///     authorization_type="OAUTH_CLIENT_CREDENTIALS",
///     auth_parameters={
///         "oauth": {
///             "authorization_endpoint": "https://auth.url.com/endpoint",
///             "http_method": "GET",
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
///         },
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
///     var test = new Aws.CloudWatch.EventConnection("test", new()
///     {
///         Name = "ngrok-connection",
///         Description = "A connection description",
///         AuthorizationType = "OAUTH_CLIENT_CREDENTIALS",
///         AuthParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersArgs
///         {
///             Oauth = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersOauthArgs
///             {
///                 AuthorizationEndpoint = "https://auth.url.com/endpoint",
///                 HttpMethod = "GET",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewEventConnection(ctx, "test", &cloudwatch.EventConnectionArgs{
/// 			Name:              pulumi.String("ngrok-connection"),
/// 			Description:       pulumi.String("A connection description"),
/// 			AuthorizationType: pulumi.String("OAUTH_CLIENT_CREDENTIALS"),
/// 			AuthParameters: &cloudwatch.EventConnectionAuthParametersArgs{
/// 				Oauth: &cloudwatch.EventConnectionAuthParametersOauthArgs{
/// 					AuthorizationEndpoint: pulumi.String("https://auth.url.com/endpoint"),
/// 					HttpMethod:            pulumi.String("GET"),
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
/// import com.pulumi.aws.cloudwatch.EventConnection;
/// import com.pulumi.aws.cloudwatch.EventConnectionArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthClientParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersOauthOauthHttpParametersArgs;
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
///         var test = new EventConnection("test", EventConnectionArgs.builder()
///             .name("ngrok-connection")
///             .description("A connection description")
///             .authorizationType("OAUTH_CLIENT_CREDENTIALS")
///             .authParameters(EventConnectionAuthParametersArgs.builder()
///                 .oauth(EventConnectionAuthParametersOauthArgs.builder()
///                     .authorizationEndpoint("https://auth.url.com/endpoint")
///                     .httpMethod("GET")
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
///                     .build())
///                 .build())
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
///       name: ngrok-connection
///       description: A connection description
///       authorizationType: OAUTH_CLIENT_CREDENTIALS
///       authParameters:
///         oauth:
///           authorizationEndpoint: https://auth.url.com/endpoint
///           httpMethod: GET
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
/// ```
///
///
///
/// ### Invocation Http Parameters
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cloudwatch.EventConnection("test", {
///     name: "ngrok-connection",
///     description: "A connection description",
///     authorizationType: "BASIC",
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.EventConnection("test",
///     name="ngrok-connection",
///     description="A connection description",
///     authorization_type="BASIC",
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
///     var test = new Aws.CloudWatch.EventConnection("test", new()
///     {
///         Name = "ngrok-connection",
///         Description = "A connection description",
///         AuthorizationType = "BASIC",
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
/// 			Name:              pulumi.String("ngrok-connection"),
/// 			Description:       pulumi.String("A connection description"),
/// 			AuthorizationType: pulumi.String("BASIC"),
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
/// import com.pulumi.aws.cloudwatch.EventConnection;
/// import com.pulumi.aws.cloudwatch.EventConnectionArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersBasicArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersInvocationHttpParametersArgs;
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
///         var test = new EventConnection("test", EventConnectionArgs.builder()
///             .name("ngrok-connection")
///             .description("A connection description")
///             .authorizationType("BASIC")
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
///       name: ngrok-connection
///       description: A connection description
///       authorizationType: BASIC
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
/// ```
///
///
///
/// ### CMK Encryption
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
///     name: "ngrok-connection",
///     description: "A connection description",
///     authorizationType: "BASIC",
///     authParameters: {
///         basic: {
///             username: "user",
///             password: "Pass1234!",
///         },
///     },
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
///     name="ngrok-connection",
///     description="A connection description",
///     authorization_type="BASIC",
///     auth_parameters={
///         "basic": {
///             "username": "user",
///             "password": "Pass1234!",
///         },
///     },
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
///         Name = "ngrok-connection",
///         Description = "A connection description",
///         AuthorizationType = "BASIC",
///         AuthParameters = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersArgs
///         {
///             Basic = new Aws.CloudWatch.Inputs.EventConnectionAuthParametersBasicArgs
///             {
///                 Username = "user",
///                 Password = "Pass1234!",
///             },
///         },
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
/// 					"Principal": map[string]interface{}{
/// 						"AWS": fmt.Sprintf("arn:%v:iam::%v:root", currentGetPartition.Partition, current.AccountId),
/// 					},
/// 					"Action":   "kms:*",
/// 					"Resource": "*",
/// 				},
/// 				map[string]interface{}{
/// 					"Sid":    "Allow use of the key",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]interface{}{
/// 						"AWS": fmt.Sprintf("arn:%v:iam::%v:root", currentGetPartition.Partition, current.AccountId),
/// 					},
/// 					"Action": []string{
/// 						"kms:DescribeKey",
/// 						"kms:Decrypt",
/// 						"kms:GenerateDataKey",
/// 					},
/// 					"Resource": "*",
/// 					"Condition": map[string]interface{}{
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
/// 			Policy:               pulumi.String(json0),
/// 			Tags: pulumi.StringMap{
/// 				"EventBridgeApiDestinations": pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewEventConnection(ctx, "test", &cloudwatch.EventConnectionArgs{
/// 			Name:              pulumi.String("ngrok-connection"),
/// 			Description:       pulumi.String("A connection description"),
/// 			AuthorizationType: pulumi.String("BASIC"),
/// 			AuthParameters: &cloudwatch.EventConnectionAuthParametersArgs{
/// 				Basic: &cloudwatch.EventConnectionAuthParametersBasicArgs{
/// 					Username: pulumi.String("user"),
/// 					Password: pulumi.String("Pass1234!"),
/// 				},
/// 			},
/// 			KmsKeyIdentifier: pulumi.Any(example.Id),
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
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.cloudwatch.EventConnection;
/// import com.pulumi.aws.cloudwatch.EventConnectionArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventConnectionAuthParametersBasicArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///             .name("ngrok-connection")
///             .description("A connection description")
///             .authorizationType("BASIC")
///             .authParameters(EventConnectionAuthParametersArgs.builder()
///                 .basic(EventConnectionAuthParametersBasicArgs.builder()
///                     .username("user")
///                     .password("Pass1234!")
///                     .build())
///                 .build())
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
///       name: ngrok-connection
///       description: A connection description
///       authorizationType: BASIC
///       authParameters:
///         basic:
///           username: user
///           password: Pass1234!
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
/// Using `pulumi import`, import EventBridge EventBridge connection using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventConnection:EventConnection test ngrok-connection
/// ```
class EventConnection extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the connection.
  late final pulumi.Output<String> arn;

  /// Parameters used for authorization. A maximum of 1 are allowed. Documented below.
  late final pulumi.Output<EventConnectionAuthParameters> authParameters;

  /// Type of authorization to use for the connection. One of `API_KEY`,`BASIC`,`OAUTH_CLIENT_CREDENTIALS`.
  late final pulumi.Output<String> authorizationType;

  /// Description for the connection. Maximum of 512 characters.
  late final pulumi.Output<String?> description;

  /// Parameters to use for invoking a private API. Documented below.
  late final pulumi.Output<EventConnectionInvocationConnectivityParameters?>
  invocationConnectivityParameters;

  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this connection. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  late final pulumi.Output<String?> kmsKeyIdentifier;

  /// The name for the connection. Maximum of 64 characters consisting of numbers, lower/upper case letters, .,-,_.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the secret created from the authorization parameters specified for the connection.
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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    authParameters = registerOutput<EventConnectionAuthParameters>(
      'authParameters',
    );
    authorizationType = registerOutput<String>('authorizationType');
    description = registerOutput<String?>('description');
    invocationConnectivityParameters =
        registerOutput<EventConnectionInvocationConnectivityParameters?>(
          'invocationConnectivityParameters',
        );
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
  }) {
    return EventConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    authParameters = registerOutput<EventConnectionAuthParameters>(
      'authParameters',
    );
    authorizationType = registerOutput<String>('authorizationType');
    description = registerOutput<String?>('description');
    invocationConnectivityParameters =
        registerOutput<EventConnectionInvocationConnectivityParameters?>(
          'invocationConnectivityParameters',
        );
    kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
  }
}
