import 'package:pulumi/pulumi.dart';
import '../table_encryption_configuration/table_encryption_configuration.dart';
import '../table_maintenance_configuration/table_maintenance_configuration.dart';
import '../table_metadata/table_metadata.dart';
import 'table_args3.dart';

/// Resource for managing an Amazon S3 Tables Table.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleTableBucket = new aws.s3tables.TableBucket("example", {name: "example-bucket"});
/// const exampleNamespace = new aws.s3tables.Namespace("example", {
/// namespace: "example_namespace",
/// tableBucketArn: exampleTableBucket.arn,
/// });
/// const example = new aws.s3tables.Table("example", {
/// name: "example_table",
/// namespace: exampleNamespace.namespace,
/// tableBucketArn: exampleNamespace.tableBucketArn,
/// format: "ICEBERG",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_table_bucket = aws.s3tables.TableBucket("example", name="example-bucket")
/// example_namespace = aws.s3tables.Namespace("example",
/// namespace="example_namespace",
/// table_bucket_arn=example_table_bucket.arn)
/// example = aws.s3tables.Table("example",
/// name="example_table",
/// namespace=example_namespace.namespace,
/// table_bucket_arn=example_namespace.table_bucket_arn,
/// format="ICEBERG")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleTableBucket = new Aws.S3Tables.TableBucket("example", new()
/// {
/// Name = "example-bucket",
/// });
///
/// var exampleNamespace = new Aws.S3Tables.Namespace("example", new()
/// {
/// NameSpace = "example_namespace",
/// TableBucketArn = exampleTableBucket.Arn,
/// });
///
/// var example = new Aws.S3Tables.Table("example", new()
/// {
/// Name = "example_table",
/// Namespace = exampleNamespace.NameSpace,
/// TableBucketArn = exampleNamespace.TableBucketArn,
/// Format = "ICEBERG",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3tables"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleTableBucket, err := s3tables.NewTableBucket(ctx, "example", &s3tables.TableBucketArgs{
/// Name: pulumi.String("example-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleNamespace, err := s3tables.NewNamespace(ctx, "example", &s3tables.NamespaceArgs{
/// Namespace:      pulumi.String("example_namespace"),
/// TableBucketArn: exampleTableBucket.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3tables.NewTable(ctx, "example", &s3tables.TableArgs{
/// Name:           pulumi.String("example_table"),
/// Namespace:      exampleNamespace.Namespace,
/// TableBucketArn: exampleNamespace.TableBucketArn,
/// Format:         pulumi.String("ICEBERG"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var exampleTableBucket = new TableBucket("exampleTableBucket", TableBucketArgs.builder()
/// .name("example-bucket")
/// .build());
///
/// var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
/// .namespace("example_namespace")
/// .tableBucketArn(exampleTableBucket.arn())
/// .build());
///
/// var example = new Table("example", TableArgs.builder()
/// .name("example_table")
/// .namespace(exampleNamespace.namespace())
/// .tableBucketArn(exampleNamespace.tableBucketArn())
/// .format("ICEBERG")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3tables:Table
/// properties:
/// name: example_table
/// namespace: ${exampleNamespace.namespace}
/// tableBucketArn: ${exampleNamespace.tableBucketArn}
/// format: ICEBERG
/// exampleNamespace:
/// type: aws:s3tables:Namespace
/// name: example
/// properties:
/// namespace: example_namespace
/// tableBucketArn: ${exampleTableBucket.arn}
/// exampleTableBucket:
/// type: aws:s3tables:TableBucket
/// name: example
/// properties:
/// name: example-bucket
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Metadata Schema
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleTableBucket = new aws.s3tables.TableBucket("example", {name: "example-bucket"});
/// const exampleNamespace = new aws.s3tables.Namespace("example", {
/// namespace: "example_namespace",
/// tableBucketArn: exampleTableBucket.arn,
/// });
/// const example = new aws.s3tables.Table("example", {
/// name: "example_table",
/// namespace: exampleNamespace.namespace,
/// tableBucketArn: exampleNamespace.tableBucketArn,
/// format: "ICEBERG",
/// metadata: {
/// iceberg: {
/// schema: {
/// fields: [
/// {
/// name: "id",
/// type: "long",
/// required: true,
/// },
/// {
/// name: "name",
/// type: "string",
/// required: true,
/// },
/// {
/// name: "created_at",
/// type: "timestamp",
/// required: false,
/// },
/// {
/// name: "price",
/// type: "decimal(10,2)",
/// required: false,
/// },
/// ],
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_table_bucket = aws.s3tables.TableBucket("example", name="example-bucket")
/// example_namespace = aws.s3tables.Namespace("example",
/// namespace="example_namespace",
/// table_bucket_arn=example_table_bucket.arn)
/// example = aws.s3tables.Table("example",
/// name="example_table",
/// namespace=example_namespace.namespace,
/// table_bucket_arn=example_namespace.table_bucket_arn,
/// format="ICEBERG",
/// metadata={
/// "iceberg": {
/// "schema": {
/// "fields": [
/// {
/// "name": "id",
/// "type": "long",
/// "required": True,
/// },
/// {
/// "name": "name",
/// "type": "string",
/// "required": True,
/// },
/// {
/// "name": "created_at",
/// "type": "timestamp",
/// "required": False,
/// },
/// {
/// "name": "price",
/// "type": "decimal(10,2)",
/// "required": False,
/// },
/// ],
/// },
/// },
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
/// var exampleTableBucket = new Aws.S3Tables.TableBucket("example", new()
/// {
/// Name = "example-bucket",
/// });
///
/// var exampleNamespace = new Aws.S3Tables.Namespace("example", new()
/// {
/// NameSpace = "example_namespace",
/// TableBucketArn = exampleTableBucket.Arn,
/// });
///
/// var example = new Aws.S3Tables.Table("example", new()
/// {
/// Name = "example_table",
/// Namespace = exampleNamespace.NameSpace,
/// TableBucketArn = exampleNamespace.TableBucketArn,
/// Format = "ICEBERG",
/// Metadata = new Aws.S3Tables.Inputs.TableMetadataArgs
/// {
/// Iceberg = new Aws.S3Tables.Inputs.TableMetadataIcebergArgs
/// {
/// Schema = new Aws.S3Tables.Inputs.TableMetadataIcebergSchemaArgs
/// {
/// Fields = new[]
/// {
/// new Aws.S3Tables.Inputs.TableMetadataIcebergSchemaFieldArgs
/// {
/// Name = "id",
/// Type = "long",
/// Required = true,
/// },
/// new Aws.S3Tables.Inputs.TableMetadataIcebergSchemaFieldArgs
/// {
/// Name = "name",
/// Type = "string",
/// Required = true,
/// },
/// new Aws.S3Tables.Inputs.TableMetadataIcebergSchemaFieldArgs
/// {
/// Name = "created_at",
/// Type = "timestamp",
/// Required = false,
/// },
/// new Aws.S3Tables.Inputs.TableMetadataIcebergSchemaFieldArgs
/// {
/// Name = "price",
/// Type = "decimal(10,2)",
/// Required = false,
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3tables"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleTableBucket, err := s3tables.NewTableBucket(ctx, "example", &s3tables.TableBucketArgs{
/// Name: pulumi.String("example-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleNamespace, err := s3tables.NewNamespace(ctx, "example", &s3tables.NamespaceArgs{
/// Namespace:      pulumi.String("example_namespace"),
/// TableBucketArn: exampleTableBucket.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3tables.NewTable(ctx, "example", &s3tables.TableArgs{
/// Name:           pulumi.String("example_table"),
/// Namespace:      exampleNamespace.Namespace,
/// TableBucketArn: exampleNamespace.TableBucketArn,
/// Format:         pulumi.String("ICEBERG"),
/// Metadata: &s3tables.TableMetadataArgs{
/// Iceberg: &s3tables.TableMetadataIcebergArgs{
/// Schema: &s3tables.TableMetadataIcebergSchemaArgs{
/// Fields: s3tables.TableMetadataIcebergSchemaFieldArray{
/// &s3tables.TableMetadataIcebergSchemaFieldArgs{
/// Name:     pulumi.String("id"),
/// Type:     pulumi.String("long"),
/// Required: pulumi.Bool(true),
/// },
/// &s3tables.TableMetadataIcebergSchemaFieldArgs{
/// Name:     pulumi.String("name"),
/// Type:     pulumi.String("string"),
/// Required: pulumi.Bool(true),
/// },
/// &s3tables.TableMetadataIcebergSchemaFieldArgs{
/// Name:     pulumi.String("created_at"),
/// Type:     pulumi.String("timestamp"),
/// Required: pulumi.Bool(false),
/// },
/// &s3tables.TableMetadataIcebergSchemaFieldArgs{
/// Name:     pulumi.String("price"),
/// Type:     pulumi.String("decimal(10,2)"),
/// Required: pulumi.Bool(false),
/// },
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var exampleTableBucket = new TableBucket("exampleTableBucket", TableBucketArgs.builder()
/// .name("example-bucket")
/// .build());
///
/// var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
/// .namespace("example_namespace")
/// .tableBucketArn(exampleTableBucket.arn())
/// .build());
///
/// var example = new Table("example", TableArgs.builder()
/// .name("example_table")
/// .namespace(exampleNamespace.namespace())
/// .tableBucketArn(exampleNamespace.tableBucketArn())
/// .format("ICEBERG")
/// .metadata(TableMetadataArgs.builder()
/// .iceberg(TableMetadataIcebergArgs.builder()
/// .schema(TableMetadataIcebergSchemaArgs.builder()
/// .fields(
/// TableMetadataIcebergSchemaFieldArgs.builder()
/// .name("id")
/// .type("long")
/// .required(true)
/// .build(),
/// TableMetadataIcebergSchemaFieldArgs.builder()
/// .name("name")
/// .type("string")
/// .required(true)
/// .build(),
/// TableMetadataIcebergSchemaFieldArgs.builder()
/// .name("created_at")
/// .type("timestamp")
/// .required(false)
/// .build(),
/// TableMetadataIcebergSchemaFieldArgs.builder()
/// .name("price")
/// .type("decimal(10,2)")
/// .required(false)
/// .build())
/// .build())
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
/// type: aws:s3tables:Table
/// properties:
/// name: example_table
/// namespace: ${exampleNamespace.namespace}
/// tableBucketArn: ${exampleNamespace.tableBucketArn}
/// format: ICEBERG
/// metadata:
/// iceberg:
/// schema:
/// fields:
/// - name: id
/// type: long
/// required: true
/// - name: name
/// type: string
/// required: true
/// - name: created_at
/// type: timestamp
/// required: false
/// - name: price
/// type: decimal(10,2)
/// required: false
/// exampleNamespace:
/// type: aws:s3tables:Namespace
/// name: example
/// properties:
/// namespace: example_namespace
/// tableBucketArn: ${exampleTableBucket.arn}
/// exampleTableBucket:
/// type: aws:s3tables:TableBucket
/// name: example
/// properties:
/// name: example-bucket
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table using the <span pulumi-lang-nodejs="`tableBucketArn`" pulumi-lang-dotnet="`TableBucketArn`" pulumi-lang-go="`tableBucketArn`" pulumi-lang-python="`table_bucket_arn`" pulumi-lang-yaml="`tableBucketArn`" pulumi-lang-java="`tableBucketArn`">`table_bucket_arn`</span>, the value of <span pulumi-lang-nodejs="`namespace`" pulumi-lang-dotnet="`Namespace`" pulumi-lang-go="`namespace`" pulumi-lang-python="`namespace`" pulumi-lang-yaml="`namespace`" pulumi-lang-java="`namespace`">`namespace`</span>, and the value of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>, separated by a semicolon (`;`). For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/table:Table example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket;example-namespace;example-table'
/// ```
class Table3 extends CustomResource {
  /// ARN of the table.
  late final Output<String> arn;

  /// Date and time when the namespace was created.
  late final Output<String> createdAt;

  /// Account ID of the account that created the namespace.
  late final Output<String> createdBy;

  /// A single table bucket encryption configuration object.
  /// See <span pulumi-lang-nodejs="`encryptionConfiguration`" pulumi-lang-dotnet="`EncryptionConfiguration`" pulumi-lang-go="`encryptionConfiguration`" pulumi-lang-python="`encryption_configuration`" pulumi-lang-yaml="`encryptionConfiguration`" pulumi-lang-java="`encryptionConfiguration`">`encryption_configuration`</span> below.
  late final Output<TableEncryptionConfiguration> encryptionConfiguration;

  /// Format of the table.
  /// Must be `ICEBERG`.
  late final Output<String> format;

  /// A single table bucket maintenance configuration object.
  /// See <span pulumi-lang-nodejs="`maintenanceConfiguration`" pulumi-lang-dotnet="`MaintenanceConfiguration`" pulumi-lang-go="`maintenanceConfiguration`" pulumi-lang-python="`maintenance_configuration`" pulumi-lang-yaml="`maintenanceConfiguration`" pulumi-lang-java="`maintenanceConfiguration`">`maintenance_configuration`</span> below.
  late final Output<TableMaintenanceConfiguration> maintenanceConfiguration;

  /// Contains details about the table metadata. This configuration specifies the metadata format and schema for the table. Currently only supports Iceberg format.
  /// See <span pulumi-lang-nodejs="`metadata`" pulumi-lang-dotnet="`Metadata`" pulumi-lang-go="`metadata`" pulumi-lang-python="`metadata`" pulumi-lang-yaml="`metadata`" pulumi-lang-java="`metadata`">`metadata`</span> below.
  late final Output<TableMetadata?> metadata;

  /// Location of table metadata.
  late final Output<String> metadataLocation;

  /// Date and time when the namespace was last modified.
  late final Output<String> modifiedAt;

  /// Account ID of the account that last modified the namespace.
  late final Output<String> modifiedBy;

  /// Name of the table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  /// A full list of table naming rules can be found in the [S3 Tables documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-naming.html#naming-rules-table).
  late final Output<String> name;

  /// Name of the namespace for this table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  late final Output<String> namespace;

  /// Account ID of the account that owns the namespace.
  late final Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN referencing the Table Bucket that contains this Namespace.
  ///
  /// The following arguments are optional:
  late final Output<String> tableBucketArn;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of the table.
  /// One of <span pulumi-lang-nodejs="`customer`" pulumi-lang-dotnet="`Customer`" pulumi-lang-go="`customer`" pulumi-lang-python="`customer`" pulumi-lang-yaml="`customer`" pulumi-lang-java="`customer`">`customer`</span> or <span pulumi-lang-nodejs="`aws`" pulumi-lang-dotnet="`Aws`" pulumi-lang-go="`aws`" pulumi-lang-python="`aws`" pulumi-lang-yaml="`aws`" pulumi-lang-java="`aws`">`aws`</span>.
  late final Output<String> type;

  /// Identifier for the current version of table data.
  late final Output<String> versionToken;

  /// S3 URI pointing to the S3 Bucket that contains the table data.
  late final Output<String> warehouseLocation;

  Table3(
    String name, {
    TableArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/table:Table',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.encryptionConfiguration =
        registerOutput<TableEncryptionConfiguration>('encryptionConfiguration');
    this.format = registerOutput<String>('format');
    this.maintenanceConfiguration =
        registerOutput<TableMaintenanceConfiguration>(
            'maintenanceConfiguration');
    this.metadata = registerOutput<TableMetadata?>('metadata');
    this.metadataLocation = registerOutput<String>('metadataLocation');
    this.modifiedAt = registerOutput<String>('modifiedAt');
    this.modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String>('namespace');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.region = registerOutput<String>('region');
    this.tableBucketArn = registerOutput<String>('tableBucketArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.versionToken = registerOutput<String>('versionToken');
    this.warehouseLocation = registerOutput<String>('warehouseLocation');
  }
}
