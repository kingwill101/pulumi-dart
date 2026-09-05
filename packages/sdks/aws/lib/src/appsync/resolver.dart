import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_args.dart';
import 'resolver_caching_config.dart';
import 'resolver_pipeline_config.dart';
import 'resolver_runtime.dart';
import 'resolver_state.dart';
import 'resolver_sync_config.dart';

/// Provides an AppSync Resolver.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.appsync.GraphQLApi("test", {
///     authenticationType: "API_KEY",
///     name: "tf-example",
///     schema: `type Mutation {
/// \\tputPost(id: ID!, title: String!): Post
/// }
///
/// type Post {
/// \\tid: ID!
/// \\ttitle: String!
/// }
///
/// type Query {
/// \\tsinglePost(id: ID!): Post
/// }
///
/// schema {
/// \\tquery: Query
/// \\tmutation: Mutation
/// }
/// `,
/// });
/// const testDataSource = new aws.appsync.DataSource("test", {
///     httpConfig: {
///         endpoint: "http://example.com",
///     },
///     apiId: test.id,
///     name: "my_example",
///     type: "HTTP",
/// });
/// // UNIT type resolver (default)
/// const testResolver = new aws.appsync.Resolver("test", {
///     cachingConfig: {
///         cachingKeys: [
///             "$context.identity.sub",
///             "$context.arguments.id",
///         ],
///         ttl: 60,
///     },
///     apiId: test.id,
///     field: "singlePost",
///     type: "Query",
///     dataSource: testDataSource.name,
///     requestTemplate: `{
///     \\"version\\": \\"2018-05-29\\",
///     \\"method\\": \\"GET\\",
///     \\"resourcePath\\": \\"/\\",
///     \\"params\\":{
///         \\"headers\\": utils.http.copyheaders(ctx.request.headers)
///     }
/// }
/// `,
///     responseTemplate: `#if(ctx.result.statusCode == 200)
///     ctx.result.body
/// #else
///     utils.appendError(ctx.result.body, ctx.result.statusCode)
/// #end
/// `,
/// });
/// // PIPELINE type resolver
/// const mutationPipelineTest = new aws.appsync.Resolver("Mutation_pipelineTest", {
///     pipelineConfig: {
///         functions: [
///             test1.functionId,
///             test2.functionId,
///             test3.functionId,
///         ],
///     },
///     type: "Mutation",
///     apiId: test.id,
///     field: "pipelineTest",
///     requestTemplate: "{}",
///     responseTemplate: "$util.toJson($ctx.result)",
///     kind: "PIPELINE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appsync.GraphQLApi("test",
///     authentication_type="API_KEY",
///     name="tf-example",
///     schema="""type Mutation {
/// \tputPost(id: ID!, title: String!): Post
/// }
///
/// type Post {
/// \tid: ID!
/// \ttitle: String!
/// }
///
/// type Query {
/// \tsinglePost(id: ID!): Post
/// }
///
/// schema {
/// \tquery: Query
/// \tmutation: Mutation
/// }
/// """)
/// test_data_source = aws.appsync.DataSource("test",
///     http_config={
///         "endpoint": "http://example.com",
///     },
///     api_id=test.id,
///     name="my_example",
///     type="HTTP")
/// # UNIT type resolver (default)
/// test_resolver = aws.appsync.Resolver("test",
///     caching_config={
///         "caching_keys": [
///             "$context.identity.sub",
///             "$context.arguments.id",
///         ],
///         "ttl": 60,
///     },
///     api_id=test.id,
///     field="singlePost",
///     type="Query",
///     data_source=test_data_source.name,
///     request_template="""{
///     \"version\": \"2018-05-29\",
///     \"method\": \"GET\",
///     \"resourcePath\": \"/\",
///     \"params\":{
///         \"headers\": $utils.http.copyheaders($ctx.request.headers)
///     }
/// }
/// """,
///     response_template="""#if($ctx.result.statusCode == 200)
///     $ctx.result.body
/// #else
///     $utils.appendError($ctx.result.body, $ctx.result.statusCode)
/// #end
/// """)
/// # PIPELINE type resolver
/// mutation_pipeline_test = aws.appsync.Resolver("Mutation_pipelineTest",
///     pipeline_config={
///         "functions": [
///             test1["functionId"],
///             test2["functionId"],
///             test3["functionId"],
///         ],
///     },
///     type="Mutation",
///     api_id=test.id,
///     field="pipelineTest",
///     request_template="{}",
///     response_template="$util.toJson($ctx.result)",
///     kind="PIPELINE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.AppSync.GraphQLApi("test", new()
///     {
///         AuthenticationType = "API_KEY",
///         Name = "tf-example",
///         Schema = @"type Mutation {
/// \tputPost(id: ID!, title: String!): Post
/// }
///
/// type Post {
/// \tid: ID!
/// \ttitle: String!
/// }
///
/// type Query {
/// \tsinglePost(id: ID!): Post
/// }
///
/// schema {
/// \tquery: Query
/// \tmutation: Mutation
/// }
/// ",
///     });
///
///     var testDataSource = new Aws.AppSync.DataSource("test", new()
///     {
///         HttpConfig = new Aws.AppSync.Inputs.DataSourceHttpConfigArgs
///         {
///             Endpoint = "http://example.com",
///         },
///         ApiId = test.Id,
///         Name = "my_example",
///         Type = "HTTP",
///     });
///
///     // UNIT type resolver (default)
///     var testResolver = new Aws.AppSync.Resolver("test", new()
///     {
///         CachingConfig = new Aws.AppSync.Inputs.ResolverCachingConfigArgs
///         {
///             CachingKeys = new[]
///             {
///                 "$context.identity.sub",
///                 "$context.arguments.id",
///             },
///             Ttl = 60,
///         },
///         ApiId = test.Id,
///         Field = "singlePost",
///         Type = "Query",
///         DataSource = testDataSource.Name,
///         RequestTemplate = @"{
///     \""version\"": \""2018-05-29\"",
///     \""method\"": \""GET\"",
///     \""resourcePath\"": \""/\"",
///     \""params\"":{
///         \""headers\"": $utils.http.copyheaders($ctx.request.headers)
///     }
/// }
/// ",
///         ResponseTemplate = @"#if($ctx.result.statusCode == 200)
///     $ctx.result.body
/// #else
///     $utils.appendError($ctx.result.body, $ctx.result.statusCode)
/// #end
/// ",
///     });
///
///     // PIPELINE type resolver
///     var mutationPipelineTest = new Aws.AppSync.Resolver("Mutation_pipelineTest", new()
///     {
///         PipelineConfig = new Aws.AppSync.Inputs.ResolverPipelineConfigArgs
///         {
///             Functions = new[]
///             {
///                 test1.FunctionId,
///                 test2.FunctionId,
///                 test3.FunctionId,
///             },
///         },
///         Type = "Mutation",
///         ApiId = test.Id,
///         Field = "pipelineTest",
///         RequestTemplate = "{}",
///         ResponseTemplate = "$util.toJson($ctx.result)",
///         Kind = "PIPELINE",
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
/// 		test, err := appsync.NewGraphQLApi(ctx, "test", &appsync.GraphQLApiArgs{
/// 			AuthenticationType: pulumi.String("API_KEY"),
/// 			Name:               pulumi.String("tf-example"),
/// 			Schema: pulumi.String(`type Mutation {
/// \tputPost(id: ID!, title: String!): Post
/// }
///
/// type Post {
/// \tid: ID!
/// \ttitle: String!
/// }
///
/// type Query {
/// \tsinglePost(id: ID!): Post
/// }
///
/// schema {
/// \tquery: Query
/// \tmutation: Mutation
/// }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testDataSource, err := appsync.NewDataSource(ctx, "test", &appsync.DataSourceArgs{
/// 			HttpConfig: &appsync.DataSourceHttpConfigArgs{
/// 				Endpoint: pulumi.String("http://example.com"),
/// 			},
/// 			ApiId: test.ID().ToIDOutput().ToStringOutput(),
/// 			Name:  pulumi.String("my_example"),
/// 			Type:  pulumi.String("HTTP"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// UNIT type resolver (default)
/// 		_, err = appsync.NewResolver(ctx, "test", &appsync.ResolverArgs{
/// 			CachingConfig: &appsync.ResolverCachingConfigArgs{
/// 				CachingKeys: pulumi.StringArray{
/// 					pulumi.String("$context.identity.sub"),
/// 					pulumi.String("$context.arguments.id"),
/// 				},
/// 				Ttl: pulumi.Int(60),
/// 			},
/// 			ApiId:      test.ID().ToIDOutput().ToStringOutput(),
/// 			Field:      pulumi.String("singlePost"),
/// 			Type:       pulumi.String("Query"),
/// 			DataSource: testDataSource.Name,
/// 			RequestTemplate: pulumi.String(`{
///     \"version\": \"2018-05-29\",
///     \"method\": \"GET\",
///     \"resourcePath\": \"/\",
///     \"params\":{
///         \"headers\": $utils.http.copyheaders($ctx.request.headers)
///     }
/// }
/// `),
/// 			ResponseTemplate: pulumi.String(`#if($ctx.result.statusCode == 200)
///     $ctx.result.body
/// #else
///     $utils.appendError($ctx.result.body, $ctx.result.statusCode)
/// #end
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// PIPELINE type resolver
/// 		_, err = appsync.NewResolver(ctx, "Mutation_pipelineTest", &appsync.ResolverArgs{
/// 			PipelineConfig: &appsync.ResolverPipelineConfigArgs{
/// 				Functions: pulumi.StringArray{
/// 					test1.FunctionId,
/// 					test2.FunctionId,
/// 					test3.FunctionId,
/// 				},
/// 			},
/// 			Type:             pulumi.String("Mutation"),
/// 			ApiId:            test.ID().ToIDOutput().ToStringOutput(),
/// 			Field:            pulumi.String("pipelineTest"),
/// 			RequestTemplate:  pulumi.String("{}"),
/// 			ResponseTemplate: pulumi.String("$util.toJson($ctx.result)"),
/// 			Kind:             pulumi.String("PIPELINE"),
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
/// resource "aws_appsync_graphqlapi" "test" {
///   authentication_type = "API_KEY"
///   name                = "tf-example"
///   schema              = "type Mutation {\n\\tputPost(id: ID!, title: String!): Post\n}\n\ntype Post {\n\\tid: ID!\n\\ttitle: String!\n}\n\ntype Query {\n\\tsinglePost(id: ID!): Post\n}\n\nschema {\n\\tquery: Query\n\\tmutation: Mutation\n}\n"
/// }
/// resource "aws_appsync_datasource" "test" {
///   http_config = {
///     endpoint = "http://example.com"
///   }
///   api_id = aws_appsync_graphqlapi.test.id
///   name   = "my_example"
///   type   = "HTTP"
/// }
/// # UNIT type resolver (default)
/// resource "aws_appsync_resolver" "test" {
///   caching_config = {
///     caching_keys = ["$context.identity.sub", "$context.arguments.id"]
///     ttl          = 60
///   }
///   api_id            = aws_appsync_graphqlapi.test.id
///   field             = "singlePost"
///   type              = "Query"
///   data_source       = aws_appsync_datasource.test.name
///   request_template  = "{\n    \\\"version\\\": \\\"2018-05-29\\\",\n    \\\"method\\\": \\\"GET\\\",\n    \\\"resourcePath\\\": \\\"/\\\",\n    \\\"params\\\":{\n        \\\"headers\\\": $utils.http.copyheaders($ctx.request.headers)\n    }\n}\n"
///   response_template = "#if($ctx.result.statusCode == 200)\n    $ctx.result.body\n#else\n    $utils.appendError($ctx.result.body, $ctx.result.statusCode)\n#end\n"
/// }
/// # PIPELINE type resolver
/// resource "aws_appsync_resolver" "Mutation_pipelineTest" {
///   pipeline_config = {
///     functions = [test1.functionId, test2.functionId, test3.functionId]
///   }
///   type              = "Mutation"
///   api_id            = aws_appsync_graphqlapi.test.id
///   field             = "pipelineTest"
///   request_template  = "{}"
///   response_template = "$util.toJson($ctx.result)"
///   kind              = "PIPELINE"
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
/// import com.pulumi.aws.appsync.DataSource;
/// import com.pulumi.aws.appsync.DataSourceArgs;
/// import com.pulumi.aws.appsync.inputs.DataSourceHttpConfigArgs;
/// import com.pulumi.aws.appsync.Resolver;
/// import com.pulumi.aws.appsync.ResolverArgs;
/// import com.pulumi.aws.appsync.inputs.ResolverCachingConfigArgs;
/// import com.pulumi.aws.appsync.inputs.ResolverPipelineConfigArgs;
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
///         var test = new GraphQLApi("test", GraphQLApiArgs.builder()
///             .authenticationType("API_KEY")
///             .name("tf-example")
///             .schema("""
/// type Mutation {
/// \tputPost(id: ID!, title: String!): Post
/// }
///
/// type Post {
/// \tid: ID!
/// \ttitle: String!
/// }
///
/// type Query {
/// \tsinglePost(id: ID!): Post
/// }
///
/// schema {
/// \tquery: Query
/// \tmutation: Mutation
/// }
///             """)
///             .build());
///
///         var testDataSource = new DataSource("testDataSource", DataSourceArgs.builder()
///             .httpConfig(DataSourceHttpConfigArgs.builder()
///                 .endpoint("http://example.com")
///                 .build())
///             .apiId(test.id())
///             .name("my_example")
///             .type("HTTP")
///             .build());
///
///         // UNIT type resolver (default)
///         var testResolver = new Resolver("testResolver", ResolverArgs.builder()
///             .cachingConfig(ResolverCachingConfigArgs.builder()
///                 .cachingKeys(
///                     "$context.identity.sub",
///                     "$context.arguments.id")
///                 .ttl(60)
///                 .build())
///             .apiId(test.id())
///             .field("singlePost")
///             .type("Query")
///             .dataSource(testDataSource.name())
///             .requestTemplate("""
/// {
///     \"version\": \"2018-05-29\",
///     \"method\": \"GET\",
///     \"resourcePath\": \"/\",
///     \"params\":{
///         \"headers\": $utils.http.copyheaders($ctx.request.headers)
///     }
/// }
///             """)
///             .responseTemplate("""
/// #if($ctx.result.statusCode == 200)
///     $ctx.result.body
/// #else
///     $utils.appendError($ctx.result.body, $ctx.result.statusCode)
/// #end
///             """)
///             .build());
///
///         // PIPELINE type resolver
///         var mutationPipelineTest = new Resolver("mutationPipelineTest", ResolverArgs.builder()
///             .pipelineConfig(ResolverPipelineConfigArgs.builder()
///                 .functions(
///                     test1.functionId(),
///                     test2.functionId(),
///                     test3.functionId())
///                 .build())
///             .type("Mutation")
///             .apiId(test.id())
///             .field("pipelineTest")
///             .requestTemplate("{}")
///             .responseTemplate("$util.toJson($ctx.result)")
///             .kind("PIPELINE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:appsync:GraphQLApi
///     properties:
///       authenticationType: API_KEY
///       name: tf-example
///       schema: |
///         type Mutation {
///         \tputPost(id: ID!, title: String!): Post
///         }
///
///         type Post {
///         \tid: ID!
///         \ttitle: String!
///         }
///
///         type Query {
///         \tsinglePost(id: ID!): Post
///         }
///
///         schema {
///         \tquery: Query
///         \tmutation: Mutation
///         }
///   testDataSource:
///     type: aws:appsync:DataSource
///     name: test
///     properties:
///       httpConfig:
///         endpoint: http://example.com
///       apiId: ${test.id}
///       name: my_example
///       type: HTTP
///   # UNIT type resolver (default)
///   testResolver:
///     type: aws:appsync:Resolver
///     name: test
///     properties:
///       cachingConfig:
///         cachingKeys:
///           - $context.identity.sub
///           - $context.arguments.id
///         ttl: 60
///       apiId: ${test.id}
///       field: singlePost
///       type: Query
///       dataSource: ${testDataSource.name}
///       requestTemplate: |
///         {
///             \"version\": \"2018-05-29\",
///             \"method\": \"GET\",
///             \"resourcePath\": \"/\",
///             \"params\":{
///                 \"headers\": $utils.http.copyheaders($ctx.request.headers)
///             }
///         }
///       responseTemplate: |
///         #if($ctx.result.statusCode == 200)
///             $ctx.result.body
///         #else
///             $utils.appendError($ctx.result.body, $ctx.result.statusCode)
///         #end
///   # PIPELINE type resolver
///   mutationPipelineTest:
///     type: aws:appsync:Resolver
///     name: Mutation_pipelineTest
///     properties:
///       pipelineConfig:
///         functions:
///           - ${test1.functionId}
///           - ${test2.functionId}
///           - ${test3.functionId}
///       type: Mutation
///       apiId: ${test.id}
///       field: pipelineTest
///       requestTemplate: '{}'
///       responseTemplate: $util.toJson($ctx.result)
///       kind: PIPELINE
/// ```
///
///
/// ### Example Usage JS
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.appsync.Resolver("example", {
///     runtime: {
///         name: "APPSYNC_JS",
///         runtimeVersion: "1.0.0",
///     },
///     pipelineConfig: {
///         functions: [test.functionId],
///     },
///     type: "Query",
///     apiId: testAwsAppsyncGraphqlApi.id,
///     field: "pipelineTest",
///     kind: "PIPELINE",
///     code: std.file({
///         input: "some-code-dir",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.appsync.Resolver("example",
///     runtime={
///         "name": "APPSYNC_JS",
///         "runtime_version": "1.0.0",
///     },
///     pipeline_config={
///         "functions": [test["functionId"]],
///     },
///     type="Query",
///     api_id=test_aws_appsync_graphql_api["id"],
///     field="pipelineTest",
///     kind="PIPELINE",
///     code=std.file(input="some-code-dir").result)
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
///     var example = new Aws.AppSync.Resolver("example", new()
///     {
///         Runtime = new Aws.AppSync.Inputs.ResolverRuntimeArgs
///         {
///             Name = "APPSYNC_JS",
///             RuntimeVersion = "1.0.0",
///         },
///         PipelineConfig = new Aws.AppSync.Inputs.ResolverPipelineConfigArgs
///         {
///             Functions = new[]
///             {
///                 test.FunctionId,
///             },
///         },
///         Type = "Query",
///         ApiId = testAwsAppsyncGraphqlApi.Id,
///         Field = "pipelineTest",
///         Kind = "PIPELINE",
///         Code = Std.File.Invoke(new()
///         {
///             Input = "some-code-dir",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "some-code-dir",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appsync.NewResolver(ctx, "example", &appsync.ResolverArgs{
/// 			Runtime: &appsync.ResolverRuntimeArgs{
/// 				Name:           pulumi.String("APPSYNC_JS"),
/// 				RuntimeVersion: pulumi.String("1.0.0"),
/// 			},
/// 			PipelineConfig: &appsync.ResolverPipelineConfigArgs{
/// 				Functions: pulumi.StringArray{
/// 					test.FunctionId,
/// 				},
/// 			},
/// 			Type:  pulumi.String("Query"),
/// 			ApiId: pulumi.Any(testAwsAppsyncGraphqlApi.Id),
/// 			Field: pulumi.String("pipelineTest"),
/// 			Kind:  pulumi.String("PIPELINE"),
/// 			Code:  pulumi.String(invokeFile.Result),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_appsync_resolver" "example" {
///   runtime = {
///     name            = "APPSYNC_JS"
///     runtime_version = "1.0.0"
///   }
///   pipeline_config = {
///     functions = [test.functionId]
///   }
///   type   = "Query"
///   api_id = testAwsAppsyncGraphqlApi.id
///   field  = "pipelineTest"
///   kind   = "PIPELINE"
///   code   = file("some-code-dir")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.Resolver;
/// import com.pulumi.aws.appsync.ResolverArgs;
/// import com.pulumi.aws.appsync.inputs.ResolverRuntimeArgs;
/// import com.pulumi.aws.appsync.inputs.ResolverPipelineConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new Resolver("example", ResolverArgs.builder()
///             .runtime(ResolverRuntimeArgs.builder()
///                 .name("APPSYNC_JS")
///                 .runtimeVersion("1.0.0")
///                 .build())
///             .pipelineConfig(ResolverPipelineConfigArgs.builder()
///                 .functions(test.functionId())
///                 .build())
///             .type("Query")
///             .apiId(testAwsAppsyncGraphqlApi.id())
///             .field("pipelineTest")
///             .kind("PIPELINE")
///             .code(StdFunctions.file(FileArgs.builder()
///                 .input("some-code-dir")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:Resolver
///     properties:
///       runtime:
///         name: APPSYNC_JS
///         runtimeVersion: 1.0.0
///       pipelineConfig:
///         functions:
///           - ${test.functionId}
///       type: Query
///       apiId: ${testAwsAppsyncGraphqlApi.id}
///       field: pipelineTest
///       kind: PIPELINE
///       code:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: some-code-dir
///           return: result
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.Resolver` using the `apiId`, a hyphen, `type`, a hypen and `field`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/resolver:Resolver example abcdef123456-exampleType-exampleField
/// ```
class Resolver extends pulumi.CustomResource {
  /// API ID for the GraphQL API.
  late final pulumi.Output<String> apiId;
  /// ARN
  late final pulumi.Output<String> arn;
  /// Caching Config. See Caching Config.
  late final pulumi.Output<ResolverCachingConfig?> cachingConfig;
  /// Function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  late final pulumi.Output<String?> code;
  /// Data source name.
  late final pulumi.Output<String?> dataSource;
  /// Field name from the schema defined in the GraphQL API.
  late final pulumi.Output<String> field;
  /// Resolver type. Valid values are `UNIT` and `PIPELINE`.
  late final pulumi.Output<String?> kind;
  /// Maximum batching size for a resolver. Valid values are between `0` and `2000`.
  late final pulumi.Output<int?> maxBatchSize;
  /// Caching configuration for the resolver. See Pipeline Config.
  late final pulumi.Output<ResolverPipelineConfig?> pipelineConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Request mapping template for UNIT resolver or 'before mapping template' for PIPELINE resolver. Required for non-Lambda resolvers.
  late final pulumi.Output<String?> requestTemplate;
  /// Response mapping template for UNIT resolver or 'after mapping template' for PIPELINE resolver. Required for non-Lambda resolvers.
  late final pulumi.Output<String?> responseTemplate;
  /// Runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See Runtime.
  late final pulumi.Output<ResolverRuntime?> runtime;
  /// Sync configuration for a resolver. See Sync Config.
  late final pulumi.Output<ResolverSyncConfig?> syncConfig;
  /// Type name from the schema defined in the GraphQL API.
  late final pulumi.Output<String> type;

  /// Creates a new [Resolver].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Resolver]. {@macro pulumi_appsync_resolver_resolver_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Resolver(
    String name, {
    ResolverArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/resolver:Resolver',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    apiId = registerOutput<String>('apiId');
    arn = registerOutput<String>('arn');
    cachingConfig = registerOutput<ResolverCachingConfig?>('cachingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverCachingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    code = registerOutput<String?>('code');
    dataSource = registerOutput<String?>('dataSource');
    field = registerOutput<String>('field');
    kind = registerOutput<String?>('kind');
    maxBatchSize = registerOutput<int?>('maxBatchSize');
    pipelineConfig = registerOutput<ResolverPipelineConfig?>('pipelineConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverPipelineConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    requestTemplate = registerOutput<String?>('requestTemplate');
    responseTemplate = registerOutput<String?>('responseTemplate');
    runtime = registerOutput<ResolverRuntime?>('runtime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverRuntime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    syncConfig = registerOutput<ResolverSyncConfig?>('syncConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverSyncConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Resolver] resource's state with the given [name] and [id].
  static Resolver get(
    String name,
    pulumi.Input<String> id, {
    ResolverState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Resolver._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Resolver._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/resolver:Resolver',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String>('apiId');
    arn = registerOutput<String>('arn');
    cachingConfig = registerOutput<ResolverCachingConfig?>('cachingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverCachingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    code = registerOutput<String?>('code');
    dataSource = registerOutput<String?>('dataSource');
    field = registerOutput<String>('field');
    kind = registerOutput<String?>('kind');
    maxBatchSize = registerOutput<int?>('maxBatchSize');
    pipelineConfig = registerOutput<ResolverPipelineConfig?>('pipelineConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverPipelineConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    requestTemplate = registerOutput<String?>('requestTemplate');
    responseTemplate = registerOutput<String?>('responseTemplate');
    runtime = registerOutput<ResolverRuntime?>('runtime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverRuntime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    syncConfig = registerOutput<ResolverSyncConfig?>('syncConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverSyncConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Resolver] resource.
  Resolver.reference(String urn)
    : super(
        'aws:appsync/resolver:Resolver',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiId = registerOutput<String>('apiId');
    arn = registerOutput<String>('arn');
    cachingConfig = registerOutput<ResolverCachingConfig?>('cachingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverCachingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    code = registerOutput<String?>('code');
    dataSource = registerOutput<String?>('dataSource');
    field = registerOutput<String>('field');
    kind = registerOutput<String?>('kind');
    maxBatchSize = registerOutput<int?>('maxBatchSize');
    pipelineConfig = registerOutput<ResolverPipelineConfig?>('pipelineConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverPipelineConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    requestTemplate = registerOutput<String?>('requestTemplate');
    responseTemplate = registerOutput<String?>('responseTemplate');
    runtime = registerOutput<ResolverRuntime?>('runtime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverRuntime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    syncConfig = registerOutput<ResolverSyncConfig?>('syncConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverSyncConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
