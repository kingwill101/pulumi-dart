import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';

/// A schema is a format that messages must follow,
/// creating a contract between publisher and subscriber that Pub/Sub will enforce.
///
///
/// To get more information about Schema, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.schemas)
/// * How-to Guides
/// * [Creating and managing schemas](https://cloud.google.com/pubsub/docs/schemas)
///
/// ## Example Usage
///
/// ### Pubsub Schema Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Schema("example", {
///     name: "example-schema",
///     type: "AVRO",
///     definition: `{
///   "type" : "record",
///   "name" : "Avro",
///   "fields" : [
///     {
///       "name" : "StringField",
///       "type" : "string"
///     },
///     {
///       "name" : "IntField",
///       "type" : "int"
///     }
///   ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Schema("example",
///     name="example-schema",
///     type="AVRO",
///     definition="""{
///   "type" : "record",
///   "name" : "Avro",
///   "fields" : [
///     {
///       "name" : "StringField",
///       "type" : "string"
///     },
///     {
///       "name" : "IntField",
///       "type" : "int"
///     }
///   ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Schema("example", new()
///     {
///         Name = "example-schema",
///         Type = "AVRO",
///         Definition = @"{
///   ""type"" : ""record"",
///   ""name"" : ""Avro"",
///   ""fields"" : [
///     {
///       ""name"" : ""StringField"",
///       ""type"" : ""string""
///     },
///     {
///       ""name"" : ""IntField"",
///       ""type"" : ""int""
///     }
///   ]
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewSchema(ctx, "example", &pubsub.SchemaArgs{
/// 			Name: pulumi.String("example-schema"),
/// 			Type: pulumi.String("AVRO"),
/// 			Definition: pulumi.String(`{
///   "type" : "record",
///   "name" : "Avro",
///   "fields" : [
///     {
///       "name" : "StringField",
///       "type" : "string"
///     },
///     {
///       "name" : "IntField",
///       "type" : "int"
///     }
///   ]
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
/// import com.pulumi.gcp.pubsub.Schema;
/// import com.pulumi.gcp.pubsub.SchemaArgs;
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
///         var example = new Schema("example", SchemaArgs.builder()
///             .name("example-schema")
///             .type("AVRO")
///             .definition("""
/// {
///   "type" : "record",
///   "name" : "Avro",
///   "fields" : [
///     {
///       "name" : "StringField",
///       "type" : "string"
///     },
///     {
///       "name" : "IntField",
///       "type" : "int"
///     }
///   ]
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
///     type: gcp:pubsub:Schema
///     properties:
///       name: example-schema
///       type: AVRO
///       definition: |
///         {
///           "type" : "record",
///           "name" : "Avro",
///           "fields" : [
///             {
///               "name" : "StringField",
///               "type" : "string"
///             },
///             {
///               "name" : "IntField",
///               "type" : "int"
///             }
///           ]
///         }
/// ```
///
/// ### Pubsub Schema Protobuf
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.pubsub.Schema("example", {
///     name: "example",
///     type: "PROTOCOL_BUFFER",
///     definition: `syntax = "proto3";
/// message Results {
/// string message_request = 1;
/// string message_response = 2;
/// string timestamp_request = 3;
/// string timestamp_response = 4;
/// }`,
/// });
/// const exampleTopic = new gcp.pubsub.Topic("example", {
///     name: "example-topic",
///     schemaSettings: {
///         schema: "projects/my-project-name/schemas/example",
///         encoding: "JSON",
///     },
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.pubsub.Schema("example",
///     name="example",
///     type="PROTOCOL_BUFFER",
///     definition="""syntax = "proto3";
/// message Results {
/// string message_request = 1;
/// string message_response = 2;
/// string timestamp_request = 3;
/// string timestamp_response = 4;
/// }""")
/// example_topic = gcp.pubsub.Topic("example",
///     name="example-topic",
///     schema_settings={
///         "schema": "projects/my-project-name/schemas/example",
///         "encoding": "JSON",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.PubSub.Schema("example", new()
///     {
///         Name = "example",
///         Type = "PROTOCOL_BUFFER",
///         Definition = @"syntax = ""proto3"";
/// message Results {
/// string message_request = 1;
/// string message_response = 2;
/// string timestamp_request = 3;
/// string timestamp_response = 4;
/// }",
///     });
///
///     var exampleTopic = new Gcp.PubSub.Topic("example", new()
///     {
///         Name = "example-topic",
///         SchemaSettings = new Gcp.PubSub.Inputs.TopicSchemaSettingsArgs
///         {
///             Schema = "projects/my-project-name/schemas/example",
///             Encoding = "JSON",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := pubsub.NewSchema(ctx, "example", &pubsub.SchemaArgs{
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("PROTOCOL_BUFFER"),
/// 			Definition: pulumi.String(`syntax = "proto3";
/// message Results {
/// string message_request = 1;
/// string message_response = 2;
/// string timestamp_request = 3;
/// string timestamp_response = 4;
/// }`),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewTopic(ctx, "example", &pubsub.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 			SchemaSettings: &pubsub.TopicSchemaSettingsArgs{
/// 				Schema:   pulumi.String("projects/my-project-name/schemas/example"),
/// 				Encoding: pulumi.String("JSON"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// import com.pulumi.gcp.pubsub.Schema;
/// import com.pulumi.gcp.pubsub.SchemaArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.inputs.TopicSchemaSettingsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Schema("example", SchemaArgs.builder()
///             .name("example")
///             .type("PROTOCOL_BUFFER")
///             .definition("""
/// syntax = "proto3";
/// message Results {
/// string message_request = 1;
/// string message_response = 2;
/// string timestamp_request = 3;
/// string timestamp_response = 4;
/// }            """)
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("example-topic")
///             .schemaSettings(TopicSchemaSettingsArgs.builder()
///                 .schema("projects/my-project-name/schemas/example")
///                 .encoding("JSON")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:pubsub:Schema
///     properties:
///       name: example
///       type: PROTOCOL_BUFFER
///       definition: |-
///         syntax = "proto3";
///         message Results {
///         string message_request = 1;
///         string message_response = 2;
///         string timestamp_request = 3;
///         string timestamp_response = 4;
///         }
///   exampleTopic:
///     type: gcp:pubsub:Topic
///     name: example
///     properties:
///       name: example-topic
///       schemaSettings:
///         schema: projects/my-project-name/schemas/example
///         encoding: JSON
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// Schema can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/schemas/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Schema can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/schema:Schema default projects/{{project}}/schemas/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/schema:Schema default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/schema:Schema default {{name}}
/// ```
class Schema extends pulumi.CustomResource {
  /// The definition of the schema.
  /// This should contain a string representing the full definition of the schema
  /// that is a valid schema definition of the type specified in type. Changes
  /// to the definition commit new [schema revisions](https://cloud.google.com/pubsub/docs/commit-schema-revision).
  /// A schema can only have up to 20 revisions, so updates that fail with an
  /// error indicating that the limit has been reached require manually
  /// [deleting old revisions](https://cloud.google.com/pubsub/docs/delete-schema-revision).
  late final pulumi.Output<String?> definition;

  /// The ID to use for the schema, which will become the final component of the schema's resource name.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The type of the schema definition
  /// Default value is `TYPE_UNSPECIFIED`.
  /// Possible values are: `TYPE_UNSPECIFIED`, `PROTOCOL_BUFFER`, `AVRO`.
  late final pulumi.Output<String?> type;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_pubsub_schema_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(String name, {SchemaArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:pubsub/schema:Schema',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.definition = registerOutput<String?>('definition');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.type = registerOutput<String?>('type');
  }
}
