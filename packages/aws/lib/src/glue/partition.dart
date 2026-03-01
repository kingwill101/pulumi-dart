import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_args.dart';
import 'partition_storage_descriptor.dart';

/// Provides a Glue Partition Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Partition("example", {
///     databaseName: "some-database",
///     tableName: "some-table",
///     partitionValues: ["some-value"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Partition("example",
///     database_name="some-database",
///     table_name="some-table",
///     partition_values=["some-value"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Partition("example", new()
///     {
///         DatabaseName = "some-database",
///         TableName = "some-table",
///         PartitionValues = new[]
///         {
///             "some-value",
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
/// 		_, err := glue.NewPartition(ctx, "example", &glue.PartitionArgs{
/// 			DatabaseName: pulumi.String("some-database"),
/// 			TableName:    pulumi.String("some-table"),
/// 			PartitionValues: pulumi.StringArray{
/// 				pulumi.String("some-value"),
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
/// import com.pulumi.aws.glue.Partition;
/// import com.pulumi.aws.glue.PartitionArgs;
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
///         var example = new Partition("example", PartitionArgs.builder()
///             .databaseName("some-database")
///             .tableName("some-table")
///             .partitionValues("some-value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Partition
///     properties:
///       databaseName: some-database
///       tableName: some-table
///       partitionValues:
///         - some-value
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Partitions using the catalog ID (usually AWS account ID), database name, table name and partition values. For example:
///
/// ```sh
/// $ pulumi import aws:glue/partition:Partition part 123456789012:MyDatabase:MyTable:val1#val2
/// ```
class Partition extends pulumi.CustomResource {
  /// ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  late final pulumi.Output<String> catalogId;

  /// The time at which the partition was created.
  late final pulumi.Output<String> creationTime;

  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  late final pulumi.Output<String> databaseName;

  /// The last time at which the partition was accessed.
  late final pulumi.Output<String> lastAccessedTime;

  /// The last time at which column statistics were computed for this partition.
  late final pulumi.Output<String> lastAnalyzedTime;

  /// Properties associated with this table, as a list of key-value pairs.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// The values that define the partition.
  late final pulumi.Output<List<String>> partitionValues;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A storage descriptor object containing information about the physical storage of this table. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor) for a full explanation of this object.
  late final pulumi.Output<PartitionStorageDescriptor?> storageDescriptor;
  late final pulumi.Output<String> tableName;

  /// Creates a new [Partition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Partition]. {@macro pulumi_glue_partition_partition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Partition(
    String name, {
    PartitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/partition:Partition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.creationTime = registerOutput<String>('creationTime');
    this.databaseName = registerOutput<String>('databaseName');
    this.lastAccessedTime = registerOutput<String>('lastAccessedTime');
    this.lastAnalyzedTime = registerOutput<String>('lastAnalyzedTime');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.partitionValues = registerOutput<List<String>>('partitionValues');
    this.region = registerOutput<String>('region');
    this.storageDescriptor = registerOutput<PartitionStorageDescriptor?>(
      'storageDescriptor',
    );
    this.tableName = registerOutput<String>('tableName');
  }
}
