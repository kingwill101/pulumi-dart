import 'package:pulumi/pulumi.dart' as pulumi;
import 'type_args.dart';

/// Provides an AppSync Type.
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
/// });
/// const exampleType = new aws.appsync.Type("example", {
///     apiId: example.id,
///     format: "SDL",
///     definition: `type Mutation
///
/// {
/// putPost(id: ID!,title: String! ): Post
///
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     authentication_type="API_KEY",
///     name="example")
/// example_type = aws.appsync.Type("example",
///     api_id=example.id,
///     format="SDL",
///     definition="""type Mutation
///
/// {
/// putPost(id: ID!,title: String! ): Post
///
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
///         AuthenticationType = "API_KEY",
///         Name = "example",
///     });
///
///     var exampleType = new Aws.AppSync.Type("example", new()
///     {
///         ApiId = example.Id,
///         Format = "SDL",
///         Definition = @"type Mutation
///
/// {
/// putPost(id: ID!,title: String! ): Post
///
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
/// 		example, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AuthenticationType: pulumi.String("API_KEY"),
/// 			Name:               pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appsync.NewType(ctx, "example", &appsync.TypeArgs{
/// 			ApiId:  example.ID(),
/// 			Format: pulumi.String("SDL"),
/// 			Definition: pulumi.String(`type Mutation
///
/// {
/// putPost(id: ID!,title: String! ): Post
///
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
/// import com.pulumi.aws.appsync.Type;
/// import com.pulumi.aws.appsync.TypeArgs;
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
///         var exampleType = new Type("exampleType", TypeArgs.builder()
///             .apiId(example.id())
///             .format("SDL")
///             .definition("""
/// type Mutation
///
/// {
/// putPost(id: ID!,title: String! ): Post
///
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
///       authenticationType: API_KEY
///       name: example
///   exampleType:
///     type: aws:appsync:Type
///     name: example
///     properties:
///       apiId: ${example.id}
///       format: SDL
///       definition: |
///         type Mutation
///
///         {
///         putPost(id: ID!,title: String! ): Post
///
///         }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Appsync Types using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/type:Type example api-id:format:name
/// ```
class Type extends pulumi.CustomResource {
  /// GraphQL API ID.
  late final pulumi.Output<String> apiId;

  /// The ARN of the type.
  late final pulumi.Output<String> arn;

  /// The type definition.
  late final pulumi.Output<String> definition;

  /// The type description.
  late final pulumi.Output<String> description;

  /// The type format: `SDL` or `JSON`.
  late final pulumi.Output<String> format;

  /// The type name.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Type].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Type]. {@macro pulumi_appsync_type_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Type(
    String name, {
    TypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/type:Type',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.arn = registerOutput<String>('arn');
    this.definition = registerOutput<String>('definition');
    this.description = registerOutput<String>('description');
    this.format = registerOutput<String>('format');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
