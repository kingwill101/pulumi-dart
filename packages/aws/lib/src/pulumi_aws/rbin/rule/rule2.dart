import 'package:pulumi/pulumi.dart';
import '../rule_exclude_resource_tag/rule_exclude_resource_tag.dart';
import '../rule_lock_configuration/rule_lock_configuration.dart';
import '../rule_resource_tag/rule_resource_tag.dart';
import '../rule_retention_period/rule_retention_period.dart';
import 'rule_args2.dart';

/// Resource for managing an AWS RBin Rule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rbin.Rule("example", {
/// description: "Example tag-level retention rule",
/// resourceType: "EBS_SNAPSHOT",
/// resourceTags: [{
/// resourceTagKey: "tag_key",
/// resourceTagValue: "tag_value",
/// }],
/// retentionPeriod: {
/// retentionPeriodValue: 10,
/// retentionPeriodUnit: "DAYS",
/// },
/// tags: {
/// test_tag_key: "test_tag_value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rbin.Rule("example",
/// description="Example tag-level retention rule",
/// resource_type="EBS_SNAPSHOT",
/// resource_tags=[{
/// "resource_tag_key": "tag_key",
/// "resource_tag_value": "tag_value",
/// }],
/// retention_period={
/// "retention_period_value": 10,
/// "retention_period_unit": "DAYS",
/// },
/// tags={
/// "test_tag_key": "test_tag_value",
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
/// var example = new Aws.Rbin.Rule("example", new()
/// {
/// Description = "Example tag-level retention rule",
/// ResourceType = "EBS_SNAPSHOT",
/// ResourceTags = new[]
/// {
/// new Aws.Rbin.Inputs.RuleResourceTagArgs
/// {
/// ResourceTagKey = "tag_key",
/// ResourceTagValue = "tag_value",
/// },
/// },
/// RetentionPeriod = new Aws.Rbin.Inputs.RuleRetentionPeriodArgs
/// {
/// RetentionPeriodValue = 10,
/// RetentionPeriodUnit = "DAYS",
/// },
/// Tags =
/// {
/// { "test_tag_key", "test_tag_value" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rbin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rbin.NewRule(ctx, "example", &rbin.RuleArgs{
/// Description:  pulumi.String("Example tag-level retention rule"),
/// ResourceType: pulumi.String("EBS_SNAPSHOT"),
/// ResourceTags: rbin.RuleResourceTagArray{
/// &rbin.RuleResourceTagArgs{
/// ResourceTagKey:   pulumi.String("tag_key"),
/// ResourceTagValue: pulumi.String("tag_value"),
/// },
/// },
/// RetentionPeriod: &rbin.RuleRetentionPeriodArgs{
/// RetentionPeriodValue: pulumi.Int(10),
/// RetentionPeriodUnit:  pulumi.String("DAYS"),
/// },
/// Tags: pulumi.StringMap{
/// "test_tag_key": pulumi.String("test_tag_value"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Rule("example", RuleArgs.builder()
/// .description("Example tag-level retention rule")
/// .resourceType("EBS_SNAPSHOT")
/// .resourceTags(RuleResourceTagArgs.builder()
/// .resourceTagKey("tag_key")
/// .resourceTagValue("tag_value")
/// .build())
/// .retentionPeriod(RuleRetentionPeriodArgs.builder()
/// .retentionPeriodValue(10)
/// .retentionPeriodUnit("DAYS")
/// .build())
/// .tags(Map.of("test_tag_key", "test_tag_value"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rbin:Rule
/// properties:
/// description: Example tag-level retention rule
/// resourceType: EBS_SNAPSHOT
/// resourceTags:
/// - resourceTagKey: tag_key
/// resourceTagValue: tag_value
/// retentionPeriod:
/// retentionPeriodValue: 10
/// retentionPeriodUnit: DAYS
/// tags:
/// test_tag_key: test_tag_value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Region-Level Retention Rule
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rbin.Rule("example", {
/// description: "Example region-level retention rule with exclusion tags",
/// resourceType: "EC2_IMAGE",
/// excludeResourceTags: [{
/// resourceTagKey: "tag_key",
/// resourceTagValue: "tag_value",
/// }],
/// retentionPeriod: {
/// retentionPeriodValue: 10,
/// retentionPeriodUnit: "DAYS",
/// },
/// tags: {
/// test_tag_key: "test_tag_value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rbin.Rule("example",
/// description="Example region-level retention rule with exclusion tags",
/// resource_type="EC2_IMAGE",
/// exclude_resource_tags=[{
/// "resource_tag_key": "tag_key",
/// "resource_tag_value": "tag_value",
/// }],
/// retention_period={
/// "retention_period_value": 10,
/// "retention_period_unit": "DAYS",
/// },
/// tags={
/// "test_tag_key": "test_tag_value",
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
/// var example = new Aws.Rbin.Rule("example", new()
/// {
/// Description = "Example region-level retention rule with exclusion tags",
/// ResourceType = "EC2_IMAGE",
/// ExcludeResourceTags = new[]
/// {
/// new Aws.Rbin.Inputs.RuleExcludeResourceTagArgs
/// {
/// ResourceTagKey = "tag_key",
/// ResourceTagValue = "tag_value",
/// },
/// },
/// RetentionPeriod = new Aws.Rbin.Inputs.RuleRetentionPeriodArgs
/// {
/// RetentionPeriodValue = 10,
/// RetentionPeriodUnit = "DAYS",
/// },
/// Tags =
/// {
/// { "test_tag_key", "test_tag_value" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rbin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rbin.NewRule(ctx, "example", &rbin.RuleArgs{
/// Description:  pulumi.String("Example region-level retention rule with exclusion tags"),
/// ResourceType: pulumi.String("EC2_IMAGE"),
/// ExcludeResourceTags: rbin.RuleExcludeResourceTagArray{
/// &rbin.RuleExcludeResourceTagArgs{
/// ResourceTagKey:   pulumi.String("tag_key"),
/// ResourceTagValue: pulumi.String("tag_value"),
/// },
/// },
/// RetentionPeriod: &rbin.RuleRetentionPeriodArgs{
/// RetentionPeriodValue: pulumi.Int(10),
/// RetentionPeriodUnit:  pulumi.String("DAYS"),
/// },
/// Tags: pulumi.StringMap{
/// "test_tag_key": pulumi.String("test_tag_value"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Rule("example", RuleArgs.builder()
/// .description("Example region-level retention rule with exclusion tags")
/// .resourceType("EC2_IMAGE")
/// .excludeResourceTags(RuleExcludeResourceTagArgs.builder()
/// .resourceTagKey("tag_key")
/// .resourceTagValue("tag_value")
/// .build())
/// .retentionPeriod(RuleRetentionPeriodArgs.builder()
/// .retentionPeriodValue(10)
/// .retentionPeriodUnit("DAYS")
/// .build())
/// .tags(Map.of("test_tag_key", "test_tag_value"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rbin:Rule
/// properties:
/// description: Example region-level retention rule with exclusion tags
/// resourceType: EC2_IMAGE
/// excludeResourceTags:
/// - resourceTagKey: tag_key
/// resourceTagValue: tag_value
/// retentionPeriod:
/// retentionPeriodValue: 10
/// retentionPeriodUnit: DAYS
/// tags:
/// test_tag_key: test_tag_value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import RBin Rule using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rbin/rule:Rule example examplerule
/// ```
class Rule2 extends CustomResource {
  late final Output<String> arn;

  /// Retention rule description.
  late final Output<String> description;

  /// Exclusion tags to use to identify resources that are to be excluded, or ignored, by a Region-level retention rule. See <span pulumi-lang-nodejs="`excludeResourceTags`" pulumi-lang-dotnet="`ExcludeResourceTags`" pulumi-lang-go="`excludeResourceTags`" pulumi-lang-python="`exclude_resource_tags`" pulumi-lang-yaml="`excludeResourceTags`" pulumi-lang-java="`excludeResourceTags`">`exclude_resource_tags`</span> below.
  late final Output<List<RuleExcludeResourceTag>?> excludeResourceTags;

  /// Information about the retention rule lock configuration. See <span pulumi-lang-nodejs="`lockConfiguration`" pulumi-lang-dotnet="`LockConfiguration`" pulumi-lang-go="`lockConfiguration`" pulumi-lang-python="`lock_configuration`" pulumi-lang-yaml="`lockConfiguration`" pulumi-lang-java="`lockConfiguration`">`lock_configuration`</span> below.
  late final Output<RuleLockConfiguration?> lockConfiguration;

  /// (Timestamp) Date and time at which the unlock delay is set to expire. Only returned for retention rules that have been unlocked and that are still within the unlock delay period.
  late final Output<String> lockEndTime;

  /// (Optional) Lock state of the retention rules to list. Only retention rules with the specified lock state are returned. Valid values are <span pulumi-lang-nodejs="`locked`" pulumi-lang-dotnet="`Locked`" pulumi-lang-go="`locked`" pulumi-lang-python="`locked`" pulumi-lang-yaml="`locked`" pulumi-lang-java="`locked`">`locked`</span>, <span pulumi-lang-nodejs="`pendingUnlock`" pulumi-lang-dotnet="`PendingUnlock`" pulumi-lang-go="`pendingUnlock`" pulumi-lang-python="`pending_unlock`" pulumi-lang-yaml="`pendingUnlock`" pulumi-lang-java="`pendingUnlock`">`pending_unlock`</span>, <span pulumi-lang-nodejs="`unlocked`" pulumi-lang-dotnet="`Unlocked`" pulumi-lang-go="`unlocked`" pulumi-lang-python="`unlocked`" pulumi-lang-yaml="`unlocked`" pulumi-lang-java="`unlocked`">`unlocked`</span>.
  late final Output<String> lockState;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource tags to use to identify resources that are to be retained by a tag-level retention rule. See <span pulumi-lang-nodejs="`resourceTags`" pulumi-lang-dotnet="`ResourceTags`" pulumi-lang-go="`resourceTags`" pulumi-lang-python="`resource_tags`" pulumi-lang-yaml="`resourceTags`" pulumi-lang-java="`resourceTags`">`resource_tags`</span> below.
  late final Output<List<RuleResourceTag>?> resourceTags;

  /// Resource type to be retained by the retention rule. Valid values are `EBS_SNAPSHOT` and `EC2_IMAGE`.
  late final Output<String> resourceType;

  /// Information about the retention period for which the retention rule is to retain resources. See <span pulumi-lang-nodejs="`retentionPeriod`" pulumi-lang-dotnet="`RetentionPeriod`" pulumi-lang-go="`retentionPeriod`" pulumi-lang-python="`retention_period`" pulumi-lang-yaml="`retentionPeriod`" pulumi-lang-java="`retentionPeriod`">`retention_period`</span> below.
  ///
  /// The following arguments are optional:
  late final Output<RuleRetentionPeriod> retentionPeriod;

  /// (String) State of the retention rule. Only retention rules that are in the <span pulumi-lang-nodejs="`available`" pulumi-lang-dotnet="`Available`" pulumi-lang-go="`available`" pulumi-lang-python="`available`" pulumi-lang-yaml="`available`" pulumi-lang-java="`available`">`available`</span> state retain resources. Valid values include <span pulumi-lang-nodejs="`pending`" pulumi-lang-dotnet="`Pending`" pulumi-lang-go="`pending`" pulumi-lang-python="`pending`" pulumi-lang-yaml="`pending`" pulumi-lang-java="`pending`">`pending`</span> and <span pulumi-lang-nodejs="`available`" pulumi-lang-dotnet="`Available`" pulumi-lang-go="`available`" pulumi-lang-python="`available`" pulumi-lang-yaml="`available`" pulumi-lang-java="`available`">`available`</span>.
  late final Output<String> status;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  Rule2(
    String name, {
    RuleArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rbin/rule:Rule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.excludeResourceTags =
        Output.createUnknown<List<RuleExcludeResourceTag>?>();
    this.lockConfiguration = Output.createUnknown<RuleLockConfiguration?>();
    this.lockEndTime = Output.createUnknown<String>();
    this.lockState = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceTags = Output.createUnknown<List<RuleResourceTag>?>();
    this.resourceType = Output.createUnknown<String>();
    this.retentionPeriod = Output.createUnknown<RuleRetentionPeriod>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
