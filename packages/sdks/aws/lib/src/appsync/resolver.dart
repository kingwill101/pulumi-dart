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
///     apiId: test.id,
///     name: "my_example",
///     type: "HTTP",
///     httpConfig: {
///         endpoint: "http://example.com",
///     },
/// });
/// // UNIT type resolver (default)
/// const testResolver = new aws.appsync.Resolver("test", {
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
///     cachingConfig: {
///         cachingKeys: [
///             "$context.identity.sub",
///             "$context.arguments.id",
///         ],
///         ttl: 60,
///     },
/// });
/// // PIPELINE type resolver
/// const mutationPipelineTest = new aws.appsync.Resolver("Mutation_pipelineTest", {
///     type: "Mutation",
///     apiId: test.id,
///     field: "pipelineTest",
///     requestTemplate: "{}",
///     responseTemplate: "$util.toJson($ctx.result)",
///     kind: "PIPELINE",
///     pipelineConfig: {
///         functions: [
///             test1.functionId,
///             test2.functionId,
///             test3.functionId,
///         ],
///     },
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
///     api_id=test.id,
///     name="my_example",
///     type="HTTP",
///     http_config={
///         "endpoint": "http://example.com",
///     })
/// # UNIT type resolver (default)
/// test_resolver = aws.appsync.Resolver("test",
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
/// """,
///     caching_config={
///         "caching_keys": [
///             "$context.identity.sub",
///             "$context.arguments.id",
///         ],
///         "ttl": 60,
///     })
/// # PIPELINE type resolver
/// mutation_pipeline_test = aws.appsync.Resolver("Mutation_pipelineTest",
///     type="Mutation",
///     api_id=test.id,
///     field="pipelineTest",
///     request_template="{}",
///     response_template="$util.toJson($ctx.result)",
///     kind="PIPELINE",
///     pipeline_config={
///         "functions": [
///             test1["functionId"],
///             test2["functionId"],
///             test3["functionId"],
///         ],
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
///         ApiId = test.Id,
///         Name = "my_example",
///         Type = "HTTP",
///         HttpConfig = new Aws.AppSync.Inputs.DataSourceHttpConfigArgs
///         {
///             Endpoint = "http://example.com",
///         },
///     });
///
///     // UNIT type resolver (default)
///     var testResolver = new Aws.AppSync.Resolver("test", new()
///     {
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
///         CachingConfig = new Aws.AppSync.Inputs.ResolverCachingConfigArgs
///         {
///             CachingKeys = new[]
///             {
///                 "$context.identity.sub",
///                 "$context.arguments.id",
///             },
///             Ttl = 60,
///         },
///     });
///
///     // PIPELINE type resolver
///     var mutationPipelineTest = new Aws.AppSync.Resolver("Mutation_pipelineTest", new()
///     {
///         Type = "Mutation",
///         ApiId = test.Id,
///         Field = "pipelineTest",
///         RequestTemplate = "{}",
///         ResponseTemplate = "$util.toJson($ctx.result)",
///         Kind = "PIPELINE",
///         PipelineConfig = new Aws.AppSync.Inputs.ResolverPipelineConfigArgs
///         {
///             Functions = new[]
///             {
///                 test1.FunctionId,
///                 test2.FunctionId,
///                 test3.FunctionId,
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
/// 			ApiId: test.ID(),
/// 			Name:  pulumi.String("my_example"),
/// 			Type:  pulumi.String("HTTP"),
/// 			HttpConfig: &appsync.DataSourceHttpConfigArgs{
/// 				Endpoint: pulumi.String("http://example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// UNIT type resolver (default)
/// 		_, err = appsync.NewResolver(ctx, "test", &appsync.ResolverArgs{
/// 			ApiId:      test.ID(),
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
/// 			CachingConfig: &appsync.ResolverCachingConfigArgs{
/// 				CachingKeys: pulumi.StringArray{
/// 					pulumi.String("$context.identity.sub"),
/// 					pulumi.String("$context.arguments.id"),
/// 				},
/// 				Ttl: pulumi.Int(60),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// PIPELINE type resolver
/// 		_, err = appsync.NewResolver(ctx, "Mutation_pipelineTest", &appsync.ResolverArgs{
/// 			Type:             pulumi.String("Mutation"),
/// 			ApiId:            test.ID(),
/// 			Field:            pulumi.String("pipelineTest"),
/// 			RequestTemplate:  pulumi.String("{}"),
/// 			ResponseTemplate: pulumi.String("$util.toJson($ctx.result)"),
/// 			Kind:             pulumi.String("PIPELINE"),
/// 			PipelineConfig: &appsync.ResolverPipelineConfigArgs{
/// 				Functions: pulumi.StringArray{
/// 					test1.FunctionId,
/// 					test2.FunctionId,
/// 					test3.FunctionId,
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
/// import com.pulumi.aws.appsync.DataSource;
/// import com.pulumi.aws.appsync.DataSourceArgs;
/// import com.pulumi.aws.appsync.inputs.DataSourceHttpConfigArgs;
/// import com.pulumi.aws.appsync.Resolver;
/// import com.pulumi.aws.appsync.ResolverArgs;
/// import com.pulumi.aws.appsync.inputs.ResolverCachingConfigArgs;
/// import com.pulumi.aws.appsync.inputs.ResolverPipelineConfigArgs;
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
///             .apiId(test.id())
///             .name("my_example")
///             .type("HTTP")
///             .httpConfig(DataSourceHttpConfigArgs.builder()
///                 .endpoint("http://example.com")
///                 .build())
///             .build());
///
///         // UNIT type resolver (default)
///         var testResolver = new Resolver("testResolver", ResolverArgs.builder()
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
///             .cachingConfig(ResolverCachingConfigArgs.builder()
///                 .cachingKeys(
///                     "$context.identity.sub",
///                     "$context.arguments.id")
///                 .ttl(60)
///                 .build())
///             .build());
///
///         // PIPELINE type resolver
///         var mutationPipelineTest = new Resolver("mutationPipelineTest", ResolverArgs.builder()
///             .type("Mutation")
///             .apiId(test.id())
///             .field("pipelineTest")
///             .requestTemplate("{}")
///             .responseTemplate("$util.toJson($ctx.result)")
///             .kind("PIPELINE")
///             .pipelineConfig(ResolverPipelineConfigArgs.builder()
///                 .functions(
///                     test1.functionId(),
///                     test2.functionId(),
///                     test3.functionId())
///                 .build())
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
///       apiId: ${test.id}
///       name: my_example
///       type: HTTP
///       httpConfig:
///         endpoint: http://example.com
///   # UNIT type resolver (default)
///   testResolver:
///     type: aws:appsync:Resolver
///     name: test
///     properties:
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
///       cachingConfig:
///         cachingKeys:
///           - $context.identity.sub
///           - $context.arguments.id
///         ttl: 60
///   # PIPELINE type resolver
///   mutationPipelineTest:
///     type: aws:appsync:Resolver
///     name: Mutation_pipelineTest
///     properties:
///       type: Mutation
///       apiId: ${test.id}
///       field: pipelineTest
///       requestTemplate: '{}'
///       responseTemplate: $util.toJson($ctx.result)
///       kind: PIPELINE
///       pipelineConfig:
///         functions:
///           - ${test1.functionId}
///           - ${test2.functionId}
///           - ${test3.functionId}
/// ```
///
///
///
/// ### JS
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.appsync.Resolver("example", {
///     type: "Query",
///     apiId: testAwsAppsyncGraphqlApi.id,
///     field: "pipelineTest",
///     kind: "PIPELINE",
///     code: std.file({
///         input: "some-code-dir",
///     }).then(invoke => invoke.result),
///     runtime: {
///         name: "APPSYNC_JS",
///         runtimeVersion: "1.0.0",
///     },
///     pipelineConfig: {
///         functions: [test.functionId],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.appsync.Resolver("example",
///     type="Query",
///     api_id=test_aws_appsync_graphql_api["id"],
///     field="pipelineTest",
///     kind="PIPELINE",
///     code=std.file(input="some-code-dir").result,
///     runtime={
///         "name": "APPSYNC_JS",
///         "runtime_version": "1.0.0",
///     },
///     pipeline_config={
///         "functions": [test["functionId"]],
///     })
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
///         Type = "Query",
///         ApiId = testAwsAppsyncGraphqlApi.Id,
///         Field = "pipelineTest",
///         Kind = "PIPELINE",
///         Code = Std.File.Invoke(new()
///         {
///             Input = "some-code-dir",
///         }).Apply(invoke => invoke.Result),
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
/// 			Type:  pulumi.String("Query"),
/// 			ApiId: pulumi.Any(testAwsAppsyncGraphqlApi.Id),
/// 			Field: pulumi.String("pipelineTest"),
/// 			Kind:  pulumi.String("PIPELINE"),
/// 			Code:  pulumi.String(invokeFile.Result),
/// 			Runtime: &appsync.ResolverRuntimeArgs{
/// 				Name:           pulumi.String("APPSYNC_JS"),
/// 				RuntimeVersion: pulumi.String("1.0.0"),
/// 			},
/// 			PipelineConfig: &appsync.ResolverPipelineConfigArgs{
/// 				Functions: pulumi.StringArray{
/// 					test.FunctionId,
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
/// import com.pulumi.aws.appsync.Resolver;
/// import com.pulumi.aws.appsync.ResolverArgs;
/// import com.pulumi.aws.appsync.inputs.ResolverRuntimeArgs;
/// import com.pulumi.aws.appsync.inputs.ResolverPipelineConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new Resolver("example", ResolverArgs.builder()
///             .type("Query")
///             .apiId(testAwsAppsyncGraphqlApi.id())
///             .field("pipelineTest")
///             .kind("PIPELINE")
///             .code(StdFunctions.file(FileArgs.builder()
///                 .input("some-code-dir")
///                 .build()).result())
///             .runtime(ResolverRuntimeArgs.builder()
///                 .name("APPSYNC_JS")
///                 .runtimeVersion("1.0.0")
///                 .build())
///             .pipelineConfig(ResolverPipelineConfigArgs.builder()
///                 .functions(test.functionId())
///                 .build())
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
///       runtime:
///         name: APPSYNC_JS
///         runtimeVersion: 1.0.0
///       pipelineConfig:
///         functions:
///           - ${test.functionId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.Resolver` using the `api_id`, a hyphen, `type`, a hypen and `field`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/resolver:Resolver example abcdef123456-exampleType-exampleField
/// ```
class Resolver extends pulumi.CustomResource {
  /// API ID for the GraphQL API.
  late final pulumi.Output<String> apiId;
  /// ARN
  late final pulumi.Output<String> arn;
  /// The Caching Config. See Caching Config.
  late final pulumi.Output<ResolverCachingConfig?> cachingConfig;
  /// The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  late final pulumi.Output<String?> code;
  /// Data source name.
  late final pulumi.Output<String?> dataSource;
  /// Field name from the schema defined in the GraphQL API.
  late final pulumi.Output<String> field;
  /// Resolver type. Valid values are `UNIT` and `PIPELINE`.
  late final pulumi.Output<String?> kind;
  /// Maximum batching size for a resolver. Valid values are between `0` and `2000`.
  late final pulumi.Output<int?> maxBatchSize;
  /// The caching configuration for the resolver. See Pipeline Config.
  late final pulumi.Output<ResolverPipelineConfig?> pipelineConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Request mapping template for UNIT resolver or 'before mapping template' for PIPELINE resolver. Required for non-Lambda resolvers.
  late final pulumi.Output<String?> requestTemplate;
  /// Response mapping template for UNIT resolver or 'after mapping template' for PIPELINE resolver. Required for non-Lambda resolvers.
  late final pulumi.Output<String?> responseTemplate;
  /// Describes a runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See Runtime.
  late final pulumi.Output<ResolverRuntime?> runtime;
  /// Describes a Sync configuration for a resolver. See Sync Config.
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

  /// Gets an existing [Resolver] resource's state with the given [name] and [id].
  static Resolver get(
    String name,
    pulumi.Input<String> id, {
    ResolverState? state,
  }) {
    return Resolver._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
}
