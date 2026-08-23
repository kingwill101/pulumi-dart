import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_optimizer_args.dart';
import 'catalog_table_optimizer_configuration.dart';
import 'catalog_table_optimizer_state.dart';

/// Resource for managing an AWS Glue Catalog Table Optimizer.
///
/// ## Example Usage
///
/// ### Compaction Optimizer
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogTableOptimizer("example", {
///     catalogId: "123456789012",
///     databaseName: "example_database",
///     tableName: "example_table",
///     configuration: {
///         roleArn: "arn:aws:iam::123456789012:role/example-role",
///         enabled: true,
///         compactionConfiguration: {
///             icebergConfiguration: {
///                 strategy: "binpack",
///                 minInputFiles: 5,
///                 deleteFileThreshold: 1,
///             },
///         },
///     },
///     type: "compaction",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogTableOptimizer("example",
///     catalog_id="123456789012",
///     database_name="example_database",
///     table_name="example_table",
///     configuration={
///         "role_arn": "arn:aws:iam::123456789012:role/example-role",
///         "enabled": True,
///         "compaction_configuration": {
///             "iceberg_configuration": {
///                 "strategy": "binpack",
///                 "min_input_files": 5,
///                 "delete_file_threshold": 1,
///             },
///         },
///     },
///     type="compaction")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.CatalogTableOptimizer("example", new()
///     {
///         CatalogId = "123456789012",
///         DatabaseName = "example_database",
///         TableName = "example_table",
///         Configuration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationArgs
///         {
///             RoleArn = "arn:aws:iam::123456789012:role/example-role",
///             Enabled = true,
///             CompactionConfiguration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationCompactionConfigurationArgs
///             {
///                 IcebergConfiguration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfigurationArgs
///                 {
///                     Strategy = "binpack",
///                     MinInputFiles = 5,
///                     DeleteFileThreshold = 1,
///                 },
///             },
///         },
///         Type = "compaction",
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
/// 		_, err := glue.NewCatalogTableOptimizer(ctx, "example", &glue.CatalogTableOptimizerArgs{
/// 			CatalogId:    pulumi.String("123456789012"),
/// 			DatabaseName: pulumi.String("example_database"),
/// 			TableName:    pulumi.String("example_table"),
/// 			Configuration: &glue.CatalogTableOptimizerConfigurationArgs{
/// 				RoleArn: pulumi.String("arn:aws:iam::123456789012:role/example-role"),
/// 				Enabled: pulumi.Bool(true),
/// 				CompactionConfiguration: &glue.CatalogTableOptimizerConfigurationCompactionConfigurationArgs{
/// 					IcebergConfiguration: &glue.CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfigurationArgs{
/// 						Strategy:            pulumi.String("binpack"),
/// 						MinInputFiles:       pulumi.Int(5),
/// 						DeleteFileThreshold: pulumi.Int(1),
/// 					},
/// 				},
/// 			},
/// 			Type: pulumi.String("compaction"),
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
/// resource "aws_glue_catalogtableoptimizer" "example" {
///   catalog_id    = "123456789012"
///   database_name = "example_database"
///   table_name    = "example_table"
///   configuration = {
///     role_arn = "arn:aws:iam::123456789012:role/example-role"
///     enabled  = true
///     compaction_configuration = {
///       iceberg_configuration = {
///         strategy              = "binpack"
///         min_input_files       = 5
///         delete_file_threshold = 1
///       }
///     }
///   }
///   type = "compaction"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.CatalogTableOptimizer;
/// import com.pulumi.aws.glue.CatalogTableOptimizerArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationCompactionConfigurationArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfigurationArgs;
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
///         var example = new CatalogTableOptimizer("example", CatalogTableOptimizerArgs.builder()
///             .catalogId("123456789012")
///             .databaseName("example_database")
///             .tableName("example_table")
///             .configuration(CatalogTableOptimizerConfigurationArgs.builder()
///                 .roleArn("arn:aws:iam::123456789012:role/example-role")
///                 .enabled(true)
///                 .compactionConfiguration(CatalogTableOptimizerConfigurationCompactionConfigurationArgs.builder()
///                     .icebergConfiguration(CatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfigurationArgs.builder()
///                         .strategy("binpack")
///                         .minInputFiles(5)
///                         .deleteFileThreshold(1)
///                         .build())
///                     .build())
///                 .build())
///             .type("compaction")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:CatalogTableOptimizer
///     properties:
///       catalogId: '123456789012'
///       databaseName: example_database
///       tableName: example_table
///       configuration:
///         roleArn: arn:aws:iam::123456789012:role/example-role
///         enabled: true
///         compactionConfiguration:
///           icebergConfiguration:
///             strategy: binpack
///             minInputFiles: 5
///             deleteFileThreshold: 1
///       type: compaction
/// ```
///
///
/// ### Snapshot Retention Optimizer
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogTableOptimizer("example", {
///     catalogId: "123456789012",
///     databaseName: "example_database",
///     tableName: "example_table",
///     configuration: {
///         roleArn: "arn:aws:iam::123456789012:role/example-role",
///         enabled: true,
///         retentionConfiguration: {
///             icebergConfiguration: {
///                 snapshotRetentionPeriodInDays: 7,
///                 numberOfSnapshotsToRetain: 3,
///                 cleanExpiredFiles: true,
///             },
///         },
///     },
///     type: "retention",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogTableOptimizer("example",
///     catalog_id="123456789012",
///     database_name="example_database",
///     table_name="example_table",
///     configuration={
///         "role_arn": "arn:aws:iam::123456789012:role/example-role",
///         "enabled": True,
///         "retention_configuration": {
///             "iceberg_configuration": {
///                 "snapshot_retention_period_in_days": 7,
///                 "number_of_snapshots_to_retain": 3,
///                 "clean_expired_files": True,
///             },
///         },
///     },
///     type="retention")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.CatalogTableOptimizer("example", new()
///     {
///         CatalogId = "123456789012",
///         DatabaseName = "example_database",
///         TableName = "example_table",
///         Configuration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationArgs
///         {
///             RoleArn = "arn:aws:iam::123456789012:role/example-role",
///             Enabled = true,
///             RetentionConfiguration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationRetentionConfigurationArgs
///             {
///                 IcebergConfiguration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfigurationArgs
///                 {
///                     SnapshotRetentionPeriodInDays = 7,
///                     NumberOfSnapshotsToRetain = 3,
///                     CleanExpiredFiles = true,
///                 },
///             },
///         },
///         Type = "retention",
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
/// 		_, err := glue.NewCatalogTableOptimizer(ctx, "example", &glue.CatalogTableOptimizerArgs{
/// 			CatalogId:    pulumi.String("123456789012"),
/// 			DatabaseName: pulumi.String("example_database"),
/// 			TableName:    pulumi.String("example_table"),
/// 			Configuration: &glue.CatalogTableOptimizerConfigurationArgs{
/// 				RoleArn: pulumi.String("arn:aws:iam::123456789012:role/example-role"),
/// 				Enabled: pulumi.Bool(true),
/// 				RetentionConfiguration: &glue.CatalogTableOptimizerConfigurationRetentionConfigurationArgs{
/// 					IcebergConfiguration: &glue.CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfigurationArgs{
/// 						SnapshotRetentionPeriodInDays: pulumi.Int(7),
/// 						NumberOfSnapshotsToRetain:     pulumi.Int(3),
/// 						CleanExpiredFiles:             pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			Type: pulumi.String("retention"),
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
/// resource "aws_glue_catalogtableoptimizer" "example" {
///   catalog_id    = "123456789012"
///   database_name = "example_database"
///   table_name    = "example_table"
///   configuration = {
///     role_arn = "arn:aws:iam::123456789012:role/example-role"
///     enabled  = true
///     retention_configuration = {
///       iceberg_configuration = {
///         snapshot_retention_period_in_days = 7
///         number_of_snapshots_to_retain     = 3
///         clean_expired_files               = true
///       }
///     }
///   }
///   type = "retention"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.CatalogTableOptimizer;
/// import com.pulumi.aws.glue.CatalogTableOptimizerArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationRetentionConfigurationArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfigurationArgs;
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
///         var example = new CatalogTableOptimizer("example", CatalogTableOptimizerArgs.builder()
///             .catalogId("123456789012")
///             .databaseName("example_database")
///             .tableName("example_table")
///             .configuration(CatalogTableOptimizerConfigurationArgs.builder()
///                 .roleArn("arn:aws:iam::123456789012:role/example-role")
///                 .enabled(true)
///                 .retentionConfiguration(CatalogTableOptimizerConfigurationRetentionConfigurationArgs.builder()
///                     .icebergConfiguration(CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfigurationArgs.builder()
///                         .snapshotRetentionPeriodInDays(7)
///                         .numberOfSnapshotsToRetain(3)
///                         .cleanExpiredFiles(true)
///                         .build())
///                     .build())
///                 .build())
///             .type("retention")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:CatalogTableOptimizer
///     properties:
///       catalogId: '123456789012'
///       databaseName: example_database
///       tableName: example_table
///       configuration:
///         roleArn: arn:aws:iam::123456789012:role/example-role
///         enabled: true
///         retentionConfiguration:
///           icebergConfiguration:
///             snapshotRetentionPeriodInDays: 7
///             numberOfSnapshotsToRetain: 3
///             cleanExpiredFiles: true
///       type: retention
/// ```
///
///
/// ### Orphan File Deletion Optimizer
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogTableOptimizer("example", {
///     catalogId: "123456789012",
///     databaseName: "example_database",
///     tableName: "example_table",
///     configuration: {
///         roleArn: "arn:aws:iam::123456789012:role/example-role",
///         enabled: true,
///         orphanFileDeletionConfiguration: {
///             icebergConfiguration: {
///                 orphanFileRetentionPeriodInDays: 7,
///                 location: "s3://example-bucket/example_table/",
///             },
///         },
///     },
///     type: "orphan_file_deletion",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogTableOptimizer("example",
///     catalog_id="123456789012",
///     database_name="example_database",
///     table_name="example_table",
///     configuration={
///         "role_arn": "arn:aws:iam::123456789012:role/example-role",
///         "enabled": True,
///         "orphan_file_deletion_configuration": {
///             "iceberg_configuration": {
///                 "orphan_file_retention_period_in_days": 7,
///                 "location": "s3://example-bucket/example_table/",
///             },
///         },
///     },
///     type="orphan_file_deletion")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.CatalogTableOptimizer("example", new()
///     {
///         CatalogId = "123456789012",
///         DatabaseName = "example_database",
///         TableName = "example_table",
///         Configuration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationArgs
///         {
///             RoleArn = "arn:aws:iam::123456789012:role/example-role",
///             Enabled = true,
///             OrphanFileDeletionConfiguration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationArgs
///             {
///                 IcebergConfiguration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfigurationArgs
///                 {
///                     OrphanFileRetentionPeriodInDays = 7,
///                     Location = "s3://example-bucket/example_table/",
///                 },
///             },
///         },
///         Type = "orphan_file_deletion",
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
/// 		_, err := glue.NewCatalogTableOptimizer(ctx, "example", &glue.CatalogTableOptimizerArgs{
/// 			CatalogId:    pulumi.String("123456789012"),
/// 			DatabaseName: pulumi.String("example_database"),
/// 			TableName:    pulumi.String("example_table"),
/// 			Configuration: &glue.CatalogTableOptimizerConfigurationArgs{
/// 				RoleArn: pulumi.String("arn:aws:iam::123456789012:role/example-role"),
/// 				Enabled: pulumi.Bool(true),
/// 				OrphanFileDeletionConfiguration: &glue.CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationArgs{
/// 					IcebergConfiguration: &glue.CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfigurationArgs{
/// 						OrphanFileRetentionPeriodInDays: pulumi.Int(7),
/// 						Location:                        pulumi.String("s3://example-bucket/example_table/"),
/// 					},
/// 				},
/// 			},
/// 			Type: pulumi.String("orphan_file_deletion"),
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
/// resource "aws_glue_catalogtableoptimizer" "example" {
///   catalog_id    = "123456789012"
///   database_name = "example_database"
///   table_name    = "example_table"
///   configuration = {
///     role_arn = "arn:aws:iam::123456789012:role/example-role"
///     enabled  = true
///     orphan_file_deletion_configuration = {
///       iceberg_configuration = {
///         orphan_file_retention_period_in_days = 7
///         location                             = "s3://example-bucket/example_table/"
///       }
///     }
///   }
///   type = "orphan_file_deletion"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.CatalogTableOptimizer;
/// import com.pulumi.aws.glue.CatalogTableOptimizerArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfigurationArgs;
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
///         var example = new CatalogTableOptimizer("example", CatalogTableOptimizerArgs.builder()
///             .catalogId("123456789012")
///             .databaseName("example_database")
///             .tableName("example_table")
///             .configuration(CatalogTableOptimizerConfigurationArgs.builder()
///                 .roleArn("arn:aws:iam::123456789012:role/example-role")
///                 .enabled(true)
///                 .orphanFileDeletionConfiguration(CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationArgs.builder()
///                     .icebergConfiguration(CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfigurationArgs.builder()
///                         .orphanFileRetentionPeriodInDays(7)
///                         .location("s3://example-bucket/example_table/")
///                         .build())
///                     .build())
///                 .build())
///             .type("orphan_file_deletion")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:CatalogTableOptimizer
///     properties:
///       catalogId: '123456789012'
///       databaseName: example_database
///       tableName: example_table
///       configuration:
///         roleArn: arn:aws:iam::123456789012:role/example-role
///         enabled: true
///         orphanFileDeletionConfiguration:
///           icebergConfiguration:
///             orphanFileRetentionPeriodInDays: 7
///             location: s3://example-bucket/example_table/
///       type: orphan_file_deletion
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Catalog Table Optimizer using the `catalog_id,database_name,table_name,type`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/catalogTableOptimizer:CatalogTableOptimizer example 123456789012,example_database,example_table,compaction
/// ```
class CatalogTableOptimizer extends pulumi.CustomResource {
  /// The Catalog ID of the table.
  late final pulumi.Output<String> catalogId;
  /// A configuration block that defines the table optimizer settings. See Configuration for additional details.
  late final pulumi.Output<CatalogTableOptimizerConfiguration> configuration;
  /// The name of the database in the catalog in which the table resides.
  late final pulumi.Output<String> databaseName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the table.
  late final pulumi.Output<String> tableName;
  /// The type of table optimizer. Valid values are `compaction`, `retention`, and `orphanFileDeletion`.
  late final pulumi.Output<String> type;

  /// Creates a new [CatalogTableOptimizer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CatalogTableOptimizer]. {@macro pulumi_glue_catalog_table_optimizer_catalog_table_optimizer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CatalogTableOptimizer(
    String name, {
    CatalogTableOptimizerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/catalogTableOptimizer:CatalogTableOptimizer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalogId = registerOutput<String>('catalogId');
    configuration = registerOutput<CatalogTableOptimizerConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTableOptimizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    databaseName = registerOutput<String>('databaseName');
    region = registerOutput<String>('region');
    tableName = registerOutput<String>('tableName');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [CatalogTableOptimizer] resource's state with the given [name] and [id].
  static CatalogTableOptimizer get(
    String name,
    pulumi.Input<String> id, {
    CatalogTableOptimizerState? state,
  }) {
    return CatalogTableOptimizer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CatalogTableOptimizer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/catalogTableOptimizer:CatalogTableOptimizer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalogId = registerOutput<String>('catalogId');
    configuration = registerOutput<CatalogTableOptimizerConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CatalogTableOptimizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    databaseName = registerOutput<String>('databaseName');
    region = registerOutput<String>('region');
    tableName = registerOutput<String>('tableName');
    type = registerOutput<String>('type');
  }
}
