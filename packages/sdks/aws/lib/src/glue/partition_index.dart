import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_index_args.dart';
import 'partition_index_partition_index.dart';
import 'partition_index_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogDatabase("example", {name: "example"});
/// const exampleCatalogTable = new aws.glue.CatalogTable("example", {
///     storageDescriptor: {
///         serDeInfo: {
///             name: "ser_de_name",
///             parameters: {
///                 param1: "param_val_1",
///             },
///             serializationLibrary: "org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe",
///         },
///         skewedInfo: {
///             skewedColumnNames: ["my_column_1"],
///             skewedColumnValueLocationMaps: {
///                 my_column_1: "my_column_1_val_loc_map",
///             },
///             skewedColumnValues: ["skewed_val_1"],
///         },
///         columns: [
///             {
///                 name: "my_column_1",
///                 type: "int",
///                 comment: "my_column1_comment",
///             },
///             {
///                 name: "my_column_2",
///                 type: "string",
///                 comment: "my_column2_comment",
///             },
///         ],
///         sortColumns: [{
///             column: "my_column_1",
///             sortOrder: 1,
///         }],
///         bucketColumns: ["bucket_column_1"],
///         compressed: false,
///         inputFormat: "SequenceFileInputFormat",
///         location: "my_location",
///         numberOfBuckets: 1,
///         outputFormat: "SequenceFileInputFormat",
///         storedAsSubDirectories: false,
///         parameters: {
///             param1: "param1_val",
///         },
///     },
///     partitionKeys: [
///         {
///             name: "my_column_1",
///             type: "int",
///             comment: "my_column_1_comment",
///         },
///         {
///             name: "my_column_2",
///             type: "string",
///             comment: "my_column_2_comment",
///         },
///     ],
///     name: "example",
///     databaseName: example.name,
///     owner: "my_owner",
///     retention: 1,
///     tableType: "VIRTUAL_VIEW",
///     viewExpandedText: "view_expanded_text_1",
///     viewOriginalText: "view_original_text_1",
///     parameters: {
///         param1: "param1_val",
///     },
/// });
/// const examplePartitionIndex = new aws.glue.PartitionIndex("example", {
///     partitionIndex: {
///         indexName: "example",
///         keys: [
///             "my_column_1",
///             "my_column_2",
///         ],
///     },
///     databaseName: example.name,
///     tableName: exampleCatalogTable.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogDatabase("example", name="example")
/// example_catalog_table = aws.glue.CatalogTable("example",
///     storage_descriptor={
///         "ser_de_info": {
///             "name": "ser_de_name",
///             "parameters": {
///                 "param1": "param_val_1",
///             },
///             "serialization_library": "org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe",
///         },
///         "skewed_info": {
///             "skewed_column_names": ["my_column_1"],
///             "skewed_column_value_location_maps": {
///                 "my_column_1": "my_column_1_val_loc_map",
///             },
///             "skewed_column_values": ["skewed_val_1"],
///         },
///         "columns": [
///             {
///                 "name": "my_column_1",
///                 "type": "int",
///                 "comment": "my_column1_comment",
///             },
///             {
///                 "name": "my_column_2",
///                 "type": "string",
///                 "comment": "my_column2_comment",
///             },
///         ],
///         "sort_columns": [{
///             "column": "my_column_1",
///             "sort_order": 1,
///         }],
///         "bucket_columns": ["bucket_column_1"],
///         "compressed": False,
///         "input_format": "SequenceFileInputFormat",
///         "location": "my_location",
///         "number_of_buckets": 1,
///         "output_format": "SequenceFileInputFormat",
///         "stored_as_sub_directories": False,
///         "parameters": {
///             "param1": "param1_val",
///         },
///     },
///     partition_keys=[
///         {
///             "name": "my_column_1",
///             "type": "int",
///             "comment": "my_column_1_comment",
///         },
///         {
///             "name": "my_column_2",
///             "type": "string",
///             "comment": "my_column_2_comment",
///         },
///     ],
///     name="example",
///     database_name=example.name,
///     owner="my_owner",
///     retention=1,
///     table_type="VIRTUAL_VIEW",
///     view_expanded_text="view_expanded_text_1",
///     view_original_text="view_original_text_1",
///     parameters={
///         "param1": "param1_val",
///     })
/// example_partition_index = aws.glue.PartitionIndex("example",
///     partition_index={
///         "index_name": "example",
///         "keys": [
///             "my_column_1",
///             "my_column_2",
///         ],
///     },
///     database_name=example.name,
///     table_name=example_catalog_table.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.CatalogDatabase("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleCatalogTable = new Aws.Glue.CatalogTable("example", new()
///     {
///         StorageDescriptor = new Aws.Glue.Inputs.CatalogTableStorageDescriptorArgs
///         {
///             SerDeInfo = new Aws.Glue.Inputs.CatalogTableStorageDescriptorSerDeInfoArgs
///             {
///                 Name = "ser_de_name",
///                 Parameters =
///                 {
///                     { "param1", "param_val_1" },
///                 },
///                 SerializationLibrary = "org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe",
///             },
///             SkewedInfo = new Aws.Glue.Inputs.CatalogTableStorageDescriptorSkewedInfoArgs
///             {
///                 SkewedColumnNames = new[]
///                 {
///                     "my_column_1",
///                 },
///                 SkewedColumnValueLocationMaps =
///                 {
///                     { "my_column_1", "my_column_1_val_loc_map" },
///                 },
///                 SkewedColumnValues = new[]
///                 {
///                     "skewed_val_1",
///                 },
///             },
///             Columns = new[]
///             {
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorColumnArgs
///                 {
///                     Name = "my_column_1",
///                     Type = "int",
///                     Comment = "my_column1_comment",
///                 },
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorColumnArgs
///                 {
///                     Name = "my_column_2",
///                     Type = "string",
///                     Comment = "my_column2_comment",
///                 },
///             },
///             SortColumns = new[]
///             {
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorSortColumnArgs
///                 {
///                     Column = "my_column_1",
///                     SortOrder = 1,
///                 },
///             },
///             BucketColumns = new[]
///             {
///                 "bucket_column_1",
///             },
///             Compressed = false,
///             InputFormat = "SequenceFileInputFormat",
///             Location = "my_location",
///             NumberOfBuckets = 1,
///             OutputFormat = "SequenceFileInputFormat",
///             StoredAsSubDirectories = false,
///             Parameters =
///             {
///                 { "param1", "param1_val" },
///             },
///         },
///         PartitionKeys = new[]
///         {
///             new Aws.Glue.Inputs.CatalogTablePartitionKeyArgs
///             {
///                 Name = "my_column_1",
///                 Type = "int",
///                 Comment = "my_column_1_comment",
///             },
///             new Aws.Glue.Inputs.CatalogTablePartitionKeyArgs
///             {
///                 Name = "my_column_2",
///                 Type = "string",
///                 Comment = "my_column_2_comment",
///             },
///         },
///         Name = "example",
///         DatabaseName = example.Name,
///         Owner = "my_owner",
///         Retention = 1,
///         TableType = "VIRTUAL_VIEW",
///         ViewExpandedText = "view_expanded_text_1",
///         ViewOriginalText = "view_original_text_1",
///         Parameters =
///         {
///             { "param1", "param1_val" },
///         },
///     });
///
///     var examplePartitionIndex = new Aws.Glue.PartitionIndex("example", new()
///     {
///         PartitionIndexConfig = new Aws.Glue.Inputs.PartitionIndexPartitionIndexArgs
///         {
///             IndexName = "example",
///             Keys = new[]
///             {
///                 "my_column_1",
///                 "my_column_2",
///             },
///         },
///         DatabaseName = example.Name,
///         TableName = exampleCatalogTable.Name,
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
/// 		example, err := glue.NewCatalogDatabase(ctx, "example", &glue.CatalogDatabaseArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCatalogTable, err := glue.NewCatalogTable(ctx, "example", &glue.CatalogTableArgs{
/// 			StorageDescriptor: &glue.CatalogTableStorageDescriptorArgs{
/// 				SerDeInfo: &glue.CatalogTableStorageDescriptorSerDeInfoArgs{
/// 					Name: pulumi.String("ser_de_name"),
/// 					Parameters: pulumi.StringMap{
/// 						"param1": pulumi.String("param_val_1"),
/// 					},
/// 					SerializationLibrary: pulumi.String("org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe"),
/// 				},
/// 				SkewedInfo: &glue.CatalogTableStorageDescriptorSkewedInfoArgs{
/// 					SkewedColumnNames: pulumi.StringArray{
/// 						pulumi.String("my_column_1"),
/// 					},
/// 					SkewedColumnValueLocationMaps: pulumi.StringMap{
/// 						"my_column_1": pulumi.String("my_column_1_val_loc_map"),
/// 					},
/// 					SkewedColumnValues: pulumi.StringArray{
/// 						pulumi.String("skewed_val_1"),
/// 					},
/// 				},
/// 				Columns: glue.CatalogTableStorageDescriptorColumnArray{
/// 					&glue.CatalogTableStorageDescriptorColumnArgs{
/// 						Name:    pulumi.String("my_column_1"),
/// 						Type:    pulumi.String("int"),
/// 						Comment: pulumi.String("my_column1_comment"),
/// 					},
/// 					&glue.CatalogTableStorageDescriptorColumnArgs{
/// 						Name:    pulumi.String("my_column_2"),
/// 						Type:    pulumi.String("string"),
/// 						Comment: pulumi.String("my_column2_comment"),
/// 					},
/// 				},
/// 				SortColumns: glue.CatalogTableStorageDescriptorSortColumnArray{
/// 					&glue.CatalogTableStorageDescriptorSortColumnArgs{
/// 						Column:    pulumi.String("my_column_1"),
/// 						SortOrder: pulumi.Int(1),
/// 					},
/// 				},
/// 				BucketColumns: pulumi.StringArray{
/// 					pulumi.String("bucket_column_1"),
/// 				},
/// 				Compressed:             pulumi.Bool(false),
/// 				InputFormat:            pulumi.String("SequenceFileInputFormat"),
/// 				Location:               pulumi.String("my_location"),
/// 				NumberOfBuckets:        pulumi.Int(1),
/// 				OutputFormat:           pulumi.String("SequenceFileInputFormat"),
/// 				StoredAsSubDirectories: pulumi.Bool(false),
/// 				Parameters: pulumi.StringMap{
/// 					"param1": pulumi.String("param1_val"),
/// 				},
/// 			},
/// 			PartitionKeys: glue.CatalogTablePartitionKeyArray{
/// 				&glue.CatalogTablePartitionKeyArgs{
/// 					Name:    pulumi.String("my_column_1"),
/// 					Type:    pulumi.String("int"),
/// 					Comment: pulumi.String("my_column_1_comment"),
/// 				},
/// 				&glue.CatalogTablePartitionKeyArgs{
/// 					Name:    pulumi.String("my_column_2"),
/// 					Type:    pulumi.String("string"),
/// 					Comment: pulumi.String("my_column_2_comment"),
/// 				},
/// 			},
/// 			Name:             pulumi.String("example"),
/// 			DatabaseName:     example.Name,
/// 			Owner:            pulumi.String("my_owner"),
/// 			Retention:        pulumi.Int(1),
/// 			TableType:        pulumi.String("VIRTUAL_VIEW"),
/// 			ViewExpandedText: pulumi.String("view_expanded_text_1"),
/// 			ViewOriginalText: pulumi.String("view_original_text_1"),
/// 			Parameters: pulumi.StringMap{
/// 				"param1": pulumi.String("param1_val"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewPartitionIndex(ctx, "example", &glue.PartitionIndexArgs{
/// 			PartitionIndex: &glue.PartitionIndexPartitionIndexArgs{
/// 				IndexName: pulumi.String("example"),
/// 				Keys: pulumi.StringArray{
/// 					pulumi.String("my_column_1"),
/// 					pulumi.String("my_column_2"),
/// 				},
/// 			},
/// 			DatabaseName: example.Name,
/// 			TableName:    exampleCatalogTable.Name,
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
/// resource "aws_glue_catalogdatabase" "example" {
///   name = "example"
/// }
/// resource "aws_glue_catalogtable" "example" {
///   storage_descriptor = {
///     ser_de_info = {
///       name = "ser_de_name"
///       parameters = {
///         "param1" = "param_val_1"
///       }
///       serialization_library = "org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe"
///     }
///     skewed_info = {
///       skewed_column_names = ["my_column_1"]
///       skewed_column_value_location_maps = {
///         "my_column_1" = "my_column_1_val_loc_map"
///       }
///       skewed_column_values = ["skewed_val_1"]
///     }
///     columns = [{
///       "name"    = "my_column_1"
///       "type"    = "int"
///       "comment" = "my_column1_comment"
///       }, {
///       "name"    = "my_column_2"
///       "type"    = "string"
///       "comment" = "my_column2_comment"
///     }]
///     sort_columns = [{
///       "column"    = "my_column_1"
///       "sortOrder" = 1
///     }]
///     bucket_columns            = ["bucket_column_1"]
///     compressed                = false
///     input_format              = "SequenceFileInputFormat"
///     location                  = "my_location"
///     number_of_buckets         = 1
///     output_format             = "SequenceFileInputFormat"
///     stored_as_sub_directories = false
///     parameters = {
///       "param1" = "param1_val"
///     }
///   }
///   partition_keys {
///     name    = "my_column_1"
///     type    = "int"
///     comment = "my_column_1_comment"
///   }
///   partition_keys {
///     name    = "my_column_2"
///     type    = "string"
///     comment = "my_column_2_comment"
///   }
///   name               = "example"
///   database_name      = aws_glue_catalogdatabase.example.name
///   owner              = "my_owner"
///   retention          = 1
///   table_type         = "VIRTUAL_VIEW"
///   view_expanded_text = "view_expanded_text_1"
///   view_original_text = "view_original_text_1"
///   parameters = {
///     "param1" = "param1_val"
///   }
/// }
/// resource "aws_glue_partitionindex" "example" {
///   partition_index = {
///     index_name = "example"
///     keys       = ["my_column_1", "my_column_2"]
///   }
///   database_name = aws_glue_catalogdatabase.example.name
///   table_name    = aws_glue_catalogtable.example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.CatalogDatabase;
/// import com.pulumi.aws.glue.CatalogDatabaseArgs;
/// import com.pulumi.aws.glue.CatalogTable;
/// import com.pulumi.aws.glue.CatalogTableArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorSerDeInfoArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorSkewedInfoArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorColumnArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorSortColumnArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTablePartitionKeyArgs;
/// import com.pulumi.aws.glue.PartitionIndex;
/// import com.pulumi.aws.glue.PartitionIndexArgs;
/// import com.pulumi.aws.glue.inputs.PartitionIndexPartitionIndexArgs;
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
///         var example = new CatalogDatabase("example", CatalogDatabaseArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleCatalogTable = new CatalogTable("exampleCatalogTable", CatalogTableArgs.builder()
///             .storageDescriptor(CatalogTableStorageDescriptorArgs.builder()
///                 .serDeInfo(CatalogTableStorageDescriptorSerDeInfoArgs.builder()
///                     .name("ser_de_name")
///                     .parameters(Map.of("param1", "param_val_1"))
///                     .serializationLibrary("org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe")
///                     .build())
///                 .skewedInfo(CatalogTableStorageDescriptorSkewedInfoArgs.builder()
///                     .skewedColumnNames("my_column_1")
///                     .skewedColumnValueLocationMaps(Map.of("my_column_1", "my_column_1_val_loc_map"))
///                     .skewedColumnValues("skewed_val_1")
///                     .build())
///                 .columns(
///                     CatalogTableStorageDescriptorColumnArgs.builder()
///                         .name("my_column_1")
///                         .type("int")
///                         .comment("my_column1_comment")
///                         .build(),
///                     CatalogTableStorageDescriptorColumnArgs.builder()
///                         .name("my_column_2")
///                         .type("string")
///                         .comment("my_column2_comment")
///                         .build())
///                 .sortColumns(CatalogTableStorageDescriptorSortColumnArgs.builder()
///                     .column("my_column_1")
///                     .sortOrder(1)
///                     .build())
///                 .bucketColumns("bucket_column_1")
///                 .compressed(false)
///                 .inputFormat("SequenceFileInputFormat")
///                 .location("my_location")
///                 .numberOfBuckets(1)
///                 .outputFormat("SequenceFileInputFormat")
///                 .storedAsSubDirectories(false)
///                 .parameters(Map.of("param1", "param1_val"))
///                 .build())
///             .partitionKeys(
///                 CatalogTablePartitionKeyArgs.builder()
///                     .name("my_column_1")
///                     .type("int")
///                     .comment("my_column_1_comment")
///                     .build(),
///                 CatalogTablePartitionKeyArgs.builder()
///                     .name("my_column_2")
///                     .type("string")
///                     .comment("my_column_2_comment")
///                     .build())
///             .name("example")
///             .databaseName(example.name())
///             .owner("my_owner")
///             .retention(1)
///             .tableType("VIRTUAL_VIEW")
///             .viewExpandedText("view_expanded_text_1")
///             .viewOriginalText("view_original_text_1")
///             .parameters(Map.of("param1", "param1_val"))
///             .build());
///
///         var examplePartitionIndex = new PartitionIndex("examplePartitionIndex", PartitionIndexArgs.builder()
///             .partitionIndex(PartitionIndexPartitionIndexArgs.builder()
///                 .indexName("example")
///                 .keys(
///                     "my_column_1",
///                     "my_column_2")
///                 .build())
///             .databaseName(example.name())
///             .tableName(exampleCatalogTable.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:CatalogDatabase
///     properties:
///       name: example
///   exampleCatalogTable:
///     type: aws:glue:CatalogTable
///     name: example
///     properties:
///       storageDescriptor:
///         serDeInfo:
///           name: ser_de_name
///           parameters:
///             param1: param_val_1
///           serializationLibrary: org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe
///         skewedInfo:
///           skewedColumnNames:
///             - my_column_1
///           skewedColumnValueLocationMaps:
///             my_column_1: my_column_1_val_loc_map
///           skewedColumnValues:
///             - skewed_val_1
///         columns:
///           - name: my_column_1
///             type: int
///             comment: my_column1_comment
///           - name: my_column_2
///             type: string
///             comment: my_column2_comment
///         sortColumns:
///           - column: my_column_1
///             sortOrder: 1
///         bucketColumns:
///           - bucket_column_1
///         compressed: false
///         inputFormat: SequenceFileInputFormat
///         location: my_location
///         numberOfBuckets: 1
///         outputFormat: SequenceFileInputFormat
///         storedAsSubDirectories: false
///         parameters:
///           param1: param1_val
///       partitionKeys:
///         - name: my_column_1
///           type: int
///           comment: my_column_1_comment
///         - name: my_column_2
///           type: string
///           comment: my_column_2_comment
///       name: example
///       databaseName: ${example.name}
///       owner: my_owner
///       retention: 1
///       tableType: VIRTUAL_VIEW
///       viewExpandedText: view_expanded_text_1
///       viewOriginalText: view_original_text_1
///       parameters:
///         param1: param1_val
///   examplePartitionIndex:
///     type: aws:glue:PartitionIndex
///     name: example
///     properties:
///       partitionIndex:
///         indexName: example
///         keys:
///           - my_column_1
///           - my_column_2
///       databaseName: ${example.name}
///       tableName: ${exampleCatalogTable.name}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Partition Indexes using the catalog ID (usually AWS account ID), database name, table name, and index name. For example:
///
/// ```sh
/// $ pulumi import aws:glue/partitionIndex:PartitionIndex example 123456789012:MyDatabase:MyTable:index-name
/// ```
class PartitionIndex extends pulumi.CustomResource {
  /// The catalog ID where the table resides.
  late final pulumi.Output<String> catalogId;
  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  late final pulumi.Output<String> databaseName;
  /// Configuration block for a partition index. See `partitionIndex` below.
  late final pulumi.Output<PartitionIndexPartitionIndex> partitionIndex;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the table. For Hive compatibility, this must be entirely lowercase.
  late final pulumi.Output<String> tableName;

  /// Creates a new [PartitionIndex].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PartitionIndex]. {@macro pulumi_glue_partition_index_partition_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PartitionIndex(
    String name, {
    PartitionIndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/partitionIndex:PartitionIndex',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    catalogId = registerOutput<String>('catalogId');
    databaseName = registerOutput<String>('databaseName');
    partitionIndex = registerOutput<PartitionIndexPartitionIndex>('partitionIndex', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PartitionIndexPartitionIndex.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tableName = registerOutput<String>('tableName');
  }

  /// Gets an existing [PartitionIndex] resource's state with the given [name] and [id].
  static PartitionIndex get(
    String name,
    pulumi.Input<String> id, {
    PartitionIndexState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PartitionIndex._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PartitionIndex._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/partitionIndex:PartitionIndex',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalogId = registerOutput<String>('catalogId');
    databaseName = registerOutput<String>('databaseName');
    partitionIndex = registerOutput<PartitionIndexPartitionIndex>('partitionIndex', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PartitionIndexPartitionIndex.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tableName = registerOutput<String>('tableName');
  }

  /// Creates a typed reference to an existing [PartitionIndex] resource.
  PartitionIndex.reference(String urn)
    : super(
        'aws:glue/partitionIndex:PartitionIndex',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    catalogId = registerOutput<String>('catalogId');
    databaseName = registerOutput<String>('databaseName');
    partitionIndex = registerOutput<PartitionIndexPartitionIndex>('partitionIndex', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PartitionIndexPartitionIndex.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tableName = registerOutput<String>('tableName');
  }
}
