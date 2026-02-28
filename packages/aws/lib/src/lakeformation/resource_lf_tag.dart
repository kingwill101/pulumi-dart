import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_lf_tag_args.dart';
import 'resource_lf_tag_database.dart';
import 'resource_lf_tag_lf_tag.dart';
import 'resource_lf_tag_table.dart';
import 'resource_lf_tag_table_with_columns.dart';
import 'resource_lf_tag_timeouts.dart';

/// Resource for managing an AWS Lake Formation Resource LF Tag.
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
/// const example = new aws.lakeformation.ResourceLfTag("example", {
///     database: {
///         name: exampleAwsGlueCatalogDatabase.name,
///     },
///     lfTag: {
///         key: exampleAwsLakeformationLfTag.key,
///         value: "stowe",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.ResourceLfTag("example",
///     database={
///         "name": example_aws_glue_catalog_database["name"],
///     },
///     lf_tag={
///         "key": example_aws_lakeformation_lf_tag["key"],
///         "value": "stowe",
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
///     var example = new Aws.LakeFormation.ResourceLfTag("example", new()
///     {
///         Database = new Aws.LakeFormation.Inputs.ResourceLfTagDatabaseArgs
///         {
///             Name = exampleAwsGlueCatalogDatabase.Name,
///         },
///         LfTag = new Aws.LakeFormation.Inputs.ResourceLfTagLfTagArgs
///         {
///             Key = exampleAwsLakeformationLfTag.Key,
///             Value = "stowe",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewResourceLfTag(ctx, "example", &lakeformation.ResourceLfTagArgs{
/// 			Database: &lakeformation.ResourceLfTagDatabaseArgs{
/// 				Name: pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 			},
/// 			LfTag: &lakeformation.ResourceLfTagLfTagArgs{
/// 				Key:   pulumi.Any(exampleAwsLakeformationLfTag.Key),
/// 				Value: pulumi.String("stowe"),
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
/// import com.pulumi.aws.lakeformation.ResourceLfTag;
/// import com.pulumi.aws.lakeformation.ResourceLfTagArgs;
/// import com.pulumi.aws.lakeformation.inputs.ResourceLfTagDatabaseArgs;
/// import com.pulumi.aws.lakeformation.inputs.ResourceLfTagLfTagArgs;
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
///         var example = new ResourceLfTag("example", ResourceLfTagArgs.builder()
///             .database(ResourceLfTagDatabaseArgs.builder()
///                 .name(exampleAwsGlueCatalogDatabase.name())
///                 .build())
///             .lfTag(ResourceLfTagLfTagArgs.builder()
///                 .key(exampleAwsLakeformationLfTag.key())
///                 .value("stowe")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:ResourceLfTag
///     properties:
///       database:
///         name: ${exampleAwsGlueCatalogDatabase.name}
///       lfTag:
///         key: ${exampleAwsLakeformationLfTag.key}
///         value: stowe
/// ```
///
///
/// ## Import
///
/// You cannot import this resource.
class ResourceLfTag extends pulumi.CustomResource {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  late final pulumi.Output<String?> catalogId;

  /// Configuration block for a database resource. See Database for more details.
  late final pulumi.Output<ResourceLfTagDatabase?> database;

  /// Set of LF-tags to attach to the resource. See LF Tag for more details.
  ///
  /// Exactly one of the following is required:
  late final pulumi.Output<ResourceLfTagLfTag> lfTag;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block for a table resource. See Table for more details.
  late final pulumi.Output<ResourceLfTagTable?> table;

  /// Configuration block for a table with columns resource. See Table With Columns for more details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ResourceLfTagTableWithColumns?> tableWithColumns;
  late final pulumi.Output<ResourceLfTagTimeouts?> timeouts;

  /// Creates a new [ResourceLfTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceLfTag]. {@macro pulumi_lakeformation_resource_lf_tag_resource_lf_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceLfTag(
    String name, {
    ResourceLfTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/resourceLfTag:ResourceLfTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String?>('catalogId');
    this.database = registerOutput<ResourceLfTagDatabase?>('database');
    this.lfTag = registerOutput<ResourceLfTagLfTag>('lfTag');
    this.region = registerOutput<String>('region');
    this.table = registerOutput<ResourceLfTagTable?>('table');
    this.tableWithColumns =
        registerOutput<ResourceLfTagTableWithColumns?>('tableWithColumns');
    this.timeouts = registerOutput<ResourceLfTagTimeouts?>('timeouts');
  }
}
