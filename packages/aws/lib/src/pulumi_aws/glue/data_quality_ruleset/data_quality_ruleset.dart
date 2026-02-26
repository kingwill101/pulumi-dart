import 'package:pulumi/pulumi.dart';
import '../data_quality_ruleset_target_table/data_quality_ruleset_target_table.dart';
import 'data_quality_ruleset_args.dart';

/// Provides a Glue Data Quality Ruleset Resource. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/glue-data-quality.html) for a full explanation of the Glue Data Quality Ruleset functionality
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.DataQualityRuleset("example", {
/// name: "example",
/// ruleset: "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.DataQualityRuleset("example",
/// name="example",
/// ruleset="Rules = [Completeness \"colA\" between 0.4 and 0.8]")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Glue.DataQualityRuleset("example", new()
/// {
/// Name = "example",
/// Ruleset = "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
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
/// _, err := glue.NewDataQualityRuleset(ctx, "example", &glue.DataQualityRulesetArgs{
/// Name:    pulumi.String("example"),
/// Ruleset: pulumi.String("Rules = [Completeness \"colA\" between 0.4 and 0.8]"),
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
/// import com.pulumi.aws.glue.DataQualityRuleset;
/// import com.pulumi.aws.glue.DataQualityRulesetArgs;
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
/// var example = new DataQualityRuleset("example", DataQualityRulesetArgs.builder()
/// .name("example")
/// .ruleset("Rules = [Completeness \"colA\" between 0.4 and 0.8]")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:DataQualityRuleset
/// properties:
/// name: example
/// ruleset: Rules = [Completeness "colA" between 0.4 and 0.8]
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With description
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.DataQualityRuleset("example", {
/// name: "example",
/// description: "example",
/// ruleset: "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.DataQualityRuleset("example",
/// name="example",
/// description="example",
/// ruleset="Rules = [Completeness \"colA\" between 0.4 and 0.8]")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Glue.DataQualityRuleset("example", new()
/// {
/// Name = "example",
/// Description = "example",
/// Ruleset = "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
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
/// _, err := glue.NewDataQualityRuleset(ctx, "example", &glue.DataQualityRulesetArgs{
/// Name:        pulumi.String("example"),
/// Description: pulumi.String("example"),
/// Ruleset:     pulumi.String("Rules = [Completeness \"colA\" between 0.4 and 0.8]"),
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
/// import com.pulumi.aws.glue.DataQualityRuleset;
/// import com.pulumi.aws.glue.DataQualityRulesetArgs;
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
/// var example = new DataQualityRuleset("example", DataQualityRulesetArgs.builder()
/// .name("example")
/// .description("example")
/// .ruleset("Rules = [Completeness \"colA\" between 0.4 and 0.8]")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:DataQualityRuleset
/// properties:
/// name: example
/// description: example
/// ruleset: Rules = [Completeness "colA" between 0.4 and 0.8]
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With tags
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.DataQualityRuleset("example", {
/// name: "example",
/// ruleset: "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
/// tags: {
/// hello: "world",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.DataQualityRuleset("example",
/// name="example",
/// ruleset="Rules = [Completeness \"colA\" between 0.4 and 0.8]",
/// tags={
/// "hello": "world",
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
/// var example = new Aws.Glue.DataQualityRuleset("example", new()
/// {
/// Name = "example",
/// Ruleset = "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
/// Tags =
/// {
/// { "hello", "world" },
/// },
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
/// _, err := glue.NewDataQualityRuleset(ctx, "example", &glue.DataQualityRulesetArgs{
/// Name:    pulumi.String("example"),
/// Ruleset: pulumi.String("Rules = [Completeness \"colA\" between 0.4 and 0.8]"),
/// Tags: pulumi.StringMap{
/// "hello": pulumi.String("world"),
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
/// import com.pulumi.aws.glue.DataQualityRuleset;
/// import com.pulumi.aws.glue.DataQualityRulesetArgs;
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
/// var example = new DataQualityRuleset("example", DataQualityRulesetArgs.builder()
/// .name("example")
/// .ruleset("Rules = [Completeness \"colA\" between 0.4 and 0.8]")
/// .tags(Map.of("hello", "world"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:DataQualityRuleset
/// properties:
/// name: example
/// ruleset: Rules = [Completeness "colA" between 0.4 and 0.8]
/// tags:
/// hello: world
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With<span pulumi-lang-nodejs=" targetTable
/// " pulumi-lang-dotnet=" TargetTable
/// " pulumi-lang-go=" targetTable
/// " pulumi-lang-python=" target_table
/// " pulumi-lang-yaml=" targetTable
/// " pulumi-lang-java=" targetTable
/// "> target_table
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.DataQualityRuleset("example", {
/// name: "example",
/// ruleset: "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
/// targetTable: {
/// databaseName: exampleAwsGlueCatalogDatabase.name,
/// tableName: exampleAwsGlueCatalogTable.name,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.DataQualityRuleset("example",
/// name="example",
/// ruleset="Rules = [Completeness \"colA\" between 0.4 and 0.8]",
/// target_table={
/// "database_name": example_aws_glue_catalog_database["name"],
/// "table_name": example_aws_glue_catalog_table["name"],
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
/// var example = new Aws.Glue.DataQualityRuleset("example", new()
/// {
/// Name = "example",
/// Ruleset = "Rules = [Completeness \"colA\" between 0.4 and 0.8]",
/// TargetTable = new Aws.Glue.Inputs.DataQualityRulesetTargetTableArgs
/// {
/// DatabaseName = exampleAwsGlueCatalogDatabase.Name,
/// TableName = exampleAwsGlueCatalogTable.Name,
/// },
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
/// _, err := glue.NewDataQualityRuleset(ctx, "example", &glue.DataQualityRulesetArgs{
/// Name:    pulumi.String("example"),
/// Ruleset: pulumi.String("Rules = [Completeness \"colA\" between 0.4 and 0.8]"),
/// TargetTable: &glue.DataQualityRulesetTargetTableArgs{
/// DatabaseName: pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// TableName:    pulumi.Any(exampleAwsGlueCatalogTable.Name),
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
/// import com.pulumi.aws.glue.DataQualityRuleset;
/// import com.pulumi.aws.glue.DataQualityRulesetArgs;
/// import com.pulumi.aws.glue.inputs.DataQualityRulesetTargetTableArgs;
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
/// var example = new DataQualityRuleset("example", DataQualityRulesetArgs.builder()
/// .name("example")
/// .ruleset("Rules = [Completeness \"colA\" between 0.4 and 0.8]")
/// .targetTable(DataQualityRulesetTargetTableArgs.builder()
/// .databaseName(exampleAwsGlueCatalogDatabase.name())
/// .tableName(exampleAwsGlueCatalogTable.name())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:DataQualityRuleset
/// properties:
/// name: example
/// ruleset: Rules = [Completeness "colA" between 0.4 and 0.8]
/// targetTable:
/// databaseName: ${exampleAwsGlueCatalogDatabase.name}
/// tableName: ${exampleAwsGlueCatalogTable.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Glue Data Quality Ruleset using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:glue/dataQualityRuleset:DataQualityRuleset example exampleName
/// ```
class DataQualityRuleset extends CustomResource {
  /// ARN of the Glue Data Quality Ruleset.
  late final Output<String> arn;

  /// The time and date that this data quality ruleset was created.
  late final Output<String> createdOn;

  /// Description of the data quality ruleset.
  late final Output<String?> description;

  /// The time and date that this data quality ruleset was created.
  late final Output<String> lastModifiedOn;

  /// Name of the data quality ruleset.
  late final Output<String> name;

  /// When a ruleset was created from a recommendation run, this run ID is generated to link the two together.
  late final Output<String> recommendationRunId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A Data Quality Definition Language (DQDL) ruleset. For more information, see the AWS Glue developer guide.
  late final Output<String> ruleset;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A Configuration block specifying a target table associated with the data quality ruleset. See <span pulumi-lang-nodejs="`targetTable`" pulumi-lang-dotnet="`TargetTable`" pulumi-lang-go="`targetTable`" pulumi-lang-python="`target_table`" pulumi-lang-yaml="`targetTable`" pulumi-lang-java="`targetTable`">`target_table`</span> below.
  late final Output<DataQualityRulesetTargetTable?> targetTable;

  DataQualityRuleset(
    String name, {
    DataQualityRulesetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/dataQualityRuleset:DataQualityRuleset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdOn = registerOutput<String>('createdOn');
    this.description = registerOutput<String?>('description');
    this.lastModifiedOn = registerOutput<String>('lastModifiedOn');
    this.name = registerOutput<String>('name');
    this.recommendationRunId = registerOutput<String>('recommendationRunId');
    this.region = registerOutput<String>('region');
    this.ruleset = registerOutput<String>('ruleset');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetTable =
        registerOutput<DataQualityRulesetTargetTable?>('targetTable');
  }
}
