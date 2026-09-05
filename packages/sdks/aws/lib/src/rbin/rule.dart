import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_exclude_resource_tag.dart';
import 'rule_lock_configuration.dart';
import 'rule_resource_tag.dart';
import 'rule_retention_period.dart';
import 'rule_state.dart';

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
///     retentionPeriod: {
///         retentionPeriodValue: 10,
///         retentionPeriodUnit: "DAYS",
///     },
///     resourceTags: [{
///         resourceTagKey: "tag_key",
///         resourceTagValue: "tag_value",
///     }],
///     description: "Example tag-level retention rule",
///     resourceType: "EBS_SNAPSHOT",
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
///     retention_period={
///         "retention_period_value": 10,
///         "retention_period_unit": "DAYS",
///     },
///     resource_tags=[{
///         "resource_tag_key": "tag_key",
///         "resource_tag_value": "tag_value",
///     }],
///     description="Example tag-level retention rule",
///     resource_type="EBS_SNAPSHOT",
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
///         RetentionPeriod = new Aws.Rbin.Inputs.RuleRetentionPeriodArgs
///         {
///             RetentionPeriodValue = 10,
///             RetentionPeriodUnit = "DAYS",
///         },
///         ResourceTags = new[]
///         {
///             new Aws.Rbin.Inputs.RuleResourceTagArgs
///             {
///                 ResourceTagKey = "tag_key",
///                 ResourceTagValue = "tag_value",
///             },
///         },
///         Description = "Example tag-level retention rule",
///         ResourceType = "EBS_SNAPSHOT",
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
/// 			RetentionPeriod: &rbin.RuleRetentionPeriodArgs{
/// 				RetentionPeriodValue: pulumi.Int(10),
/// 				RetentionPeriodUnit:  pulumi.String("DAYS"),
/// 			},
/// 			ResourceTags: rbin.RuleResourceTagArray{
/// 				&rbin.RuleResourceTagArgs{
/// 					ResourceTagKey:   pulumi.String("tag_key"),
/// 					ResourceTagValue: pulumi.String("tag_value"),
/// 				},
/// 			},
/// 			Description:  pulumi.String("Example tag-level retention rule"),
/// 			ResourceType: pulumi.String("EBS_SNAPSHOT"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_rbin_rule" "example" {
///   retention_period = {
///     retention_period_value = 10
///     retention_period_unit  = "DAYS"
///   }
///   resource_tags {
///     resource_tag_key   = "tag_key"
///     resource_tag_value = "tag_value"
///   }
///   description   = "Example tag-level retention rule"
///   resource_type = "EBS_SNAPSHOT"
///   tags = {
///     "test_tag_key" = "test_tag_value"
///   }
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
/// import com.pulumi.aws.rbin.inputs.RuleRetentionPeriodArgs;
/// import com.pulumi.aws.rbin.inputs.RuleResourceTagArgs;
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
///         var example = new Rule("example", RuleArgs.builder()
///             .retentionPeriod(RuleRetentionPeriodArgs.builder()
///                 .retentionPeriodValue(10)
///                 .retentionPeriodUnit("DAYS")
///                 .build())
///             .resourceTags(RuleResourceTagArgs.builder()
///                 .resourceTagKey("tag_key")
///                 .resourceTagValue("tag_value")
///                 .build())
///             .description("Example tag-level retention rule")
///             .resourceType("EBS_SNAPSHOT")
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
///       retentionPeriod:
///         retentionPeriodValue: 10
///         retentionPeriodUnit: DAYS
///       resourceTags:
///         - resourceTagKey: tag_key
///           resourceTagValue: tag_value
///       description: Example tag-level retention rule
///       resourceType: EBS_SNAPSHOT
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
///     retentionPeriod: {
///         retentionPeriodValue: 10,
///         retentionPeriodUnit: "DAYS",
///     },
///     excludeResourceTags: [{
///         resourceTagKey: "tag_key",
///         resourceTagValue: "tag_value",
///     }],
///     description: "Example region-level retention rule with exclusion tags",
///     resourceType: "EC2_IMAGE",
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
///     retention_period={
///         "retention_period_value": 10,
///         "retention_period_unit": "DAYS",
///     },
///     exclude_resource_tags=[{
///         "resource_tag_key": "tag_key",
///         "resource_tag_value": "tag_value",
///     }],
///     description="Example region-level retention rule with exclusion tags",
///     resource_type="EC2_IMAGE",
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
///         RetentionPeriod = new Aws.Rbin.Inputs.RuleRetentionPeriodArgs
///         {
///             RetentionPeriodValue = 10,
///             RetentionPeriodUnit = "DAYS",
///         },
///         ExcludeResourceTags = new[]
///         {
///             new Aws.Rbin.Inputs.RuleExcludeResourceTagArgs
///             {
///                 ResourceTagKey = "tag_key",
///                 ResourceTagValue = "tag_value",
///             },
///         },
///         Description = "Example region-level retention rule with exclusion tags",
///         ResourceType = "EC2_IMAGE",
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
/// 			RetentionPeriod: &rbin.RuleRetentionPeriodArgs{
/// 				RetentionPeriodValue: pulumi.Int(10),
/// 				RetentionPeriodUnit:  pulumi.String("DAYS"),
/// 			},
/// 			ExcludeResourceTags: rbin.RuleExcludeResourceTagArray{
/// 				&rbin.RuleExcludeResourceTagArgs{
/// 					ResourceTagKey:   pulumi.String("tag_key"),
/// 					ResourceTagValue: pulumi.String("tag_value"),
/// 				},
/// 			},
/// 			Description:  pulumi.String("Example region-level retention rule with exclusion tags"),
/// 			ResourceType: pulumi.String("EC2_IMAGE"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_rbin_rule" "example" {
///   retention_period = {
///     retention_period_value = 10
///     retention_period_unit  = "DAYS"
///   }
///   exclude_resource_tags {
///     resource_tag_key   = "tag_key"
///     resource_tag_value = "tag_value"
///   }
///   description   = "Example region-level retention rule with exclusion tags"
///   resource_type = "EC2_IMAGE"
///   tags = {
///     "test_tag_key" = "test_tag_value"
///   }
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
/// import com.pulumi.aws.rbin.inputs.RuleRetentionPeriodArgs;
/// import com.pulumi.aws.rbin.inputs.RuleExcludeResourceTagArgs;
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
///         var example = new Rule("example", RuleArgs.builder()
///             .retentionPeriod(RuleRetentionPeriodArgs.builder()
///                 .retentionPeriodValue(10)
///                 .retentionPeriodUnit("DAYS")
///                 .build())
///             .excludeResourceTags(RuleExcludeResourceTagArgs.builder()
///                 .resourceTagKey("tag_key")
///                 .resourceTagValue("tag_value")
///                 .build())
///             .description("Example region-level retention rule with exclusion tags")
///             .resourceType("EC2_IMAGE")
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
///       retentionPeriod:
///         retentionPeriodValue: 10
///         retentionPeriodUnit: DAYS
///       excludeResourceTags:
///         - resourceTagKey: tag_key
///           resourceTagValue: tag_value
///       description: Example region-level retention rule with exclusion tags
///       resourceType: EC2_IMAGE
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
  /// Exclusion tags to use to identify resources that are to be excluded, or ignored, by a Region-level retention rule. See `excludeResourceTags` below.
  late final pulumi.Output<List<RuleExcludeResourceTag>?> excludeResourceTags;
  /// Information about the retention rule lock configuration. See `lockConfiguration` below.
  late final pulumi.Output<RuleLockConfiguration?> lockConfiguration;
  /// (Timestamp) Date and time at which the unlock delay is set to expire. Only returned for retention rules that have been unlocked and that are still within the unlock delay period.
  late final pulumi.Output<String> lockEndTime;
  /// (Optional) Lock state of the retention rules to list. Only retention rules with the specified lock state are returned. Valid values are `locked`, `pendingUnlock`, `unlocked`.
  late final pulumi.Output<String> lockState;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource tags to use to identify resources that are to be retained by a tag-level retention rule. See `resourceTags` below.
  late final pulumi.Output<List<RuleResourceTag>?> resourceTags;
  /// Resource type to be retained by the retention rule. Valid values are `EBS_SNAPSHOT` and `EC2_IMAGE`.
  late final pulumi.Output<String> resourceType;
  /// Information about the retention period for which the retention rule is to retain resources. See `retentionPeriod` below.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    excludeResourceTags = registerOutput<List<RuleExcludeResourceTag>?>('excludeResourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleExcludeResourceTag>(guardedValue, (value) => RuleExcludeResourceTag.fromMap((value as Map).cast<String, dynamic>())); });
    lockConfiguration = registerOutput<RuleLockConfiguration?>('lockConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleLockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lockEndTime = registerOutput<String>('lockEndTime');
    lockState = registerOutput<String>('lockState');
    region = registerOutput<String>('region');
    resourceTags = registerOutput<List<RuleResourceTag>?>('resourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleResourceTag>(guardedValue, (value) => RuleResourceTag.fromMap((value as Map).cast<String, dynamic>())); });
    resourceType = registerOutput<String>('resourceType');
    retentionPeriod = registerOutput<RuleRetentionPeriod>('retentionPeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleRetentionPeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Rule] resource's state with the given [name] and [id].
  static Rule get(
    String name,
    pulumi.Input<String> id, {
    RuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Rule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Rule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rbin/rule:Rule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    excludeResourceTags = registerOutput<List<RuleExcludeResourceTag>?>('excludeResourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleExcludeResourceTag>(guardedValue, (value) => RuleExcludeResourceTag.fromMap((value as Map).cast<String, dynamic>())); });
    lockConfiguration = registerOutput<RuleLockConfiguration?>('lockConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleLockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lockEndTime = registerOutput<String>('lockEndTime');
    lockState = registerOutput<String>('lockState');
    region = registerOutput<String>('region');
    resourceTags = registerOutput<List<RuleResourceTag>?>('resourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleResourceTag>(guardedValue, (value) => RuleResourceTag.fromMap((value as Map).cast<String, dynamic>())); });
    resourceType = registerOutput<String>('resourceType');
    retentionPeriod = registerOutput<RuleRetentionPeriod>('retentionPeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleRetentionPeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Rule] resource.
  Rule.reference(String urn)
    : super(
        'aws:rbin/rule:Rule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    excludeResourceTags = registerOutput<List<RuleExcludeResourceTag>?>('excludeResourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleExcludeResourceTag>(guardedValue, (value) => RuleExcludeResourceTag.fromMap((value as Map).cast<String, dynamic>())); });
    lockConfiguration = registerOutput<RuleLockConfiguration?>('lockConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleLockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lockEndTime = registerOutput<String>('lockEndTime');
    lockState = registerOutput<String>('lockState');
    region = registerOutput<String>('region');
    resourceTags = registerOutput<List<RuleResourceTag>?>('resourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleResourceTag>(guardedValue, (value) => RuleResourceTag.fromMap((value as Map).cast<String, dynamic>())); });
    resourceType = registerOutput<String>('resourceType');
    retentionPeriod = registerOutput<RuleRetentionPeriod>('retentionPeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleRetentionPeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
