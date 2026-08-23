import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexing_rule_args.dart';
import 'indexing_rule_rule.dart';
import 'indexing_rule_state.dart';

/// Manages an AWS X-Ray indexing rule.
///
/// &gt; **Note:** Removing this resource from Terraform has no effect on the indedxing rule within AWS X-Ray.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.xray.IndexingRule("example", {
///     name: "Default",
///     rule: {
///         probabilistic: {
///             desiredSamplingPercentage: 0.66,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.xray.IndexingRule("example",
///     name="Default",
///     rule={
///         "probabilistic": {
///             "desired_sampling_percentage": 0.66,
///         },
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
///     var example = new Aws.Xray.IndexingRule("example", new()
///     {
///         Name = "Default",
///         Rule = new Aws.Xray.Inputs.IndexingRuleRuleArgs
///         {
///             Probabilistic = new Aws.Xray.Inputs.IndexingRuleRuleProbabilisticArgs
///             {
///                 DesiredSamplingPercentage = 0.66,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/xray"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := xray.NewIndexingRule(ctx, "example", &xray.IndexingRuleArgs{
/// 			Name: pulumi.String("Default"),
/// 			Rule: &xray.IndexingRuleRuleArgs{
/// 				Probabilistic: &xray.IndexingRuleRuleProbabilisticArgs{
/// 					DesiredSamplingPercentage: pulumi.Float64(0.66),
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
/// resource "aws_xray_indexingrule" "example" {
///   name = "Default"
///   rule = {
///     probabilistic = {
///       desired_sampling_percentage = 0.66
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.xray.IndexingRule;
/// import com.pulumi.aws.xray.IndexingRuleArgs;
/// import com.pulumi.aws.xray.inputs.IndexingRuleRuleArgs;
/// import com.pulumi.aws.xray.inputs.IndexingRuleRuleProbabilisticArgs;
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
///         var example = new IndexingRule("example", IndexingRuleArgs.builder()
///             .name("Default")
///             .rule(IndexingRuleRuleArgs.builder()
///                 .probabilistic(IndexingRuleRuleProbabilisticArgs.builder()
///                     .desiredSamplingPercentage(0.66)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:xray:IndexingRule
///     properties:
///       name: Default
///       rule:
///         probabilistic:
///           desiredSamplingPercentage: 0.66
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Indexing rule name.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import XRay Indexing Rules using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:xray/indexingRule:IndexingRule example Default
/// ```
class IndexingRule extends pulumi.CustomResource {
  /// Indexing rule name.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Rule configuration. See `rule` Block below.
  late final pulumi.Output<IndexingRuleRule> rule;

  /// Creates a new [IndexingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IndexingRule]. {@macro pulumi_xray_indexing_rule_indexing_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IndexingRule(
    String name, {
    IndexingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:xray/indexingRule:IndexingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rule = registerOutput<IndexingRuleRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexingRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [IndexingRule] resource's state with the given [name] and [id].
  static IndexingRule get(
    String name,
    pulumi.Input<String> id, {
    IndexingRuleState? state,
  }) {
    return IndexingRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IndexingRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:xray/indexingRule:IndexingRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rule = registerOutput<IndexingRuleRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexingRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
