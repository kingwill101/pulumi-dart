import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_rule_args.dart';
import 'archive_rule_filter.dart';

/// Resource for managing an AWS AccessAnalyzer Archive Rule.
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
/// const example = new aws.accessanalyzer.ArchiveRule("example", {
///     analyzerName: "example-analyzer",
///     ruleName: "example-rule",
///     filters: [
///         {
///             criteria: "condition.aws:UserId",
///             eqs: ["userid"],
///         },
///         {
///             criteria: "error",
///             exists: "true",
///         },
///         {
///             criteria: "isPublic",
///             eqs: ["false"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.accessanalyzer.ArchiveRule("example",
///     analyzer_name="example-analyzer",
///     rule_name="example-rule",
///     filters=[
///         {
///             "criteria": "condition.aws:UserId",
///             "eqs": ["userid"],
///         },
///         {
///             "criteria": "error",
///             "exists": "true",
///         },
///         {
///             "criteria": "isPublic",
///             "eqs": ["false"],
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
///     var example = new Aws.AccessAnalyzer.ArchiveRule("example", new()
///     {
///         AnalyzerName = "example-analyzer",
///         RuleName = "example-rule",
///         Filters = new[]
///         {
///             new Aws.AccessAnalyzer.Inputs.ArchiveRuleFilterArgs
///             {
///                 Criteria = "condition.aws:UserId",
///                 Eqs = new[]
///                 {
///                     "userid",
///                 },
///             },
///             new Aws.AccessAnalyzer.Inputs.ArchiveRuleFilterArgs
///             {
///                 Criteria = "error",
///                 Exists = "true",
///             },
///             new Aws.AccessAnalyzer.Inputs.ArchiveRuleFilterArgs
///             {
///                 Criteria = "isPublic",
///                 Eqs = new[]
///                 {
///                     "false",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accessanalyzer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := accessanalyzer.NewArchiveRule(ctx, "example", &accessanalyzer.ArchiveRuleArgs{
/// 			AnalyzerName: pulumi.String("example-analyzer"),
/// 			RuleName:     pulumi.String("example-rule"),
/// 			Filters: accessanalyzer.ArchiveRuleFilterArray{
/// 				&accessanalyzer.ArchiveRuleFilterArgs{
/// 					Criteria: pulumi.String("condition.aws:UserId"),
/// 					Eqs: pulumi.StringArray{
/// 						pulumi.String("userid"),
/// 					},
/// 				},
/// 				&accessanalyzer.ArchiveRuleFilterArgs{
/// 					Criteria: pulumi.String("error"),
/// 					Exists:   pulumi.String("true"),
/// 				},
/// 				&accessanalyzer.ArchiveRuleFilterArgs{
/// 					Criteria: pulumi.String("isPublic"),
/// 					Eqs: pulumi.StringArray{
/// 						pulumi.String("false"),
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
/// import com.pulumi.aws.accessanalyzer.ArchiveRule;
/// import com.pulumi.aws.accessanalyzer.ArchiveRuleArgs;
/// import com.pulumi.aws.accessanalyzer.inputs.ArchiveRuleFilterArgs;
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
///         var example = new ArchiveRule("example", ArchiveRuleArgs.builder()
///             .analyzerName("example-analyzer")
///             .ruleName("example-rule")
///             .filters(
///                 ArchiveRuleFilterArgs.builder()
///                     .criteria("condition.aws:UserId")
///                     .eqs("userid")
///                     .build(),
///                 ArchiveRuleFilterArgs.builder()
///                     .criteria("error")
///                     .exists("true")
///                     .build(),
///                 ArchiveRuleFilterArgs.builder()
///                     .criteria("isPublic")
///                     .eqs("false")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:accessanalyzer:ArchiveRule
///     properties:
///       analyzerName: example-analyzer
///       ruleName: example-rule
///       filters:
///         - criteria: condition.aws:UserId
///           eqs:
///             - userid
///         - criteria: error
///           exists: true
///         - criteria: isPublic
///           eqs:
///             - 'false'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AccessAnalyzer ArchiveRule using the `analyzer_name/rule_name`. For example:
///
/// ```sh
/// $ pulumi import aws:accessanalyzer/archiveRule:ArchiveRule example example-analyzer/example-rule
/// ```
class ArchiveRule extends pulumi.CustomResource {
  /// Analyzer name.
  late final pulumi.Output<String> analyzerName;

  /// Filter criteria for the archive rule. See Filter for more details.
  late final pulumi.Output<List<ArchiveRuleFilter>> filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Rule name.
  late final pulumi.Output<String> ruleName;

  /// Creates a new [ArchiveRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ArchiveRule]. {@macro pulumi_accessanalyzer_archive_rule_archive_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ArchiveRule(
    String name, {
    ArchiveRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:accessanalyzer/archiveRule:ArchiveRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.analyzerName = registerOutput<String>('analyzerName');
    this.filters = registerOutput<List<ArchiveRuleFilter>>('filters');
    this.region = registerOutput<String>('region');
    this.ruleName = registerOutput<String>('ruleName');
  }
}
