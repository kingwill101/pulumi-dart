import 'package:pulumi/pulumi.dart';
import '../table_capacity_specification/table_capacity_specification.dart';
import '../table_client_side_timestamps/table_client_side_timestamps.dart';
import '../table_comment/table_comment.dart';
import '../table_encryption_specification/table_encryption_specification.dart';
import '../table_point_in_time_recovery/table_point_in_time_recovery2.dart';
import '../table_schema_definition/table_schema_definition.dart';
import '../table_ttl/table_ttl2.dart';
import 'table_args2.dart';

/// Provides a Keyspaces Table.
///
/// More information about Keyspaces tables can be found in the [Keyspaces Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-tables.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.keyspaces.Table("example", {
/// keyspaceName: exampleAwsKeyspacesKeyspace.name,
/// tableName: "my_table",
/// schemaDefinition: {
/// columns: [{
/// name: "Message",
/// type: "ASCII",
/// }],
/// partitionKeys: [{
/// name: "Message",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.keyspaces.Table("example",
/// keyspace_name=example_aws_keyspaces_keyspace["name"],
/// table_name="my_table",
/// schema_definition={
/// "columns": [{
/// "name": "Message",
/// "type": "ASCII",
/// }],
/// "partition_keys": [{
/// "name": "Message",
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Keyspaces.Table("example", new()
/// {
/// KeyspaceName = exampleAwsKeyspacesKeyspace.Name,
/// TableName = "my_table",
/// SchemaDefinition = new Aws.Keyspaces.Inputs.TableSchemaDefinitionArgs
/// {
/// Columns = new[]
/// {
/// new Aws.Keyspaces.Inputs.TableSchemaDefinitionColumnArgs
/// {
/// Name = "Message",
/// Type = "ASCII",
/// },
/// },
/// PartitionKeys = new[]
/// {
/// new Aws.Keyspaces.Inputs.TableSchemaDefinitionPartitionKeyArgs
/// {
/// Name = "Message",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/keyspaces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := keyspaces.NewTable(ctx, "example", &keyspaces.TableArgs{
/// KeyspaceName: pulumi.Any(exampleAwsKeyspacesKeyspace.Name),
/// TableName:    pulumi.String("my_table"),
/// SchemaDefinition: &keyspaces.TableSchemaDefinitionArgs{
/// Columns: keyspaces.TableSchemaDefinitionColumnArray{
/// &keyspaces.TableSchemaDefinitionColumnArgs{
/// Name: pulumi.String("Message"),
/// Type: pulumi.String("ASCII"),
/// },
/// },
/// PartitionKeys: keyspaces.TableSchemaDefinitionPartitionKeyArray{
/// &keyspaces.TableSchemaDefinitionPartitionKeyArgs{
/// Name: pulumi.String("Message"),
/// },
/// },
/// },
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
/// import com.pulumi.aws.keyspaces.Table;
/// import com.pulumi.aws.keyspaces.TableArgs;
/// import com.pulumi.aws.keyspaces.inputs.TableSchemaDefinitionArgs;
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
/// var example = new Table("example", TableArgs.builder()
/// .keyspaceName(exampleAwsKeyspacesKeyspace.name())
/// .tableName("my_table")
/// .schemaDefinition(TableSchemaDefinitionArgs.builder()
/// .columns(TableSchemaDefinitionColumnArgs.builder()
/// .name("Message")
/// .type("ASCII")
/// .build())
/// .partitionKeys(TableSchemaDefinitionPartitionKeyArgs.builder()
/// .name("Message")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:keyspaces:Table
/// properties:
/// keyspaceName: ${exampleAwsKeyspacesKeyspace.name}
/// tableName: my_table
/// schemaDefinition:
/// columns:
/// - name: Message
/// type: ASCII
/// partitionKeys:
/// - name: Message
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a table using the <span pulumi-lang-nodejs="`keyspaceName`" pulumi-lang-dotnet="`KeyspaceName`" pulumi-lang-go="`keyspaceName`" pulumi-lang-python="`keyspace_name`" pulumi-lang-yaml="`keyspaceName`" pulumi-lang-java="`keyspaceName`">`keyspace_name`</span> and <span pulumi-lang-nodejs="`tableName`" pulumi-lang-dotnet="`TableName`" pulumi-lang-go="`tableName`" pulumi-lang-python="`table_name`" pulumi-lang-yaml="`tableName`" pulumi-lang-java="`tableName`">`table_name`</span> separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:keyspaces/table:Table example my_keyspace/my_table
/// ```
class Table2 extends CustomResource {
  /// The ARN of the table.
  late final Output<String> arn;

  /// Specifies the read/write throughput capacity mode for the table.
  late final Output<TableCapacitySpecification> capacitySpecification;

  /// Enables client-side timestamps for the table. By default, the setting is disabled.
  late final Output<TableClientSideTimestamps?> clientSideTimestamps;

  /// A description of the table.
  late final Output<TableComment> comment;

  /// The default Time to Live setting in seconds for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl).
  late final Output<int?> defaultTimeToLive;

  /// Specifies how the encryption key for encryption at rest is managed for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html).
  late final Output<TableEncryptionSpecification> encryptionSpecification;

  /// The name of the keyspace that the table is going to be created in.
  late final Output<String> keyspaceName;

  /// Specifies if point-in-time recovery is enabled or disabled for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html).
  late final Output<TablePointInTimeRecovery2> pointInTimeRecovery;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Describes the schema of the table.
  late final Output<TableSchemaDefinition> schemaDefinition;

  /// The name of the table.
  ///
  /// The following arguments are optional:
  late final Output<String> tableName;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Enables Time to Live custom settings for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html).
  late final Output<TableTtl2?> ttl;

  Table2(
    String name, {
    TableArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:keyspaces/table:Table',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capacitySpecification =
        registerOutput<TableCapacitySpecification>('capacitySpecification');
    this.clientSideTimestamps =
        registerOutput<TableClientSideTimestamps?>('clientSideTimestamps');
    this.comment = registerOutput<TableComment>('comment');
    this.defaultTimeToLive = registerOutput<int?>('defaultTimeToLive');
    this.encryptionSpecification =
        registerOutput<TableEncryptionSpecification>('encryptionSpecification');
    this.keyspaceName = registerOutput<String>('keyspaceName');
    this.pointInTimeRecovery =
        registerOutput<TablePointInTimeRecovery2>('pointInTimeRecovery');
    this.region = registerOutput<String>('region');
    this.schemaDefinition =
        registerOutput<TableSchemaDefinition>('schemaDefinition');
    this.tableName = registerOutput<String>('tableName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.ttl = registerOutput<TableTtl2?>('ttl');
  }
}
