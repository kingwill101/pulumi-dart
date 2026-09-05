import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_lf_tags_args.dart';
import 'resource_lf_tags_database.dart';
import 'resource_lf_tags_lf_tag.dart';
import 'resource_lf_tags_state.dart';
import 'resource_lf_tags_table.dart';
import 'resource_lf_tags_table_with_columns.dart';

/// Manages an attachment between one or more existing LF-tags and an existing Lake Formation resource.
///
/// ## Example Usage
///
/// ### Database Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.LfTag("example", {
///     key: "right",
///     values: [
///         "abbey",
///         "village",
///         "luffield",
///         "woodcote",
///         "copse",
///         "chapel",
///         "stowe",
///         "club",
///     ],
/// });
/// const exampleResourceLfTags = new aws.lakeformation.ResourceLfTags("example", {
///     database: {
///         name: exampleAwsGlueCatalogDatabase.name,
///     },
///     lfTags: [{
///         key: example.key,
///         value: "stowe",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.LfTag("example",
///     key="right",
///     values=[
///         "abbey",
///         "village",
///         "luffield",
///         "woodcote",
///         "copse",
///         "chapel",
///         "stowe",
///         "club",
///     ])
/// example_resource_lf_tags = aws.lakeformation.ResourceLfTags("example",
///     database={
///         "name": example_aws_glue_catalog_database["name"],
///     },
///     lf_tags=[{
///         "key": example.key,
///         "value": "stowe",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LakeFormation.LfTag("example", new()
///     {
///         Key = "right",
///         Values = new[]
///         {
///             "abbey",
///             "village",
///             "luffield",
///             "woodcote",
///             "copse",
///             "chapel",
///             "stowe",
///             "club",
///         },
///     });
///
///     var exampleResourceLfTags = new Aws.LakeFormation.ResourceLfTags("example", new()
///     {
///         Database = new Aws.LakeFormation.Inputs.ResourceLfTagsDatabaseArgs
///         {
///             Name = exampleAwsGlueCatalogDatabase.Name,
///         },
///         LfTags = new[]
///         {
///             new Aws.LakeFormation.Inputs.ResourceLfTagsLfTagArgs
///             {
///                 Key = example.Key,
///                 Value = "stowe",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lakeformation.NewLfTag(ctx, "example", &lakeformation.LfTagArgs{
/// 			Key: pulumi.String("right"),
/// 			Values: pulumi.StringArray{
/// 				pulumi.String("abbey"),
/// 				pulumi.String("village"),
/// 				pulumi.String("luffield"),
/// 				pulumi.String("woodcote"),
/// 				pulumi.String("copse"),
/// 				pulumi.String("chapel"),
/// 				pulumi.String("stowe"),
/// 				pulumi.String("club"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lakeformation.NewResourceLfTags(ctx, "example", &lakeformation.ResourceLfTagsArgs{
/// 			Database: &lakeformation.ResourceLfTagsDatabaseArgs{
/// 				Name: pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 			},
/// 			LfTags: lakeformation.ResourceLfTagsLfTagArray{
/// 				&lakeformation.ResourceLfTagsLfTagArgs{
/// 					Key:   example.Key,
/// 					Value: pulumi.String("stowe"),
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
/// resource "aws_lakeformation_lftag" "example" {
///   key    = "right"
///   values = ["abbey", "village", "luffield", "woodcote", "copse", "chapel", "stowe", "club"]
/// }
/// resource "aws_lakeformation_resourcelftags" "example" {
///   database = {
///     name = exampleAwsGlueCatalogDatabase.name
///   }
///   lf_tags {
///     key   = aws_lakeformation_lftag.example.key
///     value = "stowe"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lakeformation.LfTag;
/// import com.pulumi.aws.lakeformation.LfTagArgs;
/// import com.pulumi.aws.lakeformation.ResourceLfTags;
/// import com.pulumi.aws.lakeformation.ResourceLfTagsArgs;
/// import com.pulumi.aws.lakeformation.inputs.ResourceLfTagsDatabaseArgs;
/// import com.pulumi.aws.lakeformation.inputs.ResourceLfTagsLfTagArgs;
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
///         var example = new LfTag("example", LfTagArgs.builder()
///             .key("right")
///             .values(
///                 "abbey",
///                 "village",
///                 "luffield",
///                 "woodcote",
///                 "copse",
///                 "chapel",
///                 "stowe",
///                 "club")
///             .build());
///
///         var exampleResourceLfTags = new ResourceLfTags("exampleResourceLfTags", ResourceLfTagsArgs.builder()
///             .database(ResourceLfTagsDatabaseArgs.builder()
///                 .name(exampleAwsGlueCatalogDatabase.name())
///                 .build())
///             .lfTags(ResourceLfTagsLfTagArgs.builder()
///                 .key(example.key())
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
///     type: aws:lakeformation:LfTag
///     properties:
///       key: right
///       values:
///         - abbey
///         - village
///         - luffield
///         - woodcote
///         - copse
///         - chapel
///         - stowe
///         - club
///   exampleResourceLfTags:
///     type: aws:lakeformation:ResourceLfTags
///     name: example
///     properties:
///       database:
///         name: ${exampleAwsGlueCatalogDatabase.name}
///       lfTags:
///         - key: ${example.key}
///           value: stowe
/// ```
///
///
/// ### Multiple Tags Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.LfTag("example", {
///     key: "right",
///     values: [
///         "abbey",
///         "village",
///         "luffield",
///         "woodcote",
///         "copse",
///         "chapel",
///         "stowe",
///         "club",
///     ],
/// });
/// const example2 = new aws.lakeformation.LfTag("example2", {
///     key: "left",
///     values: [
///         "farm",
///         "theloop",
///         "aintree",
///         "brooklands",
///         "maggotts",
///         "becketts",
///         "vale",
///     ],
/// });
/// const exampleResourceLfTags = new aws.lakeformation.ResourceLfTags("example", {
///     database: {
///         name: exampleAwsGlueCatalogDatabase.name,
///     },
///     lfTags: [
///         {
///             key: "right",
///             value: "luffield",
///         },
///         {
///             key: "left",
///             value: "aintree",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.LfTag("example",
///     key="right",
///     values=[
///         "abbey",
///         "village",
///         "luffield",
///         "woodcote",
///         "copse",
///         "chapel",
///         "stowe",
///         "club",
///     ])
/// example2 = aws.lakeformation.LfTag("example2",
///     key="left",
///     values=[
///         "farm",
///         "theloop",
///         "aintree",
///         "brooklands",
///         "maggotts",
///         "becketts",
///         "vale",
///     ])
/// example_resource_lf_tags = aws.lakeformation.ResourceLfTags("example",
///     database={
///         "name": example_aws_glue_catalog_database["name"],
///     },
///     lf_tags=[
///         {
///             "key": "right",
///             "value": "luffield",
///         },
///         {
///             "key": "left",
///             "value": "aintree",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LakeFormation.LfTag("example", new()
///     {
///         Key = "right",
///         Values = new[]
///         {
///             "abbey",
///             "village",
///             "luffield",
///             "woodcote",
///             "copse",
///             "chapel",
///             "stowe",
///             "club",
///         },
///     });
///
///     var example2 = new Aws.LakeFormation.LfTag("example2", new()
///     {
///         Key = "left",
///         Values = new[]
///         {
///             "farm",
///             "theloop",
///             "aintree",
///             "brooklands",
///             "maggotts",
///             "becketts",
///             "vale",
///         },
///     });
///
///     var exampleResourceLfTags = new Aws.LakeFormation.ResourceLfTags("example", new()
///     {
///         Database = new Aws.LakeFormation.Inputs.ResourceLfTagsDatabaseArgs
///         {
///             Name = exampleAwsGlueCatalogDatabase.Name,
///         },
///         LfTags = new[]
///         {
///             new Aws.LakeFormation.Inputs.ResourceLfTagsLfTagArgs
///             {
///                 Key = "right",
///                 Value = "luffield",
///             },
///             new Aws.LakeFormation.Inputs.ResourceLfTagsLfTagArgs
///             {
///                 Key = "left",
///                 Value = "aintree",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewLfTag(ctx, "example", &lakeformation.LfTagArgs{
/// 			Key: pulumi.String("right"),
/// 			Values: pulumi.StringArray{
/// 				pulumi.String("abbey"),
/// 				pulumi.String("village"),
/// 				pulumi.String("luffield"),
/// 				pulumi.String("woodcote"),
/// 				pulumi.String("copse"),
/// 				pulumi.String("chapel"),
/// 				pulumi.String("stowe"),
/// 				pulumi.String("club"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lakeformation.NewLfTag(ctx, "example2", &lakeformation.LfTagArgs{
/// 			Key: pulumi.String("left"),
/// 			Values: pulumi.StringArray{
/// 				pulumi.String("farm"),
/// 				pulumi.String("theloop"),
/// 				pulumi.String("aintree"),
/// 				pulumi.String("brooklands"),
/// 				pulumi.String("maggotts"),
/// 				pulumi.String("becketts"),
/// 				pulumi.String("vale"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lakeformation.NewResourceLfTags(ctx, "example", &lakeformation.ResourceLfTagsArgs{
/// 			Database: &lakeformation.ResourceLfTagsDatabaseArgs{
/// 				Name: pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 			},
/// 			LfTags: lakeformation.ResourceLfTagsLfTagArray{
/// 				&lakeformation.ResourceLfTagsLfTagArgs{
/// 					Key:   pulumi.String("right"),
/// 					Value: pulumi.String("luffield"),
/// 				},
/// 				&lakeformation.ResourceLfTagsLfTagArgs{
/// 					Key:   pulumi.String("left"),
/// 					Value: pulumi.String("aintree"),
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
/// resource "aws_lakeformation_lftag" "example" {
///   key    = "right"
///   values = ["abbey", "village", "luffield", "woodcote", "copse", "chapel", "stowe", "club"]
/// }
/// resource "aws_lakeformation_lftag" "example2" {
///   key    = "left"
///   values = ["farm", "theloop", "aintree", "brooklands", "maggotts", "becketts", "vale"]
/// }
/// resource "aws_lakeformation_resourcelftags" "example" {
///   database = {
///     name = exampleAwsGlueCatalogDatabase.name
///   }
///   lf_tags {
///     key   = "right"
///     value = "luffield"
///   }
///   lf_tags {
///     key   = "left"
///     value = "aintree"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lakeformation.LfTag;
/// import com.pulumi.aws.lakeformation.LfTagArgs;
/// import com.pulumi.aws.lakeformation.ResourceLfTags;
/// import com.pulumi.aws.lakeformation.ResourceLfTagsArgs;
/// import com.pulumi.aws.lakeformation.inputs.ResourceLfTagsDatabaseArgs;
/// import com.pulumi.aws.lakeformation.inputs.ResourceLfTagsLfTagArgs;
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
///         var example = new LfTag("example", LfTagArgs.builder()
///             .key("right")
///             .values(
///                 "abbey",
///                 "village",
///                 "luffield",
///                 "woodcote",
///                 "copse",
///                 "chapel",
///                 "stowe",
///                 "club")
///             .build());
///
///         var example2 = new LfTag("example2", LfTagArgs.builder()
///             .key("left")
///             .values(
///                 "farm",
///                 "theloop",
///                 "aintree",
///                 "brooklands",
///                 "maggotts",
///                 "becketts",
///                 "vale")
///             .build());
///
///         var exampleResourceLfTags = new ResourceLfTags("exampleResourceLfTags", ResourceLfTagsArgs.builder()
///             .database(ResourceLfTagsDatabaseArgs.builder()
///                 .name(exampleAwsGlueCatalogDatabase.name())
///                 .build())
///             .lfTags(
///                 ResourceLfTagsLfTagArgs.builder()
///                     .key("right")
///                     .value("luffield")
///                     .build(),
///                 ResourceLfTagsLfTagArgs.builder()
///                     .key("left")
///                     .value("aintree")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:LfTag
///     properties:
///       key: right
///       values:
///         - abbey
///         - village
///         - luffield
///         - woodcote
///         - copse
///         - chapel
///         - stowe
///         - club
///   example2:
///     type: aws:lakeformation:LfTag
///     properties:
///       key: left
///       values:
///         - farm
///         - theloop
///         - aintree
///         - brooklands
///         - maggotts
///         - becketts
///         - vale
///   exampleResourceLfTags:
///     type: aws:lakeformation:ResourceLfTags
///     name: example
///     properties:
///       database:
///         name: ${exampleAwsGlueCatalogDatabase.name}
///       lfTags:
///         - key: right
///           value: luffield
///         - key: left
///           value: aintree
/// ```
class ResourceLfTags extends pulumi.CustomResource {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  late final pulumi.Output<String> catalogId;
  /// Configuration block for a database resource. See below.
  late final pulumi.Output<ResourceLfTagsDatabase> database;
  /// Set of LF-tags to attach to the resource. See below.
  ///
  /// Exactly one of the following is required:
  late final pulumi.Output<List<ResourceLfTagsLfTag>> lfTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for a table resource. See below.
  late final pulumi.Output<ResourceLfTagsTable> table;
  /// Configuration block for a table with columns resource. See below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ResourceLfTagsTableWithColumns> tableWithColumns;

  /// Creates a new [ResourceLfTags].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceLfTags]. {@macro pulumi_lakeformation_resource_lf_tags_resource_lf_tags_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceLfTags(
    String name, {
    ResourceLfTagsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/resourceLfTags:ResourceLfTags',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    catalogId = registerOutput<String>('catalogId');
    database = registerOutput<ResourceLfTagsDatabase>('database', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceLfTagsDatabase.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lfTags = registerOutput<List<ResourceLfTagsLfTag>>('lfTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceLfTagsLfTag>(guardedValue, (value) => ResourceLfTagsLfTag.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    table = registerOutput<ResourceLfTagsTable>('table', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceLfTagsTable.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableWithColumns = registerOutput<ResourceLfTagsTableWithColumns>('tableWithColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceLfTagsTableWithColumns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ResourceLfTags] resource's state with the given [name] and [id].
  static ResourceLfTags get(
    String name,
    pulumi.Input<String> id, {
    ResourceLfTagsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourceLfTags._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourceLfTags._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/resourceLfTags:ResourceLfTags',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalogId = registerOutput<String>('catalogId');
    database = registerOutput<ResourceLfTagsDatabase>('database', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceLfTagsDatabase.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lfTags = registerOutput<List<ResourceLfTagsLfTag>>('lfTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceLfTagsLfTag>(guardedValue, (value) => ResourceLfTagsLfTag.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    table = registerOutput<ResourceLfTagsTable>('table', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceLfTagsTable.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableWithColumns = registerOutput<ResourceLfTagsTableWithColumns>('tableWithColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceLfTagsTableWithColumns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ResourceLfTags] resource.
  ResourceLfTags.reference(String urn)
    : super(
        'aws:lakeformation/resourceLfTags:ResourceLfTags',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    catalogId = registerOutput<String>('catalogId');
    database = registerOutput<ResourceLfTagsDatabase>('database', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceLfTagsDatabase.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lfTags = registerOutput<List<ResourceLfTagsLfTag>>('lfTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceLfTagsLfTag>(guardedValue, (value) => ResourceLfTagsLfTag.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    table = registerOutput<ResourceLfTagsTable>('table', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceLfTagsTable.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableWithColumns = registerOutput<ResourceLfTagsTableWithColumns>('tableWithColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceLfTagsTableWithColumns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
