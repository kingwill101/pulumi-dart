import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_ruleset_args.dart';
import 'data_quality_ruleset_state.dart';
import 'data_quality_ruleset_target_table.dart';

/// Provides a Glue Data Quality Ruleset Resource. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/glue-data-quality.html) for a full explanation of the Glue Data Quality Ruleset functionality
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.DataQualityRuleset("example", {
///     name: "example",
///     ruleset: "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.DataQualityRuleset("example",
///     name="example",
///     ruleset="Rules = [Completeness \"colA\" between 0.4 and 0.8]")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.DataQualityRuleset("example", new()
///     {
///         Name = "example",
///         Ruleset = "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
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
/// 		_, err := glue.NewDataQualityRuleset(ctx, "example", &glue.DataQualityRulesetArgs{
/// 			Name:    pulumi.String("example"),
/// 			Ruleset: pulumi.String("Rules = [Completeness \"colA\" between 0.4 and 0.8]"),
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
/// resource "aws_glue_dataqualityruleset" "example" {
///   name    = "example"
///   ruleset = "Rules = [Completeness \"colA\" between 0.4 and 0.8]"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.DataQualityRuleset;
/// import com.pulumi.aws.glue.DataQualityRulesetArgs;
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
///         var example = new DataQualityRuleset("example", DataQualityRulesetArgs.builder()
///             .name("example")
///             .ruleset("Rules = [Completeness \"colA\" between 0.4 and 0.8]")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:DataQualityRuleset
///     properties:
///       name: example
///       ruleset: Rules = [Completeness "colA" between 0.4 and 0.8]
/// ```
///
///
/// ### With description
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.DataQualityRuleset("example", {
///     name: "example",
///     description: "example",
///     ruleset: "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.DataQualityRuleset("example",
///     name="example",
///     description="example",
///     ruleset="Rules = [Completeness \"colA\" between 0.4 and 0.8]")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.DataQualityRuleset("example", new()
///     {
///         Name = "example",
///         Description = "example",
///         Ruleset = "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
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
/// 		_, err := glue.NewDataQualityRuleset(ctx, "example", &glue.DataQualityRulesetArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
/// 			Ruleset:     pulumi.String("Rules = [Completeness \"colA\" between 0.4 and 0.8]"),
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
/// resource "aws_glue_dataqualityruleset" "example" {
///   name        = "example"
///   description = "example"
///   ruleset     = "Rules = [Completeness \"colA\" between 0.4 and 0.8]"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.DataQualityRuleset;
/// import com.pulumi.aws.glue.DataQualityRulesetArgs;
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
///         var example = new DataQualityRuleset("example", DataQualityRulesetArgs.builder()
///             .name("example")
///             .description("example")
///             .ruleset("Rules = [Completeness \"colA\" between 0.4 and 0.8]")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:DataQualityRuleset
///     properties:
///       name: example
///       description: example
///       ruleset: Rules = [Completeness "colA" between 0.4 and 0.8]
/// ```
///
///
/// ### With tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.DataQualityRuleset("example", {
///     name: "example",
///     ruleset: "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
///     tags: {
///         hello: "world",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.DataQualityRuleset("example",
///     name="example",
///     ruleset="Rules = [Completeness \"colA\" between 0.4 and 0.8]",
///     tags={
///         "hello": "world",
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
///     var example = new Aws.Glue.DataQualityRuleset("example", new()
///     {
///         Name = "example",
///         Ruleset = "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
///         Tags =
///         {
///             { "hello", "world" },
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
/// 		_, err := glue.NewDataQualityRuleset(ctx, "example", &glue.DataQualityRulesetArgs{
/// 			Name:    pulumi.String("example"),
/// 			Ruleset: pulumi.String("Rules = [Completeness \"colA\" between 0.4 and 0.8]"),
/// 			Tags: pulumi.StringMap{
/// 				"hello": pulumi.String("world"),
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
/// resource "aws_glue_dataqualityruleset" "example" {
///   name    = "example"
///   ruleset = "Rules = [Completeness \"colA\" between 0.4 and 0.8]"
///   tags = {
///     "hello" = "world"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.DataQualityRuleset;
/// import com.pulumi.aws.glue.DataQualityRulesetArgs;
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
///         var example = new DataQualityRuleset("example", DataQualityRulesetArgs.builder()
///             .name("example")
///             .ruleset("Rules = [Completeness \"colA\" between 0.4 and 0.8]")
///             .tags(Map.of("hello", "world"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:DataQualityRuleset
///     properties:
///       name: example
///       ruleset: Rules = [Completeness "colA" between 0.4 and 0.8]
///       tags:
///         hello: world
/// ```
///
///
/// ### With targetTable
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.DataQualityRuleset("example", {
///     targetTable: {
///         databaseName: exampleAwsGlueCatalogDatabase.name,
///         tableName: exampleAwsGlueCatalogTable.name,
///     },
///     name: "example",
///     ruleset: "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.DataQualityRuleset("example",
///     target_table={
///         "database_name": example_aws_glue_catalog_database["name"],
///         "table_name": example_aws_glue_catalog_table["name"],
///     },
///     name="example",
///     ruleset="Rules = [Completeness \"colA\" between 0.4 and 0.8]")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.DataQualityRuleset("example", new()
///     {
///         TargetTable = new Aws.Glue.Inputs.DataQualityRulesetTargetTableArgs
///         {
///             DatabaseName = exampleAwsGlueCatalogDatabase.Name,
///             TableName = exampleAwsGlueCatalogTable.Name,
///         },
///         Name = "example",
///         Ruleset = "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
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
/// 		_, err := glue.NewDataQualityRuleset(ctx, "example", &glue.DataQualityRulesetArgs{
/// 			TargetTable: &glue.DataQualityRulesetTargetTableArgs{
/// 				DatabaseName: pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 				TableName:    pulumi.Any(exampleAwsGlueCatalogTable.Name),
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			Ruleset: pulumi.String("Rules = [Completeness \"colA\" between 0.4 and 0.8]"),
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
/// resource "aws_glue_dataqualityruleset" "example" {
///   target_table = {
///     database_name = exampleAwsGlueCatalogDatabase.name
///     table_name    = exampleAwsGlueCatalogTable.name
///   }
///   name    = "example"
///   ruleset = "Rules = [Completeness \"colA\" between 0.4 and 0.8]"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.DataQualityRuleset;
/// import com.pulumi.aws.glue.DataQualityRulesetArgs;
/// import com.pulumi.aws.glue.inputs.DataQualityRulesetTargetTableArgs;
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
///         var example = new DataQualityRuleset("example", DataQualityRulesetArgs.builder()
///             .targetTable(DataQualityRulesetTargetTableArgs.builder()
///                 .databaseName(exampleAwsGlueCatalogDatabase.name())
///                 .tableName(exampleAwsGlueCatalogTable.name())
///                 .build())
///             .name("example")
///             .ruleset("Rules = [Completeness \"colA\" between 0.4 and 0.8]")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:DataQualityRuleset
///     properties:
///       targetTable:
///         databaseName: ${exampleAwsGlueCatalogDatabase.name}
///         tableName: ${exampleAwsGlueCatalogTable.name}
///       name: example
///       ruleset: Rules = [Completeness "colA" between 0.4 and 0.8]
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Data Quality Ruleset using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/dataQualityRuleset:DataQualityRuleset example exampleName
/// ```
class DataQualityRuleset extends pulumi.CustomResource {
  /// ARN of the Glue Data Quality Ruleset.
  late final pulumi.Output<String> arn;
  /// The time and date that this data quality ruleset was created.
  late final pulumi.Output<String> createdOn;
  /// Description of the data quality ruleset.
  late final pulumi.Output<String?> description;
  /// The time and date that this data quality ruleset was created.
  late final pulumi.Output<String> lastModifiedOn;
  /// Name of the data quality ruleset.
  late final pulumi.Output<String> name;
  /// When a ruleset was created from a recommendation run, this run ID is generated to link the two together.
  late final pulumi.Output<String> recommendationRunId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A Data Quality Definition Language (DQDL) ruleset. For more information, see the AWS Glue developer guide.
  late final pulumi.Output<String> ruleset;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// A Configuration block specifying a target table associated with the data quality ruleset. See `targetTable` below.
  late final pulumi.Output<DataQualityRulesetTargetTable?> targetTable;

  /// Creates a new [DataQualityRuleset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataQualityRuleset]. {@macro pulumi_glue_data_quality_ruleset_data_quality_ruleset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataQualityRuleset(
    String name, {
    DataQualityRulesetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/dataQualityRuleset:DataQualityRuleset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    lastModifiedOn = registerOutput<String>('lastModifiedOn');
    this.name = registerOutput<String>('name');
    recommendationRunId = registerOutput<String>('recommendationRunId');
    region = registerOutput<String>('region');
    ruleset = registerOutput<String>('ruleset');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetTable = registerOutput<DataQualityRulesetTargetTable?>('targetTable', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityRulesetTargetTable.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DataQualityRuleset] resource's state with the given [name] and [id].
  static DataQualityRuleset get(
    String name,
    pulumi.Input<String> id, {
    DataQualityRulesetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataQualityRuleset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataQualityRuleset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/dataQualityRuleset:DataQualityRuleset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    lastModifiedOn = registerOutput<String>('lastModifiedOn');
    this.name = registerOutput<String>('name');
    recommendationRunId = registerOutput<String>('recommendationRunId');
    region = registerOutput<String>('region');
    ruleset = registerOutput<String>('ruleset');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetTable = registerOutput<DataQualityRulesetTargetTable?>('targetTable', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityRulesetTargetTable.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DataQualityRuleset] resource.
  DataQualityRuleset.reference(String urn)
    : super(
        'aws:glue/dataQualityRuleset:DataQualityRuleset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    lastModifiedOn = registerOutput<String>('lastModifiedOn');
    this.name = registerOutput<String>('name');
    recommendationRunId = registerOutput<String>('recommendationRunId');
    region = registerOutput<String>('region');
    ruleset = registerOutput<String>('ruleset');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetTable = registerOutput<DataQualityRulesetTargetTable?>('targetTable', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataQualityRulesetTargetTable.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
