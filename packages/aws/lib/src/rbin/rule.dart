import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_exclude_resource_tag.dart';
import 'rule_lock_configuration.dart';
import 'rule_resource_tag.dart';
import 'rule_retention_period.dart';

/// Resource for managing an AWS RBin Rule.
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
/// const example = new aws.rbin.Rule("example", {
///     description: "Example tag-level retention rule",
///     resourceType: "EBS_SNAPSHOT",
///     resourceTags: [{
///         resourceTagKey: "tag_key",
///         resourceTagValue: "tag_value",
///     }],
///     retentionPeriod: {
///         retentionPeriodValue: 10,
///         retentionPeriodUnit: "DAYS",
///     },
///     tags: {
///         test_tag_key: "test_tag_value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rbin.Rule("example",
///     description="Example tag-level retention rule",
///     resource_type="EBS_SNAPSHOT",
///     resource_tags=[{
///         "resource_tag_key": "tag_key",
///         "resource_tag_value": "tag_value",
///     }],
///     retention_period={
///         "retention_period_value": 10,
///         "retention_period_unit": "DAYS",
///     },
///     tags={
///         "test_tag_key": "test_tag_value",
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
///     var example = new Aws.Rbin.Rule("example", new()
///     {
///         Description = "Example tag-level retention rule",
///         ResourceType = "EBS_SNAPSHOT",
///         ResourceTags = new[]
///         {
///             new Aws.Rbin.Inputs.RuleResourceTagArgs
///             {
///                 ResourceTagKey = "tag_key",
///                 ResourceTagValue = "tag_value",
///             },
///         },
///         RetentionPeriod = new Aws.Rbin.Inputs.RuleRetentionPeriodArgs
///         {
///             RetentionPeriodValue = 10,
///             RetentionPeriodUnit = "DAYS",
///         },
///         Tags =
///         {
///             { "test_tag_key", "test_tag_value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rbin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rbin.NewRule(ctx, "example", &rbin.RuleArgs{
/// 			Description:  pulumi.String("Example tag-level retention rule"),
/// 			ResourceType: pulumi.String("EBS_SNAPSHOT"),
/// 			ResourceTags: rbin.RuleResourceTagArray{
/// 				&rbin.RuleResourceTagArgs{
/// 					ResourceTagKey:   pulumi.String("tag_key"),
/// 					ResourceTagValue: pulumi.String("tag_value"),
/// 				},
/// 			},
/// 			RetentionPeriod: &rbin.RuleRetentionPeriodArgs{
/// 				RetentionPeriodValue: pulumi.Int(10),
/// 				RetentionPeriodUnit:  pulumi.String("DAYS"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"test_tag_key": pulumi.String("test_tag_value"),
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
/// import com.pulumi.aws.rbin.Rule;
/// import com.pulumi.aws.rbin.RuleArgs;
/// import com.pulumi.aws.rbin.inputs.RuleResourceTagArgs;
/// import com.pulumi.aws.rbin.inputs.RuleRetentionPeriodArgs;
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
///         var example = new Rule("example", RuleArgs.builder()
///             .description("Example tag-level retention rule")
///             .resourceType("EBS_SNAPSHOT")
///             .resourceTags(RuleResourceTagArgs.builder()
///                 .resourceTagKey("tag_key")
///                 .resourceTagValue("tag_value")
///                 .build())
///             .retentionPeriod(RuleRetentionPeriodArgs.builder()
///                 .retentionPeriodValue(10)
///                 .retentionPeriodUnit("DAYS")
///                 .build())
///             .tags(Map.of("test_tag_key", "test_tag_value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rbin:Rule
///     properties:
///       description: Example tag-level retention rule
///       resourceType: EBS_SNAPSHOT
///       resourceTags:
///         - resourceTagKey: tag_key
///           resourceTagValue: tag_value
///       retentionPeriod:
///         retentionPeriodValue: 10
///         retentionPeriodUnit: DAYS
///       tags:
///         test_tag_key: test_tag_value
/// ```
///
///
/// ### Region-Level Retention Rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rbin.Rule("example", {
///     description: "Example region-level retention rule with exclusion tags",
///     resourceType: "EC2_IMAGE",
///     excludeResourceTags: [{
///         resourceTagKey: "tag_key",
///         resourceTagValue: "tag_value",
///     }],
///     retentionPeriod: {
///         retentionPeriodValue: 10,
///         retentionPeriodUnit: "DAYS",
///     },
///     tags: {
///         test_tag_key: "test_tag_value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rbin.Rule("example",
///     description="Example region-level retention rule with exclusion tags",
///     resource_type="EC2_IMAGE",
///     exclude_resource_tags=[{
///         "resource_tag_key": "tag_key",
///         "resource_tag_value": "tag_value",
///     }],
///     retention_period={
///         "retention_period_value": 10,
///         "retention_period_unit": "DAYS",
///     },
///     tags={
///         "test_tag_key": "test_tag_value",
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
///     var example = new Aws.Rbin.Rule("example", new()
///     {
///         Description = "Example region-level retention rule with exclusion tags",
///         ResourceType = "EC2_IMAGE",
///         ExcludeResourceTags = new[]
///         {
///             new Aws.Rbin.Inputs.RuleExcludeResourceTagArgs
///             {
///                 ResourceTagKey = "tag_key",
///                 ResourceTagValue = "tag_value",
///             },
///         },
///         RetentionPeriod = new Aws.Rbin.Inputs.RuleRetentionPeriodArgs
///         {
///             RetentionPeriodValue = 10,
///             RetentionPeriodUnit = "DAYS",
///         },
///         Tags =
///         {
///             { "test_tag_key", "test_tag_value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rbin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rbin.NewRule(ctx, "example", &rbin.RuleArgs{
/// 			Description:  pulumi.String("Example region-level retention rule with exclusion tags"),
/// 			ResourceType: pulumi.String("EC2_IMAGE"),
/// 			ExcludeResourceTags: rbin.RuleExcludeResourceTagArray{
/// 				&rbin.RuleExcludeResourceTagArgs{
/// 					ResourceTagKey:   pulumi.String("tag_key"),
/// 					ResourceTagValue: pulumi.String("tag_value"),
/// 				},
/// 			},
/// 			RetentionPeriod: &rbin.RuleRetentionPeriodArgs{
/// 				RetentionPeriodValue: pulumi.Int(10),
/// 				RetentionPeriodUnit:  pulumi.String("DAYS"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"test_tag_key": pulumi.String("test_tag_value"),
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
/// import com.pulumi.aws.rbin.Rule;
/// import com.pulumi.aws.rbin.RuleArgs;
/// import com.pulumi.aws.rbin.inputs.RuleExcludeResourceTagArgs;
/// import com.pulumi.aws.rbin.inputs.RuleRetentionPeriodArgs;
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
///         var example = new Rule("example", RuleArgs.builder()
///             .description("Example region-level retention rule with exclusion tags")
///             .resourceType("EC2_IMAGE")
///             .excludeResourceTags(RuleExcludeResourceTagArgs.builder()
///                 .resourceTagKey("tag_key")
///                 .resourceTagValue("tag_value")
///                 .build())
///             .retentionPeriod(RuleRetentionPeriodArgs.builder()
///                 .retentionPeriodValue(10)
///                 .retentionPeriodUnit("DAYS")
///                 .build())
///             .tags(Map.of("test_tag_key", "test_tag_value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rbin:Rule
///     properties:
///       description: Example region-level retention rule with exclusion tags
///       resourceType: EC2_IMAGE
///       excludeResourceTags:
///         - resourceTagKey: tag_key
///           resourceTagValue: tag_value
///       retentionPeriod:
///         retentionPeriodValue: 10
///         retentionPeriodUnit: DAYS
///       tags:
///         test_tag_key: test_tag_value
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import RBin Rule using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:rbin/rule:Rule example examplerule
/// ```
class Rule extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;
  /// Retention rule description.
  late final pulumi.Output<String> description;
  /// Exclusion tags to use to identify resources that are to be excluded, or ignored, by a Region-level retention rule. See `exclude_resource_tags` below.
  late final pulumi.Output<List<RuleExcludeResourceTag>?> excludeResourceTags;
  /// Information about the retention rule lock configuration. See `lock_configuration` below.
  late final pulumi.Output<RuleLockConfiguration?> lockConfiguration;
  /// (Timestamp) Date and time at which the unlock delay is set to expire. Only returned for retention rules that have been unlocked and that are still within the unlock delay period.
  late final pulumi.Output<String> lockEndTime;
  /// (Optional) Lock state of the retention rules to list. Only retention rules with the specified lock state are returned. Valid values are `locked`, `pending_unlock`, `unlocked`.
  late final pulumi.Output<String> lockState;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource tags to use to identify resources that are to be retained by a tag-level retention rule. See `resource_tags` below.
  late final pulumi.Output<List<RuleResourceTag>?> resourceTags;
  /// Resource type to be retained by the retention rule. Valid values are `EBS_SNAPSHOT` and `EC2_IMAGE`.
  late final pulumi.Output<String> resourceType;
  /// Information about the retention period for which the retention rule is to retain resources. See `retention_period` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<RuleRetentionPeriod> retentionPeriod;
  /// (String) State of the retention rule. Only retention rules that are in the `available` state retain resources. Valid values include `pending` and `available`.
  late final pulumi.Output<String> status;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_rbin_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rbin/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.excludeResourceTags = registerOutput<List<RuleExcludeResourceTag>?>('excludeResourceTags');
    this.lockConfiguration = registerOutput<RuleLockConfiguration?>('lockConfiguration');
    this.lockEndTime = registerOutput<String>('lockEndTime');
    this.lockState = registerOutput<String>('lockState');
    this.region = registerOutput<String>('region');
    this.resourceTags = registerOutput<List<RuleResourceTag>?>('resourceTags');
    this.resourceType = registerOutput<String>('resourceType');
    this.retentionPeriod = registerOutput<RuleRetentionPeriod>('retentionPeriod');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
