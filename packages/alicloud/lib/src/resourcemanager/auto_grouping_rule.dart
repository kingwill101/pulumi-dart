import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_grouping_rule_args.dart';
import 'auto_grouping_rule_rule_content.dart';

/// Provides a Resource Manager Auto Grouping Rule resource.
///
/// Auto grouping rules of resource group.
///
/// For information about Resource Manager Auto Grouping Rule and how to use it, see [What is Auto Grouping Rule](https://www.alibabacloud.com/help/en/resource-management/resource-group/developer-reference/api-resourcemanager-2020-03-31-createautogroupingrule-rg).
///
/// > **NOTE:** Available since v1.246.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.resourcemanager.AutoGroupingRule("default", {
///     ruleContents: [{
///         targetResourceGroupCondition: `    {
///         \\"children\\": [
///       {
///         \\"desired\\": \\"rg-aek*****sbvy\\",
///         \\"featurePath\\": \\".resourceGroupId\\",
///         \\"featureSource\\": \\"RESOURCE\\",
///         \\"operator\\": \\"StringEquals\\"
///       }
///         ],
///         \\"operator\\": \\"and\\"
///     }
/// `,
///         autoGroupingScopeCondition: `    {
///         \\"children\\": [
///       {
///         \\"desired\\": \\"name_a\\",
///         \\"featurePath\\": \\".resourceName\\",
///         \\"featureSource\\": \\"RESOURCE\\",
///         \\"operator\\": \\"StringEqualsAny\\"
///       }
///         ],
///         \\"operator\\": \\"and\\"
///     }
/// `,
///     }],
///     ruleDesc: name,
///     ruleType: "custom_condition",
///     regionIdsScope: "cn-hangzhou,cn-shanghai",
///     resourceIdsScope: "imock-xxxxxx",
///     resourceGroupIdsScope: "rg-aek22*****3sbvz",
///     resourceTypesScope: "ecs.instance,vpc.vpc",
///     ruleName: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.AutoGroupingRule("default",
///     rule_contents=[{
///         "target_resource_group_condition": """    {
///         \"children\": [
///       {
///         \"desired\": \"rg-aek*****sbvy\",
///         \"featurePath\": \"$.resourceGroupId\",
///         \"featureSource\": \"RESOURCE\",
///         \"operator\": \"StringEquals\"
///       }
///         ],
///         \"operator\": \"and\"
///     }
/// """,
///         "auto_grouping_scope_condition": """    {
///         \"children\": [
///       {
///         \"desired\": \"name_a\",
///         \"featurePath\": \"$.resourceName\",
///         \"featureSource\": \"RESOURCE\",
///         \"operator\": \"StringEqualsAny\"
///       }
///         ],
///         \"operator\": \"and\"
///     }
/// """,
///     }],
///     rule_desc=name,
///     rule_type="custom_condition",
///     region_ids_scope="cn-hangzhou,cn-shanghai",
///     resource_ids_scope="imock-xxxxxx",
///     resource_group_ids_scope="rg-aek22*****3sbvz",
///     resource_types_scope="ecs.instance,vpc.vpc",
///     rule_name=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.ResourceManager.AutoGroupingRule("default", new()
///     {
///         RuleContents = new[]
///         {
///             new AliCloud.ResourceManager.Inputs.AutoGroupingRuleRuleContentArgs
///             {
///                 TargetResourceGroupCondition = @"    {
///         \""children\"": [
///       {
///         \""desired\"": \""rg-aek*****sbvy\"",
///         \""featurePath\"": \""$.resourceGroupId\"",
///         \""featureSource\"": \""RESOURCE\"",
///         \""operator\"": \""StringEquals\""
///       }
///         ],
///         \""operator\"": \""and\""
///     }
/// ",
///                 AutoGroupingScopeCondition = @"    {
///         \""children\"": [
///       {
///         \""desired\"": \""name_a\"",
///         \""featurePath\"": \""$.resourceName\"",
///         \""featureSource\"": \""RESOURCE\"",
///         \""operator\"": \""StringEqualsAny\""
///       }
///         ],
///         \""operator\"": \""and\""
///     }
/// ",
///             },
///         },
///         RuleDesc = name,
///         RuleType = "custom_condition",
///         RegionIdsScope = "cn-hangzhou,cn-shanghai",
///         ResourceIdsScope = "imock-xxxxxx",
///         ResourceGroupIdsScope = "rg-aek22*****3sbvz",
///         ResourceTypesScope = "ecs.instance,vpc.vpc",
///         RuleName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := resourcemanager.NewAutoGroupingRule(ctx, "default", &resourcemanager.AutoGroupingRuleArgs{
/// 			RuleContents: resourcemanager.AutoGroupingRuleRuleContentArray{
/// 				&resourcemanager.AutoGroupingRuleRuleContentArgs{
/// 					TargetResourceGroupCondition: pulumi.String(`    {
///         \"children\": [
///       {
///         \"desired\": \"rg-aek*****sbvy\",
///         \"featurePath\": \"$.resourceGroupId\",
///         \"featureSource\": \"RESOURCE\",
///         \"operator\": \"StringEquals\"
///       }
///         ],
///         \"operator\": \"and\"
///     }
/// `),
/// 					AutoGroupingScopeCondition: pulumi.String(`    {
///         \"children\": [
///       {
///         \"desired\": \"name_a\",
///         \"featurePath\": \"$.resourceName\",
///         \"featureSource\": \"RESOURCE\",
///         \"operator\": \"StringEqualsAny\"
///       }
///         ],
///         \"operator\": \"and\"
///     }
/// `),
/// 				},
/// 			},
/// 			RuleDesc:              pulumi.String(name),
/// 			RuleType:              pulumi.String("custom_condition"),
/// 			RegionIdsScope:        pulumi.String("cn-hangzhou,cn-shanghai"),
/// 			ResourceIdsScope:      pulumi.String("imock-xxxxxx"),
/// 			ResourceGroupIdsScope: pulumi.String("rg-aek22*****3sbvz"),
/// 			ResourceTypesScope:    pulumi.String("ecs.instance,vpc.vpc"),
/// 			RuleName:              pulumi.String(name),
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
/// import com.pulumi.alicloud.resourcemanager.AutoGroupingRule;
/// import com.pulumi.alicloud.resourcemanager.AutoGroupingRuleArgs;
/// import com.pulumi.alicloud.resourcemanager.inputs.AutoGroupingRuleRuleContentArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new AutoGroupingRule("default", AutoGroupingRuleArgs.builder()
///             .ruleContents(AutoGroupingRuleRuleContentArgs.builder()
///                 .targetResourceGroupCondition("""
///     {
///         \"children\": [
///       {
///         \"desired\": \"rg-aek*****sbvy\",
///         \"featurePath\": \"$.resourceGroupId\",
///         \"featureSource\": \"RESOURCE\",
///         \"operator\": \"StringEquals\"
///       }
///         ],
///         \"operator\": \"and\"
///     }
///                 """)
///                 .autoGroupingScopeCondition("""
///     {
///         \"children\": [
///       {
///         \"desired\": \"name_a\",
///         \"featurePath\": \"$.resourceName\",
///         \"featureSource\": \"RESOURCE\",
///         \"operator\": \"StringEqualsAny\"
///       }
///         ],
///         \"operator\": \"and\"
///     }
///                 """)
///                 .build())
///             .ruleDesc(name)
///             .ruleType("custom_condition")
///             .regionIdsScope("cn-hangzhou,cn-shanghai")
///             .resourceIdsScope("imock-xxxxxx")
///             .resourceGroupIdsScope("rg-aek22*****3sbvz")
///             .resourceTypesScope("ecs.instance,vpc.vpc")
///             .ruleName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:resourcemanager:AutoGroupingRule
///     properties:
///       ruleContents:
///         - targetResourceGroupCondition: |2
///                 {
///                     \"children\": [
///                   {
///                     \"desired\": \"rg-aek*****sbvy\",
///                     \"featurePath\": \"$.resourceGroupId\",
///                     \"featureSource\": \"RESOURCE\",
///                     \"operator\": \"StringEquals\"
///                   }
///                     ],
///                     \"operator\": \"and\"
///                 }
///           autoGroupingScopeCondition: |2
///                 {
///                     \"children\": [
///                   {
///                     \"desired\": \"name_a\",
///                     \"featurePath\": \"$.resourceName\",
///                     \"featureSource\": \"RESOURCE\",
///                     \"operator\": \"StringEqualsAny\"
///                   }
///                     ],
///                     \"operator\": \"and\"
///                 }
///       ruleDesc: ${name}
///       ruleType: custom_condition
///       regionIdsScope: cn-hangzhou,cn-shanghai
///       resourceIdsScope: imock-xxxxxx
///       resourceGroupIdsScope: rg-aek22*****3sbvz
///       resourceTypesScope: ecs.instance,vpc.vpc
///       ruleName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Auto Grouping Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/autoGroupingRule:AutoGroupingRule example <id>
/// ```
class AutoGroupingRule extends pulumi.CustomResource {
  /// The IDs of regions to be excluded. Separate multiple IDs with commas (,).
  late final pulumi.Output<String?> excludeRegionIdsScope;
  /// The IDs of resource groups to be excluded. Separate multiple IDs with commas (,).
  late final pulumi.Output<String?> excludeResourceGroupIdsScope;
  /// The IDs of resources to be excluded. Separate multiple IDs with commas (,).
  late final pulumi.Output<String?> excludeResourceIdsScope;
  /// The resource types to be excluded. Separate multiple resource types with commas (,).
  late final pulumi.Output<String?> excludeResourceTypesScope;
  /// The IDs of regions. Separate multiple IDs with commas (,).
  late final pulumi.Output<String?> regionIdsScope;
  /// The IDs of resource groups. Separate multiple IDs with commas (,).
  late final pulumi.Output<String?> resourceGroupIdsScope;
  /// The IDs of resources. Separate multiple IDs with commas (,).
  late final pulumi.Output<String?> resourceIdsScope;
  /// The resource types. Separate multiple resource types with commas (,).
  late final pulumi.Output<String?> resourceTypesScope;
  /// The content records of the rule. See `rule_contents` below.
  late final pulumi.Output<List<AutoGroupingRuleRuleContent>> ruleContents;
  /// The description of the rule.
  late final pulumi.Output<String?> ruleDesc;
  /// The name of the rule.
  late final pulumi.Output<String> ruleName;
  /// The type of the rule. Valid values:
  late final pulumi.Output<String> ruleType;

  /// Creates a new [AutoGroupingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoGroupingRule]. {@macro pulumi_resourcemanager_auto_grouping_rule_auto_grouping_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoGroupingRule(
    String name, {
    AutoGroupingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/autoGroupingRule:AutoGroupingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.excludeRegionIdsScope = registerOutput<String?>('excludeRegionIdsScope');
    this.excludeResourceGroupIdsScope = registerOutput<String?>('excludeResourceGroupIdsScope');
    this.excludeResourceIdsScope = registerOutput<String?>('excludeResourceIdsScope');
    this.excludeResourceTypesScope = registerOutput<String?>('excludeResourceTypesScope');
    this.regionIdsScope = registerOutput<String?>('regionIdsScope');
    this.resourceGroupIdsScope = registerOutput<String?>('resourceGroupIdsScope');
    this.resourceIdsScope = registerOutput<String?>('resourceIdsScope');
    this.resourceTypesScope = registerOutput<String?>('resourceTypesScope');
    this.ruleContents = registerOutput<List<AutoGroupingRuleRuleContent>>('ruleContents');
    this.ruleDesc = registerOutput<String?>('ruleDesc');
    this.ruleName = registerOutput<String>('ruleName');
    this.ruleType = registerOutput<String>('ruleType');
  }
}
