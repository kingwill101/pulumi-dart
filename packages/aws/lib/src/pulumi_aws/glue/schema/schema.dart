import 'package:pulumi/pulumi.dart';
import 'schema_args.dart';

/// Provides a Glue Schema resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Schema("example", {
/// schemaName: "example",
/// registryArn: test.arn,
/// dataFormat: "AVRO",
/// compatibility: "NONE",
/// schemaDefinition: "{\"type\": \"record\", \"name\": \"r1\", \"fields\": [ {\"name\": \"f1\", \"type\": \"int\"}, {\"name\": \"f2\", \"type\": \"string\"} ]}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Schema("example",
/// schema_name="example",
/// registry_arn=test["arn"],
/// data_format="AVRO",
/// compatibility="NONE",
/// schema_definition="{\"type\": \"record\", \"name\": \"r1\", \"fields\": [ {\"name\": \"f1\", \"type\": \"int\"}, {\"name\": \"f2\", \"type\": \"string\"} ]}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Glue.Schema("example", new()
/// {
/// SchemaName = "example",
/// RegistryArn = test.Arn,
/// DataFormat = "AVRO",
/// Compatibility = "NONE",
/// SchemaDefinition = "{\"type\": \"record\", \"name\": \"r1\", \"fields\": [ {\"name\": \"f1\", \"type\": \"int\"}, {\"name\": \"f2\", \"type\": \"string\"} ]}",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewSchema(ctx, "example", &glue.SchemaArgs{
/// SchemaName:       pulumi.String("example"),
/// RegistryArn:      pulumi.Any(test.Arn),
/// DataFormat:       pulumi.String("AVRO"),
/// Compatibility:    pulumi.String("NONE"),
/// SchemaDefinition: pulumi.String("{\"type\": \"record\", \"name\": \"r1\", \"fields\": [ {\"name\": \"f1\", \"type\": \"int\"}, {\"name\": \"f2\", \"type\": \"string\"} ]}"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Schema("example", SchemaArgs.builder()
/// .schemaName("example")
/// .registryArn(test.arn())
/// .dataFormat("AVRO")
/// .compatibility("NONE")
/// .schemaDefinition("{\"type\": \"record\", \"name\": \"r1\", \"fields\": [ {\"name\": \"f1\", \"type\": \"int\"}, {\"name\": \"f2\", \"type\": \"string\"} ]}")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:Schema
/// properties:
/// schemaName: example
/// registryArn: ${test.arn}
/// dataFormat: AVRO
/// compatibility: NONE
/// schemaDefinition: '{"type": "record", "name": "r1", "fields": [ {"name": "f1", "type": "int"}, {"name": "f2", "type": "string"} ]}'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Glue schema.
///
///
/// Using `pulumi import`, import Glue Registries using <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:glue/schema:Schema example arn:aws:glue:us-west-2:123456789012:schema/example/example
/// ```
class Schema extends CustomResource {
  /// Amazon Resource Name (ARN) of the schema.
  late final Output<String> arn;

  /// The compatibility mode of the schema. Values values are: `NONE`, `DISABLED`, `BACKWARD`, `BACKWARD_ALL`, `FORWARD`, `FORWARD_ALL`, `FULL`, and `FULL_ALL`.
  late final Output<String> compatibility;

  /// The data format of the schema definition. Valid values are `AVRO`, `JSON` and `PROTOBUF`.
  late final Output<String> dataFormat;

  /// A description of the schema.
  late final Output<String?> description;

  /// The latest version of the schema associated with the returned schema definition.
  late final Output<int> latestSchemaVersion;

  /// The next version of the schema associated with the returned schema definition.
  late final Output<int> nextSchemaVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the Glue Registry to create the schema in.
  late final Output<String> registryArn;

  /// The name of the Glue Registry.
  late final Output<String> registryName;

  /// The version number of the checkpoint (the last time the compatibility mode was changed).
  late final Output<int> schemaCheckpoint;

  /// The schema definition using the <span pulumi-lang-nodejs="`dataFormat`" pulumi-lang-dotnet="`DataFormat`" pulumi-lang-go="`dataFormat`" pulumi-lang-python="`data_format`" pulumi-lang-yaml="`dataFormat`" pulumi-lang-java="`dataFormat`">`data_format`</span> setting for <span pulumi-lang-nodejs="`schemaName`" pulumi-lang-dotnet="`SchemaName`" pulumi-lang-go="`schemaName`" pulumi-lang-python="`schema_name`" pulumi-lang-yaml="`schemaName`" pulumi-lang-java="`schemaName`">`schema_name`</span>.
  late final Output<String> schemaDefinition;

  /// The Name of the schema.
  late final Output<String> schemaName;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Schema(
    String name, {
    SchemaArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/schema:Schema',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.compatibility = Output.createUnknown<String>();
    this.dataFormat = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.latestSchemaVersion = Output.createUnknown<int>();
    this.nextSchemaVersion = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.registryArn = Output.createUnknown<String>();
    this.registryName = Output.createUnknown<String>();
    this.schemaCheckpoint = Output.createUnknown<int>();
    this.schemaDefinition = Output.createUnknown<String>();
    this.schemaName = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
