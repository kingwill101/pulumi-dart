import 'package:pulumi/pulumi.dart';
import '../catalog_table_optimizer_configuration/catalog_table_optimizer_configuration.dart';
import 'catalog_table_optimizer_args.dart';

/// Resource for managing an AWS Glue Catalog Table Optimizer.
///
/// ## Example Usage
///
/// ### Compaction Optimizer
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogTableOptimizer("example", {
/// catalogId: "123456789012",
/// databaseName: "example_database",
/// tableName: "example_table",
/// configuration: {
/// roleArn: "arn:aws:iam::123456789012:role/example-role",
/// enabled: true,
/// },
/// type: "compaction",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogTableOptimizer("example",
/// catalog_id="123456789012",
/// database_name="example_database",
/// table_name="example_table",
/// configuration={
/// "role_arn": "arn:aws:iam::123456789012:role/example-role",
/// "enabled": True,
/// },
/// type="compaction")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Glue.CatalogTableOptimizer("example", new()
/// {
/// CatalogId = "123456789012",
/// DatabaseName = "example_database",
/// TableName = "example_table",
/// Configuration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationArgs
/// {
/// RoleArn = "arn:aws:iam::123456789012:role/example-role",
/// Enabled = true,
/// },
/// Type = "compaction",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewCatalogTableOptimizer(ctx, "example", &glue.CatalogTableOptimizerArgs{
/// CatalogId:    pulumi.String("123456789012"),
/// DatabaseName: pulumi.String("example_database"),
/// TableName:    pulumi.String("example_table"),
/// Configuration: &glue.CatalogTableOptimizerConfigurationArgs{
/// RoleArn: pulumi.String("arn:aws:iam::123456789012:role/example-role"),
/// Enabled: pulumi.Bool(true),
/// },
/// Type: pulumi.String("compaction"),
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
/// import com.pulumi.aws.glue.CatalogTableOptimizer;
/// import com.pulumi.aws.glue.CatalogTableOptimizerArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationArgs;
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
/// var example = new CatalogTableOptimizer("example", CatalogTableOptimizerArgs.builder()
/// .catalogId("123456789012")
/// .databaseName("example_database")
/// .tableName("example_table")
/// .configuration(CatalogTableOptimizerConfigurationArgs.builder()
/// .roleArn("arn:aws:iam::123456789012:role/example-role")
/// .enabled(true)
/// .build())
/// .type("compaction")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:CatalogTableOptimizer
/// properties:
/// catalogId: '123456789012'
/// databaseName: example_database
/// tableName: example_table
/// configuration:
/// roleArn: arn:aws:iam::123456789012:role/example-role
/// enabled: true
/// type: compaction
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Snapshot Retention Optimizer
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogTableOptimizer("example", {
/// catalogId: "123456789012",
/// databaseName: "example_database",
/// tableName: "example_table",
/// configuration: {
/// roleArn: "arn:aws:iam::123456789012:role/example-role",
/// enabled: true,
/// retentionConfiguration: {
/// icebergConfiguration: {
/// snapshotRetentionPeriodInDays: 7,
/// numberOfSnapshotsToRetain: 3,
/// cleanExpiredFiles: true,
/// },
/// },
/// },
/// type: "retention",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogTableOptimizer("example",
/// catalog_id="123456789012",
/// database_name="example_database",
/// table_name="example_table",
/// configuration={
/// "role_arn": "arn:aws:iam::123456789012:role/example-role",
/// "enabled": True,
/// "retention_configuration": {
/// "iceberg_configuration": {
/// "snapshot_retention_period_in_days": 7,
/// "number_of_snapshots_to_retain": 3,
/// "clean_expired_files": True,
/// },
/// },
/// },
/// type="retention")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Glue.CatalogTableOptimizer("example", new()
/// {
/// CatalogId = "123456789012",
/// DatabaseName = "example_database",
/// TableName = "example_table",
/// Configuration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationArgs
/// {
/// RoleArn = "arn:aws:iam::123456789012:role/example-role",
/// Enabled = true,
/// RetentionConfiguration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationRetentionConfigurationArgs
/// {
/// IcebergConfiguration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfigurationArgs
/// {
/// SnapshotRetentionPeriodInDays = 7,
/// NumberOfSnapshotsToRetain = 3,
/// CleanExpiredFiles = true,
/// },
/// },
/// },
/// Type = "retention",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewCatalogTableOptimizer(ctx, "example", &glue.CatalogTableOptimizerArgs{
/// CatalogId:    pulumi.String("123456789012"),
/// DatabaseName: pulumi.String("example_database"),
/// TableName:    pulumi.String("example_table"),
/// Configuration: &glue.CatalogTableOptimizerConfigurationArgs{
/// RoleArn: pulumi.String("arn:aws:iam::123456789012:role/example-role"),
/// Enabled: pulumi.Bool(true),
/// RetentionConfiguration: &glue.CatalogTableOptimizerConfigurationRetentionConfigurationArgs{
/// IcebergConfiguration: &glue.CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfigurationArgs{
/// SnapshotRetentionPeriodInDays: pulumi.Int(7),
/// NumberOfSnapshotsToRetain:     pulumi.Int(3),
/// CleanExpiredFiles:             pulumi.Bool(true),
/// },
/// },
/// },
/// Type: pulumi.String("retention"),
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
/// import com.pulumi.aws.glue.CatalogTableOptimizer;
/// import com.pulumi.aws.glue.CatalogTableOptimizerArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationRetentionConfigurationArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfigurationArgs;
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
/// var example = new CatalogTableOptimizer("example", CatalogTableOptimizerArgs.builder()
/// .catalogId("123456789012")
/// .databaseName("example_database")
/// .tableName("example_table")
/// .configuration(CatalogTableOptimizerConfigurationArgs.builder()
/// .roleArn("arn:aws:iam::123456789012:role/example-role")
/// .enabled(true)
/// .retentionConfiguration(CatalogTableOptimizerConfigurationRetentionConfigurationArgs.builder()
/// .icebergConfiguration(CatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfigurationArgs.builder()
/// .snapshotRetentionPeriodInDays(7)
/// .numberOfSnapshotsToRetain(3)
/// .cleanExpiredFiles(true)
/// .build())
/// .build())
/// .build())
/// .type("retention")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:CatalogTableOptimizer
/// properties:
/// catalogId: '123456789012'
/// databaseName: example_database
/// tableName: example_table
/// configuration:
/// roleArn: arn:aws:iam::123456789012:role/example-role
/// enabled: true
/// retentionConfiguration:
/// icebergConfiguration:
/// snapshotRetentionPeriodInDays: 7
/// numberOfSnapshotsToRetain: 3
/// cleanExpiredFiles: true
/// type: retention
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Orphan File Deletion Optimizer
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.CatalogTableOptimizer("example", {
/// catalogId: "123456789012",
/// databaseName: "example_database",
/// tableName: "example_table",
/// configuration: {
/// roleArn: "arn:aws:iam::123456789012:role/example-role",
/// enabled: true,
/// orphanFileDeletionConfiguration: {
/// icebergConfiguration: {
/// orphanFileRetentionPeriodInDays: 7,
/// location: "s3://example-bucket/example_table/",
/// },
/// },
/// },
/// type: "orphan_file_deletion",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.CatalogTableOptimizer("example",
/// catalog_id="123456789012",
/// database_name="example_database",
/// table_name="example_table",
/// configuration={
/// "role_arn": "arn:aws:iam::123456789012:role/example-role",
/// "enabled": True,
/// "orphan_file_deletion_configuration": {
/// "iceberg_configuration": {
/// "orphan_file_retention_period_in_days": 7,
/// "location": "s3://example-bucket/example_table/",
/// },
/// },
/// },
/// type="orphan_file_deletion")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Glue.CatalogTableOptimizer("example", new()
/// {
/// CatalogId = "123456789012",
/// DatabaseName = "example_database",
/// TableName = "example_table",
/// Configuration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationArgs
/// {
/// RoleArn = "arn:aws:iam::123456789012:role/example-role",
/// Enabled = true,
/// OrphanFileDeletionConfiguration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationArgs
/// {
/// IcebergConfiguration = new Aws.Glue.Inputs.CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfigurationArgs
/// {
/// OrphanFileRetentionPeriodInDays = 7,
/// Location = "s3://example-bucket/example_table/",
/// },
/// },
/// },
/// Type = "orphan_file_deletion",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewCatalogTableOptimizer(ctx, "example", &glue.CatalogTableOptimizerArgs{
/// CatalogId:    pulumi.String("123456789012"),
/// DatabaseName: pulumi.String("example_database"),
/// TableName:    pulumi.String("example_table"),
/// Configuration: &glue.CatalogTableOptimizerConfigurationArgs{
/// RoleArn: pulumi.String("arn:aws:iam::123456789012:role/example-role"),
/// Enabled: pulumi.Bool(true),
/// OrphanFileDeletionConfiguration: &glue.CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationArgs{
/// IcebergConfiguration: &glue.CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfigurationArgs{
/// OrphanFileRetentionPeriodInDays: pulumi.Int(7),
/// Location:                        pulumi.String("s3://example-bucket/example_table/"),
/// },
/// },
/// },
/// Type: pulumi.String("orphan_file_deletion"),
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
/// import com.pulumi.aws.glue.CatalogTableOptimizer;
/// import com.pulumi.aws.glue.CatalogTableOptimizerArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfigurationArgs;
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
/// var example = new CatalogTableOptimizer("example", CatalogTableOptimizerArgs.builder()
/// .catalogId("123456789012")
/// .databaseName("example_database")
/// .tableName("example_table")
/// .configuration(CatalogTableOptimizerConfigurationArgs.builder()
/// .roleArn("arn:aws:iam::123456789012:role/example-role")
/// .enabled(true)
/// .orphanFileDeletionConfiguration(CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationArgs.builder()
/// .icebergConfiguration(CatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfigurationArgs.builder()
/// .orphanFileRetentionPeriodInDays(7)
/// .location("s3://example-bucket/example_table/")
/// .build())
/// .build())
/// .build())
/// .type("orphan_file_deletion")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:CatalogTableOptimizer
/// properties:
/// catalogId: '123456789012'
/// databaseName: example_database
/// tableName: example_table
/// configuration:
/// roleArn: arn:aws:iam::123456789012:role/example-role
/// enabled: true
/// orphanFileDeletionConfiguration:
/// icebergConfiguration:
/// orphanFileRetentionPeriodInDays: 7
/// location: s3://example-bucket/example_table/
/// type: orphan_file_deletion
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Glue Catalog Table Optimizer using the `catalog_id,database_name,table_name,type`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/catalogTableOptimizer:CatalogTableOptimizer example 123456789012,example_database,example_table,compaction
/// ```
class CatalogTableOptimizer extends CustomResource {
  /// The Catalog ID of the table.
  late final Output<String> catalogId;

  /// A configuration block that defines the table optimizer settings. See Configuration for additional details.
  late final Output<CatalogTableOptimizerConfiguration> configuration;

  /// The name of the database in the catalog in which the table resides.
  late final Output<String> databaseName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the table.
  late final Output<String> tableName;

  /// The type of table optimizer. Valid values are <span pulumi-lang-nodejs="`compaction`" pulumi-lang-dotnet="`Compaction`" pulumi-lang-go="`compaction`" pulumi-lang-python="`compaction`" pulumi-lang-yaml="`compaction`" pulumi-lang-java="`compaction`">`compaction`</span>, <span pulumi-lang-nodejs="`retention`" pulumi-lang-dotnet="`Retention`" pulumi-lang-go="`retention`" pulumi-lang-python="`retention`" pulumi-lang-yaml="`retention`" pulumi-lang-java="`retention`">`retention`</span>, and <span pulumi-lang-nodejs="`orphanFileDeletion`" pulumi-lang-dotnet="`OrphanFileDeletion`" pulumi-lang-go="`orphanFileDeletion`" pulumi-lang-python="`orphan_file_deletion`" pulumi-lang-yaml="`orphanFileDeletion`" pulumi-lang-java="`orphanFileDeletion`">`orphan_file_deletion`</span>.
  late final Output<String> type;

  CatalogTableOptimizer(
    String name, {
    CatalogTableOptimizerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/catalogTableOptimizer:CatalogTableOptimizer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.configuration =
        registerOutput<CatalogTableOptimizerConfiguration>('configuration');
    this.databaseName = registerOutput<String>('databaseName');
    this.region = registerOutput<String>('region');
    this.tableName = registerOutput<String>('tableName');
    this.type = registerOutput<String>('type');
  }
}
