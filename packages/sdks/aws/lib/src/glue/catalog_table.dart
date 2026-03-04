import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_args.dart';
import 'catalog_table_open_table_format_input.dart';
import 'catalog_table_state.dart';
import 'catalog_table_storage_descriptor.dart';
import 'catalog_table_target_table.dart';

/// Provides a Glue Catalog Table Resource. You can refer to the [Glue Developer Guide](http://docs.aws.amazon.com/glue/latest/dg/populate-data-catalog.html) for a full explanation of the Glue Data Catalog functionality.
///
/// ## Example Usage
///
/// ### Basic Table
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const awsGlueCatalogTable = new aws.glue.CatalogTable("aws_glue_catalog_table", {
///     name: "MyCatalogTable",
///     databaseName: "MyCatalogDatabase",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// aws_glue_catalog_table = aws.glue.CatalogTable("aws_glue_catalog_table",
///     name="MyCatalogTable",
///     database_name="MyCatalogDatabase")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var awsGlueCatalogTable = new Aws.Glue.CatalogTable("aws_glue_catalog_table", new()
///     {
///         Name = "MyCatalogTable",
///         DatabaseName = "MyCatalogDatabase",
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
/// 		_, err := glue.NewCatalogTable(ctx, "aws_glue_catalog_table", &glue.CatalogTableArgs{
/// 			Name:         pulumi.String("MyCatalogTable"),
/// 			DatabaseName: pulumi.String("MyCatalogDatabase"),
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
/// import com.pulumi.aws.glue.CatalogTable;
/// import com.pulumi.aws.glue.CatalogTableArgs;
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
///         var awsGlueCatalogTable = new CatalogTable("awsGlueCatalogTable", CatalogTableArgs.builder()
///             .name("MyCatalogTable")
///             .databaseName("MyCatalogDatabase")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   awsGlueCatalogTable:
///     type: aws:glue:CatalogTable
///     name: aws_glue_catalog_table
///     properties:
///       name: MyCatalogTable
///       databaseName: MyCatalogDatabase
/// ```
///
///
/// ### Parquet Table for Athena
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const awsGlueCatalogTable = new aws.glue.CatalogTable("aws_glue_catalog_table", {
///     name: "MyCatalogTable",
///     databaseName: "MyCatalogDatabase",
///     tableType: "EXTERNAL_TABLE",
///     parameters: {
///         EXTERNAL: "TRUE",
///         "parquet.compression": "SNAPPY",
///     },
///     storageDescriptor: {
///         location: "s3://my-bucket/event-streams/my-stream",
///         inputFormat: "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat",
///         outputFormat: "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat",
///         serDeInfo: {
///             name: "my-stream",
///             serializationLibrary: "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe",
///             parameters: {
///                 "serialization.format": "1",
///             },
///         },
///         columns: [
///             {
///                 name: "my_string",
///                 type: "string",
///             },
///             {
///                 name: "my_double",
///                 type: "double",
///             },
///             {
///                 name: "my_date",
///                 type: "date",
///                 comment: "",
///             },
///             {
///                 name: "my_bigint",
///                 type: "bigint",
///                 comment: "",
///             },
///             {
///                 name: "my_struct",
///                 type: "struct<my_nested_string:string>",
///                 comment: "",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// aws_glue_catalog_table = aws.glue.CatalogTable("aws_glue_catalog_table",
///     name="MyCatalogTable",
///     database_name="MyCatalogDatabase",
///     table_type="EXTERNAL_TABLE",
///     parameters={
///         "EXTERNAL": "TRUE",
///         "parquet.compression": "SNAPPY",
///     },
///     storage_descriptor={
///         "location": "s3://my-bucket/event-streams/my-stream",
///         "input_format": "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat",
///         "output_format": "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat",
///         "ser_de_info": {
///             "name": "my-stream",
///             "serialization_library": "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe",
///             "parameters": {
///                 "serialization.format": "1",
///             },
///         },
///         "columns": [
///             {
///                 "name": "my_string",
///                 "type": "string",
///             },
///             {
///                 "name": "my_double",
///                 "type": "double",
///             },
///             {
///                 "name": "my_date",
///                 "type": "date",
///                 "comment": "",
///             },
///             {
///                 "name": "my_bigint",
///                 "type": "bigint",
///                 "comment": "",
///             },
///             {
///                 "name": "my_struct",
///                 "type": "struct<my_nested_string:string>",
///                 "comment": "",
///             },
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
///     var awsGlueCatalogTable = new Aws.Glue.CatalogTable("aws_glue_catalog_table", new()
///     {
///         Name = "MyCatalogTable",
///         DatabaseName = "MyCatalogDatabase",
///         TableType = "EXTERNAL_TABLE",
///         Parameters =
///         {
///             { "EXTERNAL", "TRUE" },
///             { "parquet.compression", "SNAPPY" },
///         },
///         StorageDescriptor = new Aws.Glue.Inputs.CatalogTableStorageDescriptorArgs
///         {
///             Location = "s3://my-bucket/event-streams/my-stream",
///             InputFormat = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat",
///             OutputFormat = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat",
///             SerDeInfo = new Aws.Glue.Inputs.CatalogTableStorageDescriptorSerDeInfoArgs
///             {
///                 Name = "my-stream",
///                 SerializationLibrary = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe",
///                 Parameters =
///                 {
///                     { "serialization.format", "1" },
///                 },
///             },
///             Columns = new[]
///             {
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorColumnArgs
///                 {
///                     Name = "my_string",
///                     Type = "string",
///                 },
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorColumnArgs
///                 {
///                     Name = "my_double",
///                     Type = "double",
///                 },
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorColumnArgs
///                 {
///                     Name = "my_date",
///                     Type = "date",
///                     Comment = "",
///                 },
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorColumnArgs
///                 {
///                     Name = "my_bigint",
///                     Type = "bigint",
///                     Comment = "",
///                 },
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorColumnArgs
///                 {
///                     Name = "my_struct",
///                     Type = "struct<my_nested_string:string>",
///                     Comment = "",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewCatalogTable(ctx, "aws_glue_catalog_table", &glue.CatalogTableArgs{
/// 			Name:         pulumi.String("MyCatalogTable"),
/// 			DatabaseName: pulumi.String("MyCatalogDatabase"),
/// 			TableType:    pulumi.String("EXTERNAL_TABLE"),
/// 			Parameters: pulumi.StringMap{
/// 				"EXTERNAL":            pulumi.String("TRUE"),
/// 				"parquet.compression": pulumi.String("SNAPPY"),
/// 			},
/// 			StorageDescriptor: &glue.CatalogTableStorageDescriptorArgs{
/// 				Location:     pulumi.String("s3://my-bucket/event-streams/my-stream"),
/// 				InputFormat:  pulumi.String("org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"),
/// 				OutputFormat: pulumi.String("org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"),
/// 				SerDeInfo: &glue.CatalogTableStorageDescriptorSerDeInfoArgs{
/// 					Name:                 pulumi.String("my-stream"),
/// 					SerializationLibrary: pulumi.String("org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"),
/// 					Parameters: pulumi.StringMap{
/// 						"serialization.format": pulumi.String("1"),
/// 					},
/// 				},
/// 				Columns: glue.CatalogTableStorageDescriptorColumnArray{
/// 					&glue.CatalogTableStorageDescriptorColumnArgs{
/// 						Name: pulumi.String("my_string"),
/// 						Type: pulumi.String("string"),
/// 					},
/// 					&glue.CatalogTableStorageDescriptorColumnArgs{
/// 						Name: pulumi.String("my_double"),
/// 						Type: pulumi.String("double"),
/// 					},
/// 					&glue.CatalogTableStorageDescriptorColumnArgs{
/// 						Name:    pulumi.String("my_date"),
/// 						Type:    pulumi.String("date"),
/// 						Comment: pulumi.String(""),
/// 					},
/// 					&glue.CatalogTableStorageDescriptorColumnArgs{
/// 						Name:    pulumi.String("my_bigint"),
/// 						Type:    pulumi.String("bigint"),
/// 						Comment: pulumi.String(""),
/// 					},
/// 					&glue.CatalogTableStorageDescriptorColumnArgs{
/// 						Name:    pulumi.String("my_struct"),
/// 						Type:    pulumi.String("struct<my_nested_string:string>"),
/// 						Comment: pulumi.String(""),
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
/// import com.pulumi.aws.glue.CatalogTable;
/// import com.pulumi.aws.glue.CatalogTableArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorSerDeInfoArgs;
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
///         var awsGlueCatalogTable = new CatalogTable("awsGlueCatalogTable", CatalogTableArgs.builder()
///             .name("MyCatalogTable")
///             .databaseName("MyCatalogDatabase")
///             .tableType("EXTERNAL_TABLE")
///             .parameters(Map.ofEntries(
///                 Map.entry("EXTERNAL", "TRUE"),
///                 Map.entry("parquet.compression", "SNAPPY")
///             ))
///             .storageDescriptor(CatalogTableStorageDescriptorArgs.builder()
///                 .location("s3://my-bucket/event-streams/my-stream")
///                 .inputFormat("org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat")
///                 .outputFormat("org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat")
///                 .serDeInfo(CatalogTableStorageDescriptorSerDeInfoArgs.builder()
///                     .name("my-stream")
///                     .serializationLibrary("org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe")
///                     .parameters(Map.of("serialization.format", "1"))
///                     .build())
///                 .columns(
///                     CatalogTableStorageDescriptorColumnArgs.builder()
///                         .name("my_string")
///                         .type("string")
///                         .build(),
///                     CatalogTableStorageDescriptorColumnArgs.builder()
///                         .name("my_double")
///                         .type("double")
///                         .build(),
///                     CatalogTableStorageDescriptorColumnArgs.builder()
///                         .name("my_date")
///                         .type("date")
///                         .comment("")
///                         .build(),
///                     CatalogTableStorageDescriptorColumnArgs.builder()
///                         .name("my_bigint")
///                         .type("bigint")
///                         .comment("")
///                         .build(),
///                     CatalogTableStorageDescriptorColumnArgs.builder()
///                         .name("my_struct")
///                         .type("struct<my_nested_string:string>")
///                         .comment("")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   awsGlueCatalogTable:
///     type: aws:glue:CatalogTable
///     name: aws_glue_catalog_table
///     properties:
///       name: MyCatalogTable
///       databaseName: MyCatalogDatabase
///       tableType: EXTERNAL_TABLE
///       parameters:
///         EXTERNAL: TRUE
///         parquet.compression: SNAPPY
///       storageDescriptor:
///         location: s3://my-bucket/event-streams/my-stream
///         inputFormat: org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat
///         outputFormat: org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat
///         serDeInfo:
///           name: my-stream
///           serializationLibrary: org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe
///           parameters:
///             serialization.format: 1
///         columns:
///           - name: my_string
///             type: string
///           - name: my_double
///             type: double
///           - name: my_date
///             type: date
///             comment: ""
///           - name: my_bigint
///             type: bigint
///             comment: ""
///           - name: my_struct
///             type: struct<my_nested_string:string>
///             comment: ""
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Tables using the catalog ID (usually AWS account ID), database name, and table name. For example:
///
/// ```sh
/// $ pulumi import aws:glue/catalogTable:CatalogTable MyTable 123456789012:MyDatabase:MyTable
/// ```
class CatalogTable extends pulumi.CustomResource {
  /// The ARN of the Glue Table.
  late final pulumi.Output<String> arn;

  /// ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  late final pulumi.Output<String> catalogId;

  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> databaseName;

  /// Description of the table.
  late final pulumi.Output<String?> description;

  /// Name of the table. For Hive compatibility, this must be entirely lowercase.
  late final pulumi.Output<String> name;

  /// Configuration block for open table formats. See `open_table_format_input` below.
  late final pulumi.Output<CatalogTableOpenTableFormatInput?>
  openTableFormatInput;

  /// Owner of the table.
  late final pulumi.Output<String?> owner;

  /// Properties associated with this table, as a list of key-value pairs.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// Configuration block for a maximum of 3 partition indexes. See `partition_index` below.
  late final pulumi.Output<List<Map<String, dynamic>>> partitionIndices;

  /// Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See `partition_keys` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> partitionKeys;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Retention time for this table.
  late final pulumi.Output<int?> retention;

  /// Configuration block for information about the physical storage of this table. For more information, refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor). See `storage_descriptor` below.
  late final pulumi.Output<CatalogTableStorageDescriptor?> storageDescriptor;

  /// Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as `ALTER TABLE` and `SHOW CREATE TABLE` will fail if this argument is empty.
  late final pulumi.Output<String?> tableType;

  /// Configuration block of a target table for resource linking. See `target_table` below.
  late final pulumi.Output<CatalogTableTargetTable?> targetTable;

  /// If the table is a view, the expanded text of the view; otherwise null.
  late final pulumi.Output<String?> viewExpandedText;

  /// If the table is a view, the original text of the view; otherwise null.
  late final pulumi.Output<String?> viewOriginalText;

  /// Creates a new [CatalogTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CatalogTable]. {@macro pulumi_glue_catalog_table_catalog_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CatalogTable(
    String name, {
    CatalogTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/catalogTable:CatalogTable',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    catalogId = registerOutput<String>('catalogId');
    databaseName = registerOutput<String>('databaseName');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    openTableFormatInput = registerOutput<CatalogTableOpenTableFormatInput?>(
      'openTableFormatInput',
    );
    owner = registerOutput<String?>('owner');
    parameters = registerOutput<Map<String, String>?>('parameters');
    partitionIndices = registerOutput<List<Map<String, dynamic>>>(
      'partitionIndices',
    );
    partitionKeys = registerOutput<List<Map<String, dynamic>>?>(
      'partitionKeys',
    );
    region = registerOutput<String>('region');
    retention = registerOutput<int?>('retention');
    storageDescriptor = registerOutput<CatalogTableStorageDescriptor?>(
      'storageDescriptor',
    );
    tableType = registerOutput<String?>('tableType');
    targetTable = registerOutput<CatalogTableTargetTable?>('targetTable');
    viewExpandedText = registerOutput<String?>('viewExpandedText');
    viewOriginalText = registerOutput<String?>('viewOriginalText');
  }

  /// Gets an existing [CatalogTable] resource's state with the given [name] and [id].
  static CatalogTable get(
    String name,
    pulumi.Input<String> id, {
    CatalogTableState? state,
  }) {
    return CatalogTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CatalogTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/catalogTable:CatalogTable',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    catalogId = registerOutput<String>('catalogId');
    databaseName = registerOutput<String>('databaseName');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    openTableFormatInput = registerOutput<CatalogTableOpenTableFormatInput?>(
      'openTableFormatInput',
    );
    owner = registerOutput<String?>('owner');
    parameters = registerOutput<Map<String, String>?>('parameters');
    partitionIndices = registerOutput<List<Map<String, dynamic>>>(
      'partitionIndices',
    );
    partitionKeys = registerOutput<List<Map<String, dynamic>>?>(
      'partitionKeys',
    );
    region = registerOutput<String>('region');
    retention = registerOutput<int?>('retention');
    storageDescriptor = registerOutput<CatalogTableStorageDescriptor?>(
      'storageDescriptor',
    );
    tableType = registerOutput<String?>('tableType');
    targetTable = registerOutput<CatalogTableTargetTable?>('targetTable');
    viewExpandedText = registerOutput<String?>('viewExpandedText');
    viewOriginalText = registerOutput<String?>('viewOriginalText');
  }
}
