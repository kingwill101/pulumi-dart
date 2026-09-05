import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_rule_args.dart';
import 'archive_rule_filter.dart';
import 'archive_rule_state.dart';

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
///     analyzerName: "example-analyzer",
///     ruleName: "example-rule",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.accessanalyzer.ArchiveRule("example",
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
///     ],
///     analyzer_name="example-analyzer",
///     rule_name="example-rule")
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
///         AnalyzerName = "example-analyzer",
///         RuleName = "example-rule",
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
/// 			AnalyzerName: pulumi.String("example-analyzer"),
/// 			RuleName:     pulumi.String("example-rule"),
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
/// resource "aws_accessanalyzer_archiverule" "example" {
///   filters {
///     criteria = "condition.aws:UserId"
///     eqs      = ["userid"]
///   }
///   filters {
///     criteria = "error"
///     exists   = true
///   }
///   filters {
///     criteria = "isPublic"
///     eqs      = ["false"]
///   }
///   analyzer_name = "example-analyzer"
///   rule_name     = "example-rule"
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
///         var example = new ArchiveRule("example", ArchiveRuleArgs.builder()
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
///             .analyzerName("example-analyzer")
///             .ruleName("example-rule")
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
///       filters:
///         - criteria: condition.aws:UserId
///           eqs:
///             - userid
///         - criteria: error
///           exists: true
///         - criteria: isPublic
///           eqs:
///             - 'false'
///       analyzerName: example-analyzer
///       ruleName: example-rule
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    analyzerName = registerOutput<String>('analyzerName');
    filters = registerOutput<List<ArchiveRuleFilter>>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ArchiveRuleFilter>(guardedValue, (value) => ArchiveRuleFilter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    ruleName = registerOutput<String>('ruleName');
  }

  /// Gets an existing [ArchiveRule] resource's state with the given [name] and [id].
  static ArchiveRule get(
    String name,
    pulumi.Input<String> id, {
    ArchiveRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ArchiveRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ArchiveRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:accessanalyzer/archiveRule:ArchiveRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    analyzerName = registerOutput<String>('analyzerName');
    filters = registerOutput<List<ArchiveRuleFilter>>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ArchiveRuleFilter>(guardedValue, (value) => ArchiveRuleFilter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    ruleName = registerOutput<String>('ruleName');
  }

  /// Creates a typed reference to an existing [ArchiveRule] resource.
  ArchiveRule.reference(String urn)
    : super(
        'aws:accessanalyzer/archiveRule:ArchiveRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    analyzerName = registerOutput<String>('analyzerName');
    filters = registerOutput<List<ArchiveRuleFilter>>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ArchiveRuleFilter>(guardedValue, (value) => ArchiveRuleFilter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    ruleName = registerOutput<String>('ruleName');
  }
}
