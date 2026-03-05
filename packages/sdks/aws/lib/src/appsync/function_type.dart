import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_args.dart';
import 'function_runtime.dart';
import 'function_state.dart';
import 'function_sync_config.dart';

/// Provides an AppSync Function.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.GraphQLApi("example", {
///     authenticationType: "API_KEY",
///     name: "example",
///     schema: `type Mutation {
///   putPost(id: ID!, title: String!): Post
/// }
///
/// type Post {
///   id: ID!
///   title: String!
/// }
///
/// type Query {
///   singlePost(id: ID!): Post
/// }
///
/// schema {
///   query: Query
///   mutation: Mutation
/// }
/// `,
/// });
/// const exampleDataSource = new aws.appsync.DataSource("example", {
///     apiId: example.id,
///     name: "example",
///     type: "HTTP",
///     httpConfig: {
///         endpoint: "http://example.com",
///     },
/// });
/// const exampleFunction = new aws.appsync.Function("example", {
///     apiId: example.id,
///     dataSource: exampleDataSource.name,
///     name: "example",
///     requestMappingTemplate: `{
///     \\"version\\": \\"2018-05-29\\",
///     \\"method\\": \\"GET\\",
///     \\"resourcePath\\": \\"/\\",
///     \\"params\\":{
///         \\"headers\\": utils.http.copyheaders(ctx.request.headers)
///     }
/// }
/// `,
///     responseMappingTemplate: `#if(ctx.result.statusCode == 200)
///     ctx.result.body
/// #else
///     utils.appendError(ctx.result.body, ctx.result.statusCode)
/// #end
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     authentication_type="API_KEY",
///     name="example",
///     schema="""type Mutation {
///   putPost(id: ID!, title: String!): Post
/// }
///
/// type Post {
///   id: ID!
///   title: String!
/// }
///
/// type Query {
///   singlePost(id: ID!): Post
/// }
///
/// schema {
///   query: Query
///   mutation: Mutation
/// }
/// """)
/// example_data_source = aws.appsync.DataSource("example",
///     api_id=example.id,
///     name="example",
///     type="HTTP",
///     http_config={
///         "endpoint": "http://example.com",
///     })
/// example_function = aws.appsync.Function("example",
///     api_id=example.id,
///     data_source=example_data_source.name,
///     name="example",
///     request_mapping_template="""{
///     \"version\": \"2018-05-29\",
///     \"method\": \"GET\",
///     \"resourcePath\": \"/\",
///     \"params\":{
///         \"headers\": $utils.http.copyheaders($ctx.request.headers)
///     }
/// }
/// """,
///     response_mapping_template="""#if($ctx.result.statusCode == 200)
///     $ctx.result.body
/// #else
///     $utils.appendError($ctx.result.body, $ctx.result.statusCode)
/// #end
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
///         AuthenticationType = "API_KEY",
///         Name = "example",
///         Schema = @"type Mutation {
///   putPost(id: ID!, title: String!): Post
/// }
///
/// type Post {
///   id: ID!
///   title: String!
/// }
///
/// type Query {
///   singlePost(id: ID!): Post
/// }
///
/// schema {
///   query: Query
///   mutation: Mutation
/// }
/// ",
///     });
///
///     var exampleDataSource = new Aws.AppSync.DataSource("example", new()
///     {
///         ApiId = example.Id,
///         Name = "example",
///         Type = "HTTP",
///         HttpConfig = new Aws.AppSync.Inputs.DataSourceHttpConfigArgs
///         {
///             Endpoint = "http://example.com",
///         },
///     });
///
///     var exampleFunction = new Aws.AppSync.Function("example", new()
///     {
///         ApiId = example.Id,
///         DataSource = exampleDataSource.Name,
///         Name = "example",
///         RequestMappingTemplate = @"{
///     \""version\"": \""2018-05-29\"",
///     \""method\"": \""GET\"",
///     \""resourcePath\"": \""/\"",
///     \""params\"":{
///         \""headers\"": $utils.http.copyheaders($ctx.request.headers)
///     }
/// }
/// ",
///         ResponseMappingTemplate = @"#if($ctx.result.statusCode == 200)
///     $ctx.result.body
/// #else
///     $utils.appendError($ctx.result.body, $ctx.result.statusCode)
/// #end
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
/// 		example, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AuthenticationType: pulumi.String("API_KEY"),
/// 			Name:               pulumi.String("example"),
/// 			Schema: pulumi.String(`type Mutation {
///   putPost(id: ID!, title: String!): Post
/// }
///
/// type Post {
///   id: ID!
///   title: String!
/// }
///
/// type Query {
///   singlePost(id: ID!): Post
/// }
///
/// schema {
///   query: Query
///   mutation: Mutation
/// }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDataSource, err := appsync.NewDataSource(ctx, "example", &appsync.DataSourceArgs{
/// 			ApiId: example.ID(),
/// 			Name:  pulumi.String("example"),
/// 			Type:  pulumi.String("HTTP"),
/// 			HttpConfig: &appsync.DataSourceHttpConfigArgs{
/// 				Endpoint: pulumi.String("http://example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appsync.NewFunction(ctx, "example", &appsync.FunctionArgs{
/// 			ApiId:      example.ID(),
/// 			DataSource: exampleDataSource.Name,
/// 			Name:       pulumi.String("example"),
/// 			RequestMappingTemplate: pulumi.String(`{
///     \"version\": \"2018-05-29\",
///     \"method\": \"GET\",
///     \"resourcePath\": \"/\",
///     \"params\":{
///         \"headers\": $utils.http.copyheaders($ctx.request.headers)
///     }
/// }
/// `),
/// 			ResponseMappingTemplate: pulumi.String(`#if($ctx.result.statusCode == 200)
///     $ctx.result.body
/// #else
///     $utils.appendError($ctx.result.body, $ctx.result.statusCode)
/// #end
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
/// import com.pulumi.aws.appsync.DataSource;
/// import com.pulumi.aws.appsync.DataSourceArgs;
/// import com.pulumi.aws.appsync.inputs.DataSourceHttpConfigArgs;
/// import com.pulumi.aws.appsync.Function;
/// import com.pulumi.aws.appsync.FunctionArgs;
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
///             .schema("""
/// type Mutation {
///   putPost(id: ID!, title: String!): Post
/// }
///
/// type Post {
///   id: ID!
///   title: String!
/// }
///
/// type Query {
///   singlePost(id: ID!): Post
/// }
///
/// schema {
///   query: Query
///   mutation: Mutation
/// }
///             """)
///             .build());
///
///         var exampleDataSource = new DataSource("exampleDataSource", DataSourceArgs.builder()
///             .apiId(example.id())
///             .name("example")
///             .type("HTTP")
///             .httpConfig(DataSourceHttpConfigArgs.builder()
///                 .endpoint("http://example.com")
///                 .build())
///             .build());
///
///         var exampleFunction = new Function("exampleFunction", FunctionArgs.builder()
///             .apiId(example.id())
///             .dataSource(exampleDataSource.name())
///             .name("example")
///             .requestMappingTemplate("""
/// {
///     \"version\": \"2018-05-29\",
///     \"method\": \"GET\",
///     \"resourcePath\": \"/\",
///     \"params\":{
///         \"headers\": $utils.http.copyheaders($ctx.request.headers)
///     }
/// }
///             """)
///             .responseMappingTemplate("""
/// #if($ctx.result.statusCode == 200)
///     $ctx.result.body
/// #else
///     $utils.appendError($ctx.result.body, $ctx.result.statusCode)
/// #end
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
///       authenticationType: API_KEY
///       name: example
///       schema: |
///         type Mutation {
///           putPost(id: ID!, title: String!): Post
///         }
///
///         type Post {
///           id: ID!
///           title: String!
///         }
///
///         type Query {
///           singlePost(id: ID!): Post
///         }
///
///         schema {
///           query: Query
///           mutation: Mutation
///         }
///   exampleDataSource:
///     type: aws:appsync:DataSource
///     name: example
///     properties:
///       apiId: ${example.id}
///       name: example
///       type: HTTP
///       httpConfig:
///         endpoint: http://example.com
///   exampleFunction:
///     type: aws:appsync:Function
///     name: example
///     properties:
///       apiId: ${example.id}
///       dataSource: ${exampleDataSource.name}
///       name: example
///       requestMappingTemplate: |
///         {
///             \"version\": \"2018-05-29\",
///             \"method\": \"GET\",
///             \"resourcePath\": \"/\",
///             \"params\":{
///                 \"headers\": $utils.http.copyheaders($ctx.request.headers)
///             }
///         }
///       responseMappingTemplate: |
///         #if($ctx.result.statusCode == 200)
///             $ctx.result.body
///         #else
///             $utils.appendError($ctx.result.body, $ctx.result.statusCode)
///         #end
/// ```
///
///
///
/// ### With Code
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.appsync.Function("example", {
///     apiId: exampleAwsAppsyncGraphqlApi.id,
///     dataSource: exampleAwsAppsyncDatasource.name,
///     name: "example",
///     code: std.file({
///         input: "some-code-dir",
///     }).then(invoke => invoke.result),
///     runtime: {
///         name: "APPSYNC_JS",
///         runtimeVersion: "1.0.0",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.appsync.Function("example",
///     api_id=example_aws_appsync_graphql_api["id"],
///     data_source=example_aws_appsync_datasource["name"],
///     name="example",
///     code=std.file(input="some-code-dir").result,
///     runtime={
///         "name": "APPSYNC_JS",
///         "runtime_version": "1.0.0",
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
///     var example = new Aws.AppSync.Function("example", new()
///     {
///         ApiId = exampleAwsAppsyncGraphqlApi.Id,
///         DataSource = exampleAwsAppsyncDatasource.Name,
///         Name = "example",
///         Code = Std.File.Invoke(new()
///         {
///             Input = "some-code-dir",
///         }).Apply(invoke => invoke.Result),
///         Runtime = new Aws.AppSync.Inputs.FunctionRuntimeArgs
///         {
///             Name = "APPSYNC_JS",
///             RuntimeVersion = "1.0.0",
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
/// 		_, err = appsync.NewFunction(ctx, "example", &appsync.FunctionArgs{
/// 			ApiId:      pulumi.Any(exampleAwsAppsyncGraphqlApi.Id),
/// 			DataSource: pulumi.Any(exampleAwsAppsyncDatasource.Name),
/// 			Name:       pulumi.String("example"),
/// 			Code:       pulumi.String(invokeFile.Result),
/// 			Runtime: &appsync.FunctionRuntimeArgs{
/// 				Name:           pulumi.String("APPSYNC_JS"),
/// 				RuntimeVersion: pulumi.String("1.0.0"),
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
/// import com.pulumi.aws.appsync.Function;
/// import com.pulumi.aws.appsync.FunctionArgs;
/// import com.pulumi.aws.appsync.inputs.FunctionRuntimeArgs;
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
///         var example = new Function("example", FunctionArgs.builder()
///             .apiId(exampleAwsAppsyncGraphqlApi.id())
///             .dataSource(exampleAwsAppsyncDatasource.name())
///             .name("example")
///             .code(StdFunctions.file(FileArgs.builder()
///                 .input("some-code-dir")
///                 .build()).result())
///             .runtime(FunctionRuntimeArgs.builder()
///                 .name("APPSYNC_JS")
///                 .runtimeVersion("1.0.0")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:Function
///     properties:
///       apiId: ${exampleAwsAppsyncGraphqlApi.id}
///       dataSource: ${exampleAwsAppsyncDatasource.name}
///       name: example
///       code:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: some-code-dir
///           return: result
///       runtime:
///         name: APPSYNC_JS
///         runtimeVersion: 1.0.0
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.Function` using the AppSync API ID and Function ID separated by `-`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/function:Function example xxxxx-yyyyy
/// ```
class FunctionType extends pulumi.CustomResource {
  /// ID of the associated AppSync API.
  late final pulumi.Output<String> apiId;
  /// ARN of the Function object.
  late final pulumi.Output<String> arn;
  /// The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  late final pulumi.Output<String?> code;
  /// Function data source name.
  late final pulumi.Output<String> dataSource;
  /// Function description.
  late final pulumi.Output<String?> description;
  /// Unique ID representing the Function object.
  late final pulumi.Output<String> functionId;
  /// Version of the request mapping template. Currently the supported value is `2018-05-29`. Does not apply when specifying `code`.
  late final pulumi.Output<String> functionVersion;
  /// Maximum batching size for a resolver. Valid values are between `0` and `2000`.
  late final pulumi.Output<int?> maxBatchSize;
  /// Function name. The function name does not have to be unique.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Function request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
  late final pulumi.Output<String?> requestMappingTemplate;
  /// Function response mapping template.
  late final pulumi.Output<String?> responseMappingTemplate;
  /// Describes a runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See `runtime` Block for details.
  late final pulumi.Output<FunctionRuntime?> runtime;
  /// Describes a Sync configuration for a resolver. See `sync_config` Block for details.
  late final pulumi.Output<FunctionSyncConfig?> syncConfig;

  /// Creates a new [FunctionType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionType]. {@macro pulumi_appsync_function_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionType(
    String name, {
    FunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/function:Function',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String>('apiId');
    arn = registerOutput<String>('arn');
    code = registerOutput<String?>('code');
    dataSource = registerOutput<String>('dataSource');
    description = registerOutput<String?>('description');
    functionId = registerOutput<String>('functionId');
    functionVersion = registerOutput<String>('functionVersion');
    maxBatchSize = registerOutput<int?>('maxBatchSize');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    requestMappingTemplate = registerOutput<String?>('requestMappingTemplate');
    responseMappingTemplate = registerOutput<String?>('responseMappingTemplate');
    runtime = registerOutput<FunctionRuntime?>('runtime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionRuntime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    syncConfig = registerOutput<FunctionSyncConfig?>('syncConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionSyncConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [FunctionType] resource's state with the given [name] and [id].
  static FunctionType get(
    String name,
    pulumi.Input<String> id, {
    FunctionState? state,
  }) {
    return FunctionType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/function:Function',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String>('apiId');
    arn = registerOutput<String>('arn');
    code = registerOutput<String?>('code');
    dataSource = registerOutput<String>('dataSource');
    description = registerOutput<String?>('description');
    functionId = registerOutput<String>('functionId');
    functionVersion = registerOutput<String>('functionVersion');
    maxBatchSize = registerOutput<int?>('maxBatchSize');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    requestMappingTemplate = registerOutput<String?>('requestMappingTemplate');
    responseMappingTemplate = registerOutput<String?>('responseMappingTemplate');
    runtime = registerOutput<FunctionRuntime?>('runtime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionRuntime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    syncConfig = registerOutput<FunctionSyncConfig?>('syncConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionSyncConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
