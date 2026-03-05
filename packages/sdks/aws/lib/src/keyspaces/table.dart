import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_args.dart';
import 'table_capacity_specification.dart';
import 'table_client_side_timestamps.dart';
import 'table_comment.dart';
import 'table_encryption_specification.dart';
import 'table_point_in_time_recovery.dart';
import 'table_schema_definition.dart';
import 'table_state.dart';
import 'table_ttl.dart';

/// Provides a Keyspaces Table.
///
/// More information about Keyspaces tables can be found in the [Keyspaces Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-tables.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.keyspaces.Table("example", {
///     keyspaceName: exampleAwsKeyspacesKeyspace.name,
///     tableName: "my_table",
///     schemaDefinition: {
///         columns: [{
///             name: "Message",
///             type: "ASCII",
///         }],
///         partitionKeys: [{
///             name: "Message",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.keyspaces.Table("example",
///     keyspace_name=example_aws_keyspaces_keyspace["name"],
///     table_name="my_table",
///     schema_definition={
///         "columns": [{
///             "name": "Message",
///             "type": "ASCII",
///         }],
///         "partition_keys": [{
///             "name": "Message",
///         }],
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
///     var example = new Aws.Keyspaces.Table("example", new()
///     {
///         KeyspaceName = exampleAwsKeyspacesKeyspace.Name,
///         TableName = "my_table",
///         SchemaDefinition = new Aws.Keyspaces.Inputs.TableSchemaDefinitionArgs
///         {
///             Columns = new[]
///             {
///                 new Aws.Keyspaces.Inputs.TableSchemaDefinitionColumnArgs
///                 {
///                     Name = "Message",
///                     Type = "ASCII",
///                 },
///             },
///             PartitionKeys = new[]
///             {
///                 new Aws.Keyspaces.Inputs.TableSchemaDefinitionPartitionKeyArgs
///                 {
///                     Name = "Message",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/keyspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keyspaces.NewTable(ctx, "example", &keyspaces.TableArgs{
/// 			KeyspaceName: pulumi.Any(exampleAwsKeyspacesKeyspace.Name),
/// 			TableName:    pulumi.String("my_table"),
/// 			SchemaDefinition: &keyspaces.TableSchemaDefinitionArgs{
/// 				Columns: keyspaces.TableSchemaDefinitionColumnArray{
/// 					&keyspaces.TableSchemaDefinitionColumnArgs{
/// 						Name: pulumi.String("Message"),
/// 						Type: pulumi.String("ASCII"),
/// 					},
/// 				},
/// 				PartitionKeys: keyspaces.TableSchemaDefinitionPartitionKeyArray{
/// 					&keyspaces.TableSchemaDefinitionPartitionKeyArgs{
/// 						Name: pulumi.String("Message"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Table("example", TableArgs.builder()
///             .keyspaceName(exampleAwsKeyspacesKeyspace.name())
///             .tableName("my_table")
///             .schemaDefinition(TableSchemaDefinitionArgs.builder()
///                 .columns(TableSchemaDefinitionColumnArgs.builder()
///                     .name("Message")
///                     .type("ASCII")
///                     .build())
///                 .partitionKeys(TableSchemaDefinitionPartitionKeyArgs.builder()
///                     .name("Message")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:keyspaces:Table
///     properties:
///       keyspaceName: ${exampleAwsKeyspacesKeyspace.name}
///       tableName: my_table
///       schemaDefinition:
///         columns:
///           - name: Message
///             type: ASCII
///         partitionKeys:
///           - name: Message
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a table using the `keyspace_name` and `table_name` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:keyspaces/table:Table example my_keyspace/my_table
/// ```
class Table extends pulumi.CustomResource {
  /// The ARN of the table.
  late final pulumi.Output<String> arn;

  /// Specifies the read/write throughput capacity mode for the table.
  late final pulumi.Output<TableCapacitySpecification> capacitySpecification;

  /// Enables client-side timestamps for the table. By default, the setting is disabled.
  late final pulumi.Output<TableClientSideTimestamps?> clientSideTimestamps;

  /// A description of the table.
  late final pulumi.Output<TableComment> comment;

  /// The default Time to Live setting in seconds for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl).
  late final pulumi.Output<int?> defaultTimeToLive;

  /// Specifies how the encryption key for encryption at rest is managed for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html).
  late final pulumi.Output<TableEncryptionSpecification>
  encryptionSpecification;

  /// The name of the keyspace that the table is going to be created in.
  late final pulumi.Output<String> keyspaceName;

  /// Specifies if point-in-time recovery is enabled or disabled for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html).
  late final pulumi.Output<TablePointInTimeRecovery> pointInTimeRecovery;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Describes the schema of the table.
  late final pulumi.Output<TableSchemaDefinition> schemaDefinition;

  /// The name of the table.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> tableName;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Enables Time to Live custom settings for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html).
  late final pulumi.Output<TableTtl?> ttl;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_keyspaces_table_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(String name, {TableArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:keyspaces/table:Table',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    capacitySpecification = registerOutput<TableCapacitySpecification>(
      'capacitySpecification',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableCapacitySpecification.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    clientSideTimestamps = registerOutput<TableClientSideTimestamps?>(
      'clientSideTimestamps',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableClientSideTimestamps.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    comment = registerOutput<TableComment>(
      'comment',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableComment.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    defaultTimeToLive = registerOutput<int?>('defaultTimeToLive');
    encryptionSpecification = registerOutput<TableEncryptionSpecification>(
      'encryptionSpecification',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableEncryptionSpecification.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyspaceName = registerOutput<String>('keyspaceName');
    pointInTimeRecovery = registerOutput<TablePointInTimeRecovery>(
      'pointInTimeRecovery',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TablePointInTimeRecovery.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    schemaDefinition = registerOutput<TableSchemaDefinition>(
      'schemaDefinition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableSchemaDefinition.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tableName = registerOutput<String>('tableName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    ttl = registerOutput<TableTtl?>(
      'ttl',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableTtl.fromMap((guardedValue as Map).cast<String, dynamic>());
      },
    );
  }

  /// Gets an existing [Table] resource's state with the given [name] and [id].
  static Table get(String name, pulumi.Input<String> id, {TableState? state}) {
    return Table._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Table._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:keyspaces/table:Table',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    capacitySpecification = registerOutput<TableCapacitySpecification>(
      'capacitySpecification',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableCapacitySpecification.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    clientSideTimestamps = registerOutput<TableClientSideTimestamps?>(
      'clientSideTimestamps',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableClientSideTimestamps.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    comment = registerOutput<TableComment>(
      'comment',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableComment.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    defaultTimeToLive = registerOutput<int?>('defaultTimeToLive');
    encryptionSpecification = registerOutput<TableEncryptionSpecification>(
      'encryptionSpecification',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableEncryptionSpecification.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyspaceName = registerOutput<String>('keyspaceName');
    pointInTimeRecovery = registerOutput<TablePointInTimeRecovery>(
      'pointInTimeRecovery',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TablePointInTimeRecovery.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    schemaDefinition = registerOutput<TableSchemaDefinition>(
      'schemaDefinition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableSchemaDefinition.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tableName = registerOutput<String>('tableName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    ttl = registerOutput<TableTtl?>(
      'ttl',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableTtl.fromMap((guardedValue as Map).cast<String, dynamic>());
      },
    );
  }
}
