import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_args.dart';
import 'table_magnetic_store_write_properties.dart';
import 'table_retention_properties.dart';
import 'table_schema.dart';
import 'table_state.dart';

/// Provides a Timestream table resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.timestreamwrite.Table("example", {
///     databaseName: exampleAwsTimestreamwriteDatabase.databaseName,
///     tableName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreamwrite.Table("example",
///     database_name=example_aws_timestreamwrite_database["databaseName"],
///     table_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.TimestreamWrite.Table("example", new()
///     {
///         DatabaseName = exampleAwsTimestreamwriteDatabase.DatabaseName,
///         TableName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamwrite"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := timestreamwrite.NewTable(ctx, "example", &timestreamwrite.TableArgs{
/// 			DatabaseName: pulumi.Any(exampleAwsTimestreamwriteDatabase.DatabaseName),
/// 			TableName:    pulumi.String("example"),
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
/// resource "aws_timestreamwrite_table" "example" {
///   database_name = exampleAwsTimestreamwriteDatabase.databaseName
///   table_name    = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.timestreamwrite.Table;
/// import com.pulumi.aws.timestreamwrite.TableArgs;
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
///         var example = new Table("example", TableArgs.builder()
///             .databaseName(exampleAwsTimestreamwriteDatabase.databaseName())
///             .tableName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:timestreamwrite:Table
///     properties:
///       databaseName: ${exampleAwsTimestreamwriteDatabase.databaseName}
///       tableName: example
/// ```
///
///
/// ### Full usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.timestreamwrite.Table("example", {
///     retentionProperties: {
///         magneticStoreRetentionPeriodInDays: 30,
///         memoryStoreRetentionPeriodInHours: 8,
///     },
///     databaseName: exampleAwsTimestreamwriteDatabase.databaseName,
///     tableName: "example",
///     tags: {
///         Name: "example-timestream-table",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreamwrite.Table("example",
///     retention_properties={
///         "magnetic_store_retention_period_in_days": 30,
///         "memory_store_retention_period_in_hours": 8,
///     },
///     database_name=example_aws_timestreamwrite_database["databaseName"],
///     table_name="example",
///     tags={
///         "Name": "example-timestream-table",
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
///     var example = new Aws.TimestreamWrite.Table("example", new()
///     {
///         RetentionProperties = new Aws.TimestreamWrite.Inputs.TableRetentionPropertiesArgs
///         {
///             MagneticStoreRetentionPeriodInDays = 30,
///             MemoryStoreRetentionPeriodInHours = 8,
///         },
///         DatabaseName = exampleAwsTimestreamwriteDatabase.DatabaseName,
///         TableName = "example",
///         Tags =
///         {
///             { "Name", "example-timestream-table" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamwrite"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := timestreamwrite.NewTable(ctx, "example", &timestreamwrite.TableArgs{
/// 			RetentionProperties: &timestreamwrite.TableRetentionPropertiesArgs{
/// 				MagneticStoreRetentionPeriodInDays: pulumi.Int(30),
/// 				MemoryStoreRetentionPeriodInHours:  pulumi.Int(8),
/// 			},
/// 			DatabaseName: pulumi.Any(exampleAwsTimestreamwriteDatabase.DatabaseName),
/// 			TableName:    pulumi.String("example"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-timestream-table"),
/// 			},
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
/// resource "aws_timestreamwrite_table" "example" {
///   retention_properties = {
///     magnetic_store_retention_period_in_days = 30
///     memory_store_retention_period_in_hours  = 8
///   }
///   database_name = exampleAwsTimestreamwriteDatabase.databaseName
///   table_name    = "example"
///   tags = {
///     "Name" = "example-timestream-table"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.timestreamwrite.Table;
/// import com.pulumi.aws.timestreamwrite.TableArgs;
/// import com.pulumi.aws.timestreamwrite.inputs.TableRetentionPropertiesArgs;
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
///         var example = new Table("example", TableArgs.builder()
///             .retentionProperties(TableRetentionPropertiesArgs.builder()
///                 .magneticStoreRetentionPeriodInDays(30)
///                 .memoryStoreRetentionPeriodInHours(8)
///                 .build())
///             .databaseName(exampleAwsTimestreamwriteDatabase.databaseName())
///             .tableName("example")
///             .tags(Map.of("Name", "example-timestream-table"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:timestreamwrite:Table
///     properties:
///       retentionProperties:
///         magneticStoreRetentionPeriodInDays: 30
///         memoryStoreRetentionPeriodInHours: 8
///       databaseName: ${exampleAwsTimestreamwriteDatabase.databaseName}
///       tableName: example
///       tags:
///         Name: example-timestream-table
/// ```
///
///
/// ### Customer-defined Partition Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.timestreamwrite.Table("example", {
///     schema: {
///         compositePartitionKey: {
///             enforcementInRecord: "REQUIRED",
///             name: "attr1",
///             type: "DIMENSION",
///         },
///     },
///     databaseName: exampleAwsTimestreamwriteDatabase.databaseName,
///     tableName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreamwrite.Table("example",
///     schema={
///         "composite_partition_key": {
///             "enforcement_in_record": "REQUIRED",
///             "name": "attr1",
///             "type": "DIMENSION",
///         },
///     },
///     database_name=example_aws_timestreamwrite_database["databaseName"],
///     table_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.TimestreamWrite.Table("example", new()
///     {
///         Schema = new Aws.TimestreamWrite.Inputs.TableSchemaArgs
///         {
///             CompositePartitionKey = new Aws.TimestreamWrite.Inputs.TableSchemaCompositePartitionKeyArgs
///             {
///                 EnforcementInRecord = "REQUIRED",
///                 Name = "attr1",
///                 Type = "DIMENSION",
///             },
///         },
///         DatabaseName = exampleAwsTimestreamwriteDatabase.DatabaseName,
///         TableName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamwrite"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := timestreamwrite.NewTable(ctx, "example", &timestreamwrite.TableArgs{
/// 			Schema: &timestreamwrite.TableSchemaArgs{
/// 				CompositePartitionKey: &timestreamwrite.TableSchemaCompositePartitionKeyArgs{
/// 					EnforcementInRecord: pulumi.String("REQUIRED"),
/// 					Name:                pulumi.String("attr1"),
/// 					Type:                pulumi.String("DIMENSION"),
/// 				},
/// 			},
/// 			DatabaseName: pulumi.Any(exampleAwsTimestreamwriteDatabase.DatabaseName),
/// 			TableName:    pulumi.String("example"),
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
/// resource "aws_timestreamwrite_table" "example" {
///   schema = {
///     composite_partition_key = {
///       enforcement_in_record = "REQUIRED"
///       name                  = "attr1"
///       type                  = "DIMENSION"
///     }
///   }
///   database_name = exampleAwsTimestreamwriteDatabase.databaseName
///   table_name    = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.timestreamwrite.Table;
/// import com.pulumi.aws.timestreamwrite.TableArgs;
/// import com.pulumi.aws.timestreamwrite.inputs.TableSchemaArgs;
/// import com.pulumi.aws.timestreamwrite.inputs.TableSchemaCompositePartitionKeyArgs;
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
///         var example = new Table("example", TableArgs.builder()
///             .schema(TableSchemaArgs.builder()
///                 .compositePartitionKey(TableSchemaCompositePartitionKeyArgs.builder()
///                     .enforcementInRecord("REQUIRED")
///                     .name("attr1")
///                     .type("DIMENSION")
///                     .build())
///                 .build())
///             .databaseName(exampleAwsTimestreamwriteDatabase.databaseName())
///             .tableName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:timestreamwrite:Table
///     properties:
///       schema:
///         compositePartitionKey:
///           enforcementInRecord: REQUIRED
///           name: attr1
///           type: DIMENSION
///       databaseName: ${exampleAwsTimestreamwriteDatabase.databaseName}
///       tableName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Timestream tables using the `tableName` and `databaseName` separate by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:timestreamwrite/table:Table example ExampleTable:ExampleDatabase
/// ```
class Table extends pulumi.CustomResource {
  /// The ARN that uniquely identifies this table.
  late final pulumi.Output<String> arn;
  /// The name of the Timestream database.
  late final pulumi.Output<String> databaseName;
  /// Contains properties to set on the table when enabling magnetic store writes. See Magnetic Store Write Properties below for more details.
  late final pulumi.Output<TableMagneticStoreWriteProperties> magneticStoreWriteProperties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, `magneticStoreRetentionPeriodInDays` default to 73000 and `memoryStoreRetentionPeriodInHours` defaults to 6.
  late final pulumi.Output<TableRetentionProperties> retentionProperties;
  /// The schema of the table. See Schema below for more details.
  late final pulumi.Output<TableSchema> schema;
  /// The name of the Timestream table.
  late final pulumi.Output<String> tableName;
  /// Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_timestreamwrite_table_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(
    String name, {
    TableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:timestreamwrite/table:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    databaseName = registerOutput<String>('databaseName');
    magneticStoreWriteProperties = registerOutput<TableMagneticStoreWriteProperties>('magneticStoreWriteProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableMagneticStoreWriteProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    retentionProperties = registerOutput<TableRetentionProperties>('retentionProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableRetentionProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schema = registerOutput<TableSchema>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableName = registerOutput<String>('tableName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Table] resource's state with the given [name] and [id].
  static Table get(
    String name,
    pulumi.Input<String> id, {
    TableState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Table._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Table._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:timestreamwrite/table:Table',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    databaseName = registerOutput<String>('databaseName');
    magneticStoreWriteProperties = registerOutput<TableMagneticStoreWriteProperties>('magneticStoreWriteProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableMagneticStoreWriteProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    retentionProperties = registerOutput<TableRetentionProperties>('retentionProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableRetentionProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schema = registerOutput<TableSchema>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableName = registerOutput<String>('tableName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Table] resource.
  Table.reference(String urn)
    : super(
        'aws:timestreamwrite/table:Table',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    databaseName = registerOutput<String>('databaseName');
    magneticStoreWriteProperties = registerOutput<TableMagneticStoreWriteProperties>('magneticStoreWriteProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableMagneticStoreWriteProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    retentionProperties = registerOutput<TableRetentionProperties>('retentionProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableRetentionProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schema = registerOutput<TableSchema>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableName = registerOutput<String>('tableName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
