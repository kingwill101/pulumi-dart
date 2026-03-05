import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_args.dart';
import 'table_encryption_configuration.dart';
import 'table_maintenance_configuration.dart';
import 'table_metadata.dart';
import 'table_state.dart';

/// Resource for managing an Amazon S3 Tables Table.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleTableBucket = new aws.s3tables.TableBucket("example", {name: "example-bucket"});
/// const exampleNamespace = new aws.s3tables.Namespace("example", {
///     namespace: "example_namespace",
///     tableBucketArn: exampleTableBucket.arn,
/// });
/// const example = new aws.s3tables.Table("example", {
///     name: "example_table",
///     namespace: exampleNamespace.namespace,
///     tableBucketArn: exampleNamespace.tableBucketArn,
///     format: "ICEBERG",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_table_bucket = aws.s3tables.TableBucket("example", name="example-bucket")
/// example_namespace = aws.s3tables.Namespace("example",
///     namespace="example_namespace",
///     table_bucket_arn=example_table_bucket.arn)
/// example = aws.s3tables.Table("example",
///     name="example_table",
///     namespace=example_namespace.namespace,
///     table_bucket_arn=example_namespace.table_bucket_arn,
///     format="ICEBERG")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleTableBucket = new Aws.S3Tables.TableBucket("example", new()
///     {
///         Name = "example-bucket",
///     });
///
///     var exampleNamespace = new Aws.S3Tables.Namespace("example", new()
///     {
///         NameSpace = "example_namespace",
///         TableBucketArn = exampleTableBucket.Arn,
///     });
///
///     var example = new Aws.S3Tables.Table("example", new()
///     {
///         Name = "example_table",
///         Namespace = exampleNamespace.NameSpace,
///         TableBucketArn = exampleNamespace.TableBucketArn,
///         Format = "ICEBERG",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3tables"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleTableBucket, err := s3tables.NewTableBucket(ctx, "example", &s3tables.TableBucketArgs{
/// 			Name: pulumi.String("example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := s3tables.NewNamespace(ctx, "example", &s3tables.NamespaceArgs{
/// 			Namespace:      pulumi.String("example_namespace"),
/// 			TableBucketArn: exampleTableBucket.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3tables.NewTable(ctx, "example", &s3tables.TableArgs{
/// 			Name:           pulumi.String("example_table"),
/// 			Namespace:      exampleNamespace.Namespace,
/// 			TableBucketArn: exampleNamespace.TableBucketArn,
/// 			Format:         pulumi.String("ICEBERG"),
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
/// import com.pulumi.aws.s3tables.TableBucket;
/// import com.pulumi.aws.s3tables.TableBucketArgs;
/// import com.pulumi.aws.s3tables.Namespace;
/// import com.pulumi.aws.s3tables.NamespaceArgs;
/// import com.pulumi.aws.s3tables.Table;
/// import com.pulumi.aws.s3tables.TableArgs;
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
///         var exampleTableBucket = new TableBucket("exampleTableBucket", TableBucketArgs.builder()
///             .name("example-bucket")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .namespace("example_namespace")
///             .tableBucketArn(exampleTableBucket.arn())
///             .build());
///
///         var example = new Table("example", TableArgs.builder()
///             .name("example_table")
///             .namespace(exampleNamespace.namespace())
///             .tableBucketArn(exampleNamespace.tableBucketArn())
///             .format("ICEBERG")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3tables:Table
///     properties:
///       name: example_table
///       namespace: ${exampleNamespace.namespace}
///       tableBucketArn: ${exampleNamespace.tableBucketArn}
///       format: ICEBERG
///   exampleNamespace:
///     type: aws:s3tables:Namespace
///     name: example
///     properties:
///       namespace: example_namespace
///       tableBucketArn: ${exampleTableBucket.arn}
///   exampleTableBucket:
///     type: aws:s3tables:TableBucket
///     name: example
///     properties:
///       name: example-bucket
/// ```
///
///
/// ### With Metadata Schema
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleTableBucket = new aws.s3tables.TableBucket("example", {name: "example-bucket"});
/// const exampleNamespace = new aws.s3tables.Namespace("example", {
///     namespace: "example_namespace",
///     tableBucketArn: exampleTableBucket.arn,
/// });
/// const example = new aws.s3tables.Table("example", {
///     name: "example_table",
///     namespace: exampleNamespace.namespace,
///     tableBucketArn: exampleNamespace.tableBucketArn,
///     format: "ICEBERG",
///     metadata: {
///         iceberg: {
///             schema: {
///                 fields: [
///                     {
///                         name: "id",
///                         type: "long",
///                         required: true,
///                     },
///                     {
///                         name: "name",
///                         type: "string",
///                         required: true,
///                     },
///                     {
///                         name: "created_at",
///                         type: "timestamp",
///                         required: false,
///                     },
///                     {
///                         name: "price",
///                         type: "decimal(10,2)",
///                         required: false,
///                     },
///                 ],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_table_bucket = aws.s3tables.TableBucket("example", name="example-bucket")
/// example_namespace = aws.s3tables.Namespace("example",
///     namespace="example_namespace",
///     table_bucket_arn=example_table_bucket.arn)
/// example = aws.s3tables.Table("example",
///     name="example_table",
///     namespace=example_namespace.namespace,
///     table_bucket_arn=example_namespace.table_bucket_arn,
///     format="ICEBERG",
///     metadata={
///         "iceberg": {
///             "schema": {
///                 "fields": [
///                     {
///                         "name": "id",
///                         "type": "long",
///                         "required": True,
///                     },
///                     {
///                         "name": "name",
///                         "type": "string",
///                         "required": True,
///                     },
///                     {
///                         "name": "created_at",
///                         "type": "timestamp",
///                         "required": False,
///                     },
///                     {
///                         "name": "price",
///                         "type": "decimal(10,2)",
///                         "required": False,
///                     },
///                 ],
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
///     var exampleTableBucket = new Aws.S3Tables.TableBucket("example", new()
///     {
///         Name = "example-bucket",
///     });
///
///     var exampleNamespace = new Aws.S3Tables.Namespace("example", new()
///     {
///         NameSpace = "example_namespace",
///         TableBucketArn = exampleTableBucket.Arn,
///     });
///
///     var example = new Aws.S3Tables.Table("example", new()
///     {
///         Name = "example_table",
///         Namespace = exampleNamespace.NameSpace,
///         TableBucketArn = exampleNamespace.TableBucketArn,
///         Format = "ICEBERG",
///         Metadata = new Aws.S3Tables.Inputs.TableMetadataArgs
///         {
///             Iceberg = new Aws.S3Tables.Inputs.TableMetadataIcebergArgs
///             {
///                 Schema = new Aws.S3Tables.Inputs.TableMetadataIcebergSchemaArgs
///                 {
///                     Fields = new[]
///                     {
///                         new Aws.S3Tables.Inputs.TableMetadataIcebergSchemaFieldArgs
///                         {
///                             Name = "id",
///                             Type = "long",
///                             Required = true,
///                         },
///                         new Aws.S3Tables.Inputs.TableMetadataIcebergSchemaFieldArgs
///                         {
///                             Name = "name",
///                             Type = "string",
///                             Required = true,
///                         },
///                         new Aws.S3Tables.Inputs.TableMetadataIcebergSchemaFieldArgs
///                         {
///                             Name = "created_at",
///                             Type = "timestamp",
///                             Required = false,
///                         },
///                         new Aws.S3Tables.Inputs.TableMetadataIcebergSchemaFieldArgs
///                         {
///                             Name = "price",
///                             Type = "decimal(10,2)",
///                             Required = false,
///                         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3tables"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleTableBucket, err := s3tables.NewTableBucket(ctx, "example", &s3tables.TableBucketArgs{
/// 			Name: pulumi.String("example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := s3tables.NewNamespace(ctx, "example", &s3tables.NamespaceArgs{
/// 			Namespace:      pulumi.String("example_namespace"),
/// 			TableBucketArn: exampleTableBucket.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3tables.NewTable(ctx, "example", &s3tables.TableArgs{
/// 			Name:           pulumi.String("example_table"),
/// 			Namespace:      exampleNamespace.Namespace,
/// 			TableBucketArn: exampleNamespace.TableBucketArn,
/// 			Format:         pulumi.String("ICEBERG"),
/// 			Metadata: &s3tables.TableMetadataArgs{
/// 				Iceberg: &s3tables.TableMetadataIcebergArgs{
/// 					Schema: &s3tables.TableMetadataIcebergSchemaArgs{
/// 						Fields: s3tables.TableMetadataIcebergSchemaFieldArray{
/// 							&s3tables.TableMetadataIcebergSchemaFieldArgs{
/// 								Name:     pulumi.String("id"),
/// 								Type:     pulumi.String("long"),
/// 								Required: pulumi.Bool(true),
/// 							},
/// 							&s3tables.TableMetadataIcebergSchemaFieldArgs{
/// 								Name:     pulumi.String("name"),
/// 								Type:     pulumi.String("string"),
/// 								Required: pulumi.Bool(true),
/// 							},
/// 							&s3tables.TableMetadataIcebergSchemaFieldArgs{
/// 								Name:     pulumi.String("created_at"),
/// 								Type:     pulumi.String("timestamp"),
/// 								Required: pulumi.Bool(false),
/// 							},
/// 							&s3tables.TableMetadataIcebergSchemaFieldArgs{
/// 								Name:     pulumi.String("price"),
/// 								Type:     pulumi.String("decimal(10,2)"),
/// 								Required: pulumi.Bool(false),
/// 							},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3tables.TableBucket;
/// import com.pulumi.aws.s3tables.TableBucketArgs;
/// import com.pulumi.aws.s3tables.Namespace;
/// import com.pulumi.aws.s3tables.NamespaceArgs;
/// import com.pulumi.aws.s3tables.Table;
/// import com.pulumi.aws.s3tables.TableArgs;
/// import com.pulumi.aws.s3tables.inputs.TableMetadataArgs;
/// import com.pulumi.aws.s3tables.inputs.TableMetadataIcebergArgs;
/// import com.pulumi.aws.s3tables.inputs.TableMetadataIcebergSchemaArgs;
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
///         var exampleTableBucket = new TableBucket("exampleTableBucket", TableBucketArgs.builder()
///             .name("example-bucket")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .namespace("example_namespace")
///             .tableBucketArn(exampleTableBucket.arn())
///             .build());
///
///         var example = new Table("example", TableArgs.builder()
///             .name("example_table")
///             .namespace(exampleNamespace.namespace())
///             .tableBucketArn(exampleNamespace.tableBucketArn())
///             .format("ICEBERG")
///             .metadata(TableMetadataArgs.builder()
///                 .iceberg(TableMetadataIcebergArgs.builder()
///                     .schema(TableMetadataIcebergSchemaArgs.builder()
///                         .fields(
///                             TableMetadataIcebergSchemaFieldArgs.builder()
///                                 .name("id")
///                                 .type("long")
///                                 .required(true)
///                                 .build(),
///                             TableMetadataIcebergSchemaFieldArgs.builder()
///                                 .name("name")
///                                 .type("string")
///                                 .required(true)
///                                 .build(),
///                             TableMetadataIcebergSchemaFieldArgs.builder()
///                                 .name("created_at")
///                                 .type("timestamp")
///                                 .required(false)
///                                 .build(),
///                             TableMetadataIcebergSchemaFieldArgs.builder()
///                                 .name("price")
///                                 .type("decimal(10,2)")
///                                 .required(false)
///                                 .build())
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
///     type: aws:s3tables:Table
///     properties:
///       name: example_table
///       namespace: ${exampleNamespace.namespace}
///       tableBucketArn: ${exampleNamespace.tableBucketArn}
///       format: ICEBERG
///       metadata:
///         iceberg:
///           schema:
///             fields:
///               - name: id
///                 type: long
///                 required: true
///               - name: name
///                 type: string
///                 required: true
///               - name: created_at
///                 type: timestamp
///                 required: false
///               - name: price
///                 type: decimal(10,2)
///                 required: false
///   exampleNamespace:
///     type: aws:s3tables:Namespace
///     name: example
///     properties:
///       namespace: example_namespace
///       tableBucketArn: ${exampleTableBucket.arn}
///   exampleTableBucket:
///     type: aws:s3tables:TableBucket
///     name: example
///     properties:
///       name: example-bucket
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table using the `table_bucket_arn`, the value of `namespace`, and the value of `name`, separated by a semicolon (`;`). For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/table:Table example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket;example-namespace;example-table'
/// ```
class Table extends pulumi.CustomResource {
  /// ARN of the table.
  late final pulumi.Output<String> arn;

  /// Date and time when the namespace was created.
  late final pulumi.Output<String> createdAt;

  /// Account ID of the account that created the namespace.
  late final pulumi.Output<String> createdBy;

  /// A single table bucket encryption configuration object.
  /// See `encryption_configuration` below.
  late final pulumi.Output<TableEncryptionConfiguration>
  encryptionConfiguration;

  /// Format of the table.
  /// Must be `ICEBERG`.
  late final pulumi.Output<String> format;

  /// A single table bucket maintenance configuration object.
  /// See `maintenance_configuration` below.
  late final pulumi.Output<TableMaintenanceConfiguration>
  maintenanceConfiguration;

  /// Contains details about the table metadata. This configuration specifies the metadata format and schema for the table. Currently only supports Iceberg format.
  /// See `metadata` below.
  late final pulumi.Output<TableMetadata?> metadata;

  /// Location of table metadata.
  late final pulumi.Output<String> metadataLocation;

  /// Date and time when the namespace was last modified.
  late final pulumi.Output<String> modifiedAt;

  /// Account ID of the account that last modified the namespace.
  late final pulumi.Output<String> modifiedBy;

  /// Name of the table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  /// A full list of table naming rules can be found in the [S3 Tables documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-naming.html#naming-rules-table).
  late final pulumi.Output<String> name;

  /// Name of the namespace for this table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  late final pulumi.Output<String> namespace;

  /// Account ID of the account that owns the namespace.
  late final pulumi.Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN referencing the Table Bucket that contains this Namespace.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> tableBucketArn;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Type of the table.
  /// One of `customer` or `aws`.
  late final pulumi.Output<String> type;

  /// Identifier for the current version of table data.
  late final pulumi.Output<String> versionToken;

  /// S3 URI pointing to the S3 Bucket that contains the table data.
  late final pulumi.Output<String> warehouseLocation;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_s3_tables_table_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(String name, {TableArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:s3tables/table:Table',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    encryptionConfiguration = registerOutput<TableEncryptionConfiguration>(
      'encryptionConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableEncryptionConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    format = registerOutput<String>('format');
    maintenanceConfiguration = registerOutput<TableMaintenanceConfiguration>(
      'maintenanceConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableMaintenanceConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    metadata = registerOutput<TableMetadata?>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableMetadata.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    metadataLocation = registerOutput<String>('metadataLocation');
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    tableBucketArn = registerOutput<String>('tableBucketArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
    versionToken = registerOutput<String>('versionToken');
    warehouseLocation = registerOutput<String>('warehouseLocation');
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
         'aws:s3tables/table:Table',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    encryptionConfiguration = registerOutput<TableEncryptionConfiguration>(
      'encryptionConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableEncryptionConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    format = registerOutput<String>('format');
    maintenanceConfiguration = registerOutput<TableMaintenanceConfiguration>(
      'maintenanceConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableMaintenanceConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    metadata = registerOutput<TableMetadata?>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TableMetadata.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    metadataLocation = registerOutput<String>('metadataLocation');
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    tableBucketArn = registerOutput<String>('tableBucketArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
    versionToken = registerOutput<String>('versionToken');
    warehouseLocation = registerOutput<String>('warehouseLocation');
  }
}
