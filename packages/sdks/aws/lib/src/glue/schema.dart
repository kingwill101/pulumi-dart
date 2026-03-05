import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';
import 'schema_state.dart';

/// Provides a Glue Schema resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Schema("example", {
///     schemaName: "example",
///     registryArn: test.arn,
///     dataFormat: "AVRO",
///     compatibility: "NONE",
///     schemaDefinition: "{\"type\": \"record\", \"name\": \"r1\", \"fields\": [ {\"name\": \"f1\", \"type\": \"int\"}, {\"name\": \"f2\", \"type\": \"string\"} ]}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Schema("example",
///     schema_name="example",
///     registry_arn=test["arn"],
///     data_format="AVRO",
///     compatibility="NONE",
///     schema_definition="{\"type\": \"record\", \"name\": \"r1\", \"fields\": [ {\"name\": \"f1\", \"type\": \"int\"}, {\"name\": \"f2\", \"type\": \"string\"} ]}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Schema("example", new()
///     {
///         SchemaName = "example",
///         RegistryArn = test.Arn,
///         DataFormat = "AVRO",
///         Compatibility = "NONE",
///         SchemaDefinition = "{\"type\": \"record\", \"name\": \"r1\", \"fields\": [ {\"name\": \"f1\", \"type\": \"int\"}, {\"name\": \"f2\", \"type\": \"string\"} ]}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewSchema(ctx, "example", &glue.SchemaArgs{
/// 			SchemaName:       pulumi.String("example"),
/// 			RegistryArn:      pulumi.Any(test.Arn),
/// 			DataFormat:       pulumi.String("AVRO"),
/// 			Compatibility:    pulumi.String("NONE"),
/// 			SchemaDefinition: pulumi.String("{\"type\": \"record\", \"name\": \"r1\", \"fields\": [ {\"name\": \"f1\", \"type\": \"int\"}, {\"name\": \"f2\", \"type\": \"string\"} ]}"),
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
/// import com.pulumi.aws.glue.Schema;
/// import com.pulumi.aws.glue.SchemaArgs;
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
///             .schemaName("example")
///             .registryArn(test.arn())
///             .dataFormat("AVRO")
///             .compatibility("NONE")
///             .schemaDefinition("{\"type\": \"record\", \"name\": \"r1\", \"fields\": [ {\"name\": \"f1\", \"type\": \"int\"}, {\"name\": \"f2\", \"type\": \"string\"} ]}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Schema
///     properties:
///       schemaName: example
///       registryArn: ${test.arn}
///       dataFormat: AVRO
///       compatibility: NONE
///       schemaDefinition: '{"type": "record", "name": "r1", "fields": [ {"name": "f1", "type": "int"}, {"name": "f2", "type": "string"} ]}'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Glue schema.
///
///
/// Using `pulumi import`, import Glue Registries using `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/schema:Schema example arn:aws:glue:us-west-2:123456789012:schema/example/example
/// ```
class Schema extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the schema.
  late final pulumi.Output<String> arn;
  /// The compatibility mode of the schema. Values values are: `NONE`, `DISABLED`, `BACKWARD`, `BACKWARD_ALL`, `FORWARD`, `FORWARD_ALL`, `FULL`, and `FULL_ALL`.
  late final pulumi.Output<String> compatibility;
  /// The data format of the schema definition. Valid values are `AVRO`, `JSON` and `PROTOBUF`.
  late final pulumi.Output<String> dataFormat;
  /// A description of the schema.
  late final pulumi.Output<String?> description;
  /// The latest version of the schema associated with the returned schema definition.
  late final pulumi.Output<int> latestSchemaVersion;
  /// The next version of the schema associated with the returned schema definition.
  late final pulumi.Output<int> nextSchemaVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the Glue Registry to create the schema in.
  late final pulumi.Output<String> registryArn;
  /// The name of the Glue Registry.
  late final pulumi.Output<String> registryName;
  /// The version number of the checkpoint (the last time the compatibility mode was changed).
  late final pulumi.Output<int> schemaCheckpoint;
  /// The schema definition using the `data_format` setting for `schema_name`.
  late final pulumi.Output<String> schemaDefinition;
  /// The Name of the schema.
  late final pulumi.Output<String> schemaName;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_glue_schema_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(
    String name, {
    SchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/schema:Schema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    compatibility = registerOutput<String>('compatibility');
    dataFormat = registerOutput<String>('dataFormat');
    description = registerOutput<String?>('description');
    latestSchemaVersion = registerOutput<int>('latestSchemaVersion');
    nextSchemaVersion = registerOutput<int>('nextSchemaVersion');
    region = registerOutput<String>('region');
    registryArn = registerOutput<String>('registryArn');
    registryName = registerOutput<String>('registryName');
    schemaCheckpoint = registerOutput<int>('schemaCheckpoint');
    schemaDefinition = registerOutput<String>('schemaDefinition');
    schemaName = registerOutput<String>('schemaName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Schema] resource's state with the given [name] and [id].
  static Schema get(
    String name,
    pulumi.Input<String> id, {
    SchemaState? state,
  }) {
    return Schema._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Schema._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/schema:Schema',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    compatibility = registerOutput<String>('compatibility');
    dataFormat = registerOutput<String>('dataFormat');
    description = registerOutput<String?>('description');
    latestSchemaVersion = registerOutput<int>('latestSchemaVersion');
    nextSchemaVersion = registerOutput<int>('nextSchemaVersion');
    region = registerOutput<String>('region');
    registryArn = registerOutput<String>('registryArn');
    registryName = registerOutput<String>('registryName');
    schemaCheckpoint = registerOutput<int>('schemaCheckpoint');
    schemaDefinition = registerOutput<String>('schemaDefinition');
    schemaName = registerOutput<String>('schemaName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
