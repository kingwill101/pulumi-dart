import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_args.dart';
import 'catalog_table_open_table_format_input.dart';
import 'catalog_table_state.dart';
import 'catalog_table_storage_descriptor.dart';
import 'catalog_table_target_table.dart';
import 'catalog_table_view_definition.dart';

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
/// const example = new aws.glue.CatalogTable("example", {
///     name: "MyCatalogTable",
///     databaseName: "MyCatalogDatabase",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogTable("example",
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
///     var example = new Aws.Glue.CatalogTable("example", new()
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
/// 		_, err := glue.NewCatalogTable(ctx, "example", &glue.CatalogTableArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_glue_catalogtable" "example" {
///   name          = "MyCatalogTable"
///   database_name = "MyCatalogDatabase"
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
///         var example = new CatalogTable("example", CatalogTableArgs.builder()
///             .name("MyCatalogTable")
///             .databaseName("MyCatalogDatabase")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:CatalogTable
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
/// const example = new aws.glue.CatalogTable("example", {
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
/// example = aws.glue.CatalogTable("example",
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
///     var example = new Aws.Glue.CatalogTable("example", new()
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
/// 		_, err := glue.NewCatalogTable(ctx, "example", &glue.CatalogTableArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_glue_catalogtable" "example" {
///   name          = "MyCatalogTable"
///   database_name = "MyCatalogDatabase"
///   table_type    = "EXTERNAL_TABLE"
///   parameters = {
///     "EXTERNAL"            = "TRUE"
///     "parquet.compression" = "SNAPPY"
///   }
///   storage_descriptor = {
///     location      = "s3://my-bucket/event-streams/my-stream"
///     input_format  = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
///     output_format = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
///     ser_de_info = {
///       name                  = "my-stream"
///       serialization_library = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
///       parameters = {
///         "serialization.format" = 1
///       }
///     }
///     columns = [{
///       "name" = "my_string"
///       "type" = "string"
///       }, {
///       "name" = "my_double"
///       "type" = "double"
///       }, {
///       "name"    = "my_date"
///       "type"    = "date"
///       "comment" = ""
///       }, {
///       "name"    = "my_bigint"
///       "type"    = "bigint"
///       "comment" = ""
///       }, {
///       "name"    = "my_struct"
///       "type"    = "struct<my_nested_string:string>"
///       "comment" = ""
///     }]
///   }
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
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorColumnArgs;
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
///         var example = new CatalogTable("example", CatalogTableArgs.builder()
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
///   example:
///     type: aws:glue:CatalogTable
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
/// ### Iceberg Table
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogTable("example", {
///     name: "transactiontable1",
///     databaseName: "bankdata_icebergdb",
///     openTableFormatInput: {
///         icebergInput: {
///             metadataOperation: "CREATE",
///             version: "2",
///             icebergTableInput: {
///                 location: "s3://sampledatabucket/bankdataiceberg/transactiontable1/",
///                 schema: {
///                     schemaId: 0,
///                     type: "struct",
///                     fields: [
///                         {
///                             id: 1,
///                             name: "transaction_id",
///                             required: true,
///                             type: "            \\\"string\\\"\n",
///                         },
///                         {
///                             id: 2,
///                             name: "transaction_date",
///                             required: true,
///                             type: "            \\\"date\\\"\n",
///                         },
///                         {
///                             id: 3,
///                             name: "monthly_balance",
///                             required: true,
///                             type: "            \\\"float\\\"\n",
///                         },
///                     ],
///                 },
///                 partitionSpec: {
///                     fields: [{
///                         name: "by_year",
///                         sourceId: 2,
///                         transform: "year",
///                     }],
///                     specId: 0,
///                 },
///                 sortOrder: {
///                     fields: [{
///                         direction: "asc",
///                         nullOrder: "nulls-last",
///                         sourceId: 1,
///                         transform: "none",
///                     }],
///                     orderId: 1,
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogTable("example",
///     name="transactiontable1",
///     database_name="bankdata_icebergdb",
///     open_table_format_input={
///         "iceberg_input": {
///             "metadata_operation": "CREATE",
///             "version": "2",
///             "iceberg_table_input": {
///                 "location": "s3://sampledatabucket/bankdataiceberg/transactiontable1/",
///                 "schema": {
///                     "schema_id": 0,
///                     "type": "struct",
///                     "fields": [
///                         {
///                             "id": 1,
///                             "name": "transaction_id",
///                             "required": True,
///                             "type": "            \\\"string\\\"\n",
///                         },
///                         {
///                             "id": 2,
///                             "name": "transaction_date",
///                             "required": True,
///                             "type": "            \\\"date\\\"\n",
///                         },
///                         {
///                             "id": 3,
///                             "name": "monthly_balance",
///                             "required": True,
///                             "type": "            \\\"float\\\"\n",
///                         },
///                     ],
///                 },
///                 "partition_spec": {
///                     "fields": [{
///                         "name": "by_year",
///                         "source_id": 2,
///                         "transform": "year",
///                     }],
///                     "spec_id": 0,
///                 },
///                 "sort_order": {
///                     "fields": [{
///                         "direction": "asc",
///                         "null_order": "nulls-last",
///                         "source_id": 1,
///                         "transform": "none",
///                     }],
///                     "order_id": 1,
///                 },
///             },
///         },
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
///     var example = new Aws.Glue.CatalogTable("example", new()
///     {
///         Name = "transactiontable1",
///         DatabaseName = "bankdata_icebergdb",
///         OpenTableFormatInput = new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputArgs
///         {
///             IcebergInput = new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputIcebergInputArgs
///             {
///                 MetadataOperation = "CREATE",
///                 Version = "2",
///                 IcebergTableInput = new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputArgs
///                 {
///                     Location = "s3://sampledatabucket/bankdataiceberg/transactiontable1/",
///                     Schema = new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaArgs
///                     {
///                         SchemaId = 0,
///                         Type = "struct",
///                         Fields = new[]
///                         {
///                             new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFieldArgs
///                             {
///                                 Id = 1,
///                                 Name = "transaction_id",
///                                 Required = true,
///                                 Type = @"            \""string\""
/// ",
///                             },
///                             new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFieldArgs
///                             {
///                                 Id = 2,
///                                 Name = "transaction_date",
///                                 Required = true,
///                                 Type = @"            \""date\""
/// ",
///                             },
///                             new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFieldArgs
///                             {
///                                 Id = 3,
///                                 Name = "monthly_balance",
///                                 Required = true,
///                                 Type = @"            \""float\""
/// ",
///                             },
///                         },
///                     },
///                     PartitionSpec = new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecArgs
///                     {
///                         Fields = new[]
///                         {
///                             new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecFieldArgs
///                             {
///                                 Name = "by_year",
///                                 SourceId = 2,
///                                 Transform = "year",
///                             },
///                         },
///                         SpecId = 0,
///                     },
///                     SortOrder = new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderArgs
///                     {
///                         Fields = new[]
///                         {
///                             new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderFieldArgs
///                             {
///                                 Direction = "asc",
///                                 NullOrder = "nulls-last",
///                                 SourceId = 1,
///                                 Transform = "none",
///                             },
///                         },
///                         OrderId = 1,
///                     },
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
/// 		_, err := glue.NewCatalogTable(ctx, "example", &glue.CatalogTableArgs{
/// 			Name:         pulumi.String("transactiontable1"),
/// 			DatabaseName: pulumi.String("bankdata_icebergdb"),
/// 			OpenTableFormatInput: &glue.CatalogTableOpenTableFormatInputArgs{
/// 				IcebergInput: &glue.CatalogTableOpenTableFormatInputIcebergInputArgs{
/// 					MetadataOperation: pulumi.String("CREATE"),
/// 					Version:           pulumi.String("2"),
/// 					IcebergTableInput: &glue.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputArgs{
/// 						Location: pulumi.String("s3://sampledatabucket/bankdataiceberg/transactiontable1/"),
/// 						Schema: &glue.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaArgs{
/// 							SchemaId: pulumi.Int(0),
/// 							Type:     pulumi.String("struct"),
/// 							Fields: glue.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFieldArray{
/// 								&glue.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFieldArgs{
/// 									Id:       pulumi.Int(1),
/// 									Name:     pulumi.String("transaction_id"),
/// 									Required: pulumi.Bool(true),
/// 									Type:     pulumi.String("            \\\"string\\\"\n"),
/// 								},
/// 								&glue.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFieldArgs{
/// 									Id:       pulumi.Int(2),
/// 									Name:     pulumi.String("transaction_date"),
/// 									Required: pulumi.Bool(true),
/// 									Type:     pulumi.String("            \\\"date\\\"\n"),
/// 								},
/// 								&glue.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFieldArgs{
/// 									Id:       pulumi.Int(3),
/// 									Name:     pulumi.String("monthly_balance"),
/// 									Required: pulumi.Bool(true),
/// 									Type:     pulumi.String("            \\\"float\\\"\n"),
/// 								},
/// 							},
/// 						},
/// 						PartitionSpec: &glue.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecArgs{
/// 							Fields: glue.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecFieldArray{
/// 								&glue.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecFieldArgs{
/// 									Name:      pulumi.String("by_year"),
/// 									SourceId:  pulumi.Int(2),
/// 									Transform: pulumi.String("year"),
/// 								},
/// 							},
/// 							SpecId: pulumi.Int(0),
/// 						},
/// 						SortOrder: &glue.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderArgs{
/// 							Fields: glue.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderFieldArray{
/// 								&glue.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderFieldArgs{
/// 									Direction: pulumi.String("asc"),
/// 									NullOrder: pulumi.String("nulls-last"),
/// 									SourceId:  pulumi.Int(1),
/// 									Transform: pulumi.String("none"),
/// 								},
/// 							},
/// 							OrderId: pulumi.Int(1),
/// 						},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_glue_catalogtable" "example" {
///   name          = "transactiontable1"
///   database_name = "bankdata_icebergdb"
///   open_table_format_input = {
///     iceberg_input = {
///       metadata_operation = "CREATE"
///       version            = 2
///       iceberg_table_input = {
///         location = "s3://sampledatabucket/bankdataiceberg/transactiontable1/"
///         schema = {
///           schema_id = 0
///           type      = "struct"
///           fields = [{
///             "id"       = 1
///             "name"     = "transaction_id"
///             "required" = true
///             "type"     = "            \\\"string\\\"\n"
///             }, {
///             "id"       = 2
///             "name"     = "transaction_date"
///             "required" = true
///             "type"     = "            \\\"date\\\"\n"
///             }, {
///             "id"       = 3
///             "name"     = "monthly_balance"
///             "required" = true
///             "type"     = "            \\\"float\\\"\n"
///           }]
///         }
///         partition_spec = {
///           fields = [{
///             "name"      = "by_year"
///             "sourceId"  = 2
///             "transform" = "year"
///           }]
///           spec_id = 0
///         }
///         sort_order = {
///           fields = [{
///             "direction" = "asc"
///             "nullOrder" = "nulls-last"
///             "sourceId"  = 1
///             "transform" = "none"
///           }]
///           order_id = 1
///         }
///       }
///     }
///   }
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
/// import com.pulumi.aws.glue.inputs.CatalogTableOpenTableFormatInputArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOpenTableFormatInputIcebergInputArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFieldArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecFieldArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderFieldArgs;
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
///         var example = new CatalogTable("example", CatalogTableArgs.builder()
///             .name("transactiontable1")
///             .databaseName("bankdata_icebergdb")
///             .openTableFormatInput(CatalogTableOpenTableFormatInputArgs.builder()
///                 .icebergInput(CatalogTableOpenTableFormatInputIcebergInputArgs.builder()
///                     .metadataOperation("CREATE")
///                     .version("2")
///                     .icebergTableInput(CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputArgs.builder()
///                         .location("s3://sampledatabucket/bankdataiceberg/transactiontable1/")
///                         .schema(CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaArgs.builder()
///                             .schemaId(0)
///                             .type("struct")
///                             .fields(
///                                 CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFieldArgs.builder()
///                                     .id(1)
///                                     .name("transaction_id")
///                                     .required(true)
///                                     .type("""
///             \"string\"
///                                     """)
///                                     .build(),
///                                 CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFieldArgs.builder()
///                                     .id(2)
///                                     .name("transaction_date")
///                                     .required(true)
///                                     .type("""
///             \"date\"
///                                     """)
///                                     .build(),
///                                 CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSchemaFieldArgs.builder()
///                                     .id(3)
///                                     .name("monthly_balance")
///                                     .required(true)
///                                     .type("""
///             \"float\"
///                                     """)
///                                     .build())
///                             .build())
///                         .partitionSpec(CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecArgs.builder()
///                             .fields(CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputPartitionSpecFieldArgs.builder()
///                                 .name("by_year")
///                                 .sourceId(2)
///                                 .transform("year")
///                                 .build())
///                             .specId(0)
///                             .build())
///                         .sortOrder(CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderArgs.builder()
///                             .fields(CatalogTableOpenTableFormatInputIcebergInputIcebergTableInputSortOrderFieldArgs.builder()
///                                 .direction("asc")
///                                 .nullOrder("nulls-last")
///                                 .sourceId(1)
///                                 .transform("none")
///                                 .build())
///                             .orderId(1)
///                             .build())
///                         .build())
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
///     type: aws:glue:CatalogTable
///     properties:
///       name: transactiontable1
///       databaseName: bankdata_icebergdb
///       openTableFormatInput:
///         icebergInput:
///           metadataOperation: CREATE
///           version: 2
///           icebergTableInput:
///             location: s3://sampledatabucket/bankdataiceberg/transactiontable1/
///             schema:
///               schemaId: 0
///               type: struct
///               fields:
///                 - id: 1
///                   name: transaction_id
///                   required: true
///                   type: |2
///                                 \"string\"
///                 - id: 2
///                   name: transaction_date
///                   required: true
///                   type: |2
///                                 \"date\"
///                 - id: 3
///                   name: monthly_balance
///                   required: true
///                   type: |2
///                                 \"float\"
///             partitionSpec:
///               fields:
///                 - name: by_year
///                   sourceId: 2
///                   transform: year
///               specId: 0
///             sortOrder:
///               fields:
///                 - direction: asc
///                   nullOrder: nulls-last
///                   sourceId: 1
///                   transform: none
///               orderId: 1
/// ```
///
///
/// ### Protected View
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogTable("example", {
///     name: "multidialect_view",
///     databaseName: "catalog_database",
///     tableType: "VIRTUAL_VIEW",
///     viewDefinition: {
///         isProtected: true,
///         representations: [{
///             dialect: "ATHENA",
///             dialectVersion: "3",
///             viewOriginalText: "SELECT * FROM catalog_database.base_table",
///             validationConnection: exampleAwsGlueConnection.name,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogTable("example",
///     name="multidialect_view",
///     database_name="catalog_database",
///     table_type="VIRTUAL_VIEW",
///     view_definition={
///         "is_protected": True,
///         "representations": [{
///             "dialect": "ATHENA",
///             "dialect_version": "3",
///             "view_original_text": "SELECT * FROM catalog_database.base_table",
///             "validation_connection": example_aws_glue_connection["name"],
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
///     var example = new Aws.Glue.CatalogTable("example", new()
///     {
///         Name = "multidialect_view",
///         DatabaseName = "catalog_database",
///         TableType = "VIRTUAL_VIEW",
///         ViewDefinition = new Aws.Glue.Inputs.CatalogTableViewDefinitionArgs
///         {
///             IsProtected = true,
///             Representations = new[]
///             {
///                 new Aws.Glue.Inputs.CatalogTableViewDefinitionRepresentationArgs
///                 {
///                     Dialect = "ATHENA",
///                     DialectVersion = "3",
///                     ViewOriginalText = "SELECT * FROM catalog_database.base_table",
///                     ValidationConnection = exampleAwsGlueConnection.Name,
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
/// 		_, err := glue.NewCatalogTable(ctx, "example", &glue.CatalogTableArgs{
/// 			Name:         pulumi.String("multidialect_view"),
/// 			DatabaseName: pulumi.String("catalog_database"),
/// 			TableType:    pulumi.String("VIRTUAL_VIEW"),
/// 			ViewDefinition: &glue.CatalogTableViewDefinitionArgs{
/// 				IsProtected: pulumi.Bool(true),
/// 				Representations: glue.CatalogTableViewDefinitionRepresentationArray{
/// 					&glue.CatalogTableViewDefinitionRepresentationArgs{
/// 						Dialect:              pulumi.String("ATHENA"),
/// 						DialectVersion:       pulumi.String("3"),
/// 						ViewOriginalText:     pulumi.String("SELECT * FROM catalog_database.base_table"),
/// 						ValidationConnection: pulumi.Any(exampleAwsGlueConnection.Name),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_glue_catalogtable" "example" {
///   name          = "multidialect_view"
///   database_name = "catalog_database"
///   table_type    = "VIRTUAL_VIEW"
///   view_definition = {
///     is_protected = true
///     representations = [{
///       "dialect"              = "ATHENA"
///       "dialectVersion"       = "3"
///       "viewOriginalText"     = "SELECT * FROM catalog_database.base_table"
///       "validationConnection" = exampleAwsGlueConnection.name
///     }]
///   }
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
/// import com.pulumi.aws.glue.inputs.CatalogTableViewDefinitionArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableViewDefinitionRepresentationArgs;
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
///         var example = new CatalogTable("example", CatalogTableArgs.builder()
///             .name("multidialect_view")
///             .databaseName("catalog_database")
///             .tableType("VIRTUAL_VIEW")
///             .viewDefinition(CatalogTableViewDefinitionArgs.builder()
///                 .isProtected(true)
///                 .representations(CatalogTableViewDefinitionRepresentationArgs.builder()
///                     .dialect("ATHENA")
///                     .dialectVersion("3")
///                     .viewOriginalText("SELECT * FROM catalog_database.base_table")
///                     .validationConnection(exampleAwsGlueConnection.name())
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
///     type: aws:glue:CatalogTable
///     properties:
///       name: multidialect_view
///       databaseName: catalog_database
///       tableType: VIRTUAL_VIEW
///       viewDefinition:
///         isProtected: true
///         representations:
///           - dialect: ATHENA
///             dialectVersion: '3'
///             viewOriginalText: SELECT * FROM catalog_database.base_table
///             validationConnection: ${exampleAwsGlueConnection.name}
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
  /// ARN of the Glue Table.
  late final pulumi.Output<String> arn;
  /// ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  late final pulumi.Output<String> catalogId;
  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  late final pulumi.Output<String> databaseName;
  /// Description of the table.
  late final pulumi.Output<String?> description;
  /// Name of the table. For Hive compatibility, this must be entirely lowercase.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Configuration block for open table formats. See `openTableFormatInput` below.
  late final pulumi.Output<CatalogTableOpenTableFormatInput?> openTableFormatInput;
  /// Owner of the table.
  late final pulumi.Output<String?> owner;
  /// Properties associated with this table, as a map of key-value pairs.
  late final pulumi.Output<Map<String, String>> parameters;
  /// Configuration block for a maximum of 3 partition indexes. See `partitionIndex` below.
  late final pulumi.Output<List<Map<String, dynamic>>> partitionIndices;
  /// Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See `partitionKeys` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> partitionKeys;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Retention time for this table.
  late final pulumi.Output<int?> retention;
  /// Configuration block for information about the physical storage of this table. For more information, refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor). See `storageDescriptor` below.
  late final pulumi.Output<CatalogTableStorageDescriptor> storageDescriptor;
  /// Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as `ALTER TABLE` and `SHOW CREATE TABLE` will fail if this argument is empty.
  late final pulumi.Output<String> tableType;
  /// Configuration block of a target table for resource linking. See `targetTable` below.
  late final pulumi.Output<CatalogTableTargetTable?> targetTable;
  /// Structure that contains all the information that defines the view, including the dialect or dialects for the view, and the query. See `viewDefinition` below.
  late final pulumi.Output<CatalogTableViewDefinition?> viewDefinition;
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
    openTableFormatInput = registerOutput<CatalogTableOpenTableFormatInput?>('openTableFormatInput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTableOpenTableFormatInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    owner = registerOutput<String?>('owner');
    parameters = registerOutput<Map<String, String>>('parameters');
    partitionIndices = registerOutput<List<Map<String, dynamic>>>('partitionIndices');
    partitionKeys = registerOutput<List<Map<String, dynamic>>?>('partitionKeys');
    region = registerOutput<String>('region');
    retention = registerOutput<int?>('retention');
    storageDescriptor = registerOutput<CatalogTableStorageDescriptor>('storageDescriptor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTableStorageDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableType = registerOutput<String>('tableType');
    targetTable = registerOutput<CatalogTableTargetTable?>('targetTable', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTableTargetTable.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    viewDefinition = registerOutput<CatalogTableViewDefinition?>('viewDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTableViewDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    openTableFormatInput = registerOutput<CatalogTableOpenTableFormatInput?>('openTableFormatInput', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTableOpenTableFormatInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    owner = registerOutput<String?>('owner');
    parameters = registerOutput<Map<String, String>>('parameters');
    partitionIndices = registerOutput<List<Map<String, dynamic>>>('partitionIndices');
    partitionKeys = registerOutput<List<Map<String, dynamic>>?>('partitionKeys');
    region = registerOutput<String>('region');
    retention = registerOutput<int?>('retention');
    storageDescriptor = registerOutput<CatalogTableStorageDescriptor>('storageDescriptor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTableStorageDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableType = registerOutput<String>('tableType');
    targetTable = registerOutput<CatalogTableTargetTable?>('targetTable', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTableTargetTable.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    viewDefinition = registerOutput<CatalogTableViewDefinition?>('viewDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTableViewDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    viewExpandedText = registerOutput<String?>('viewExpandedText');
    viewOriginalText = registerOutput<String?>('viewOriginalText');
  }
}
