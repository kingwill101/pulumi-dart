import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_allocation_rule_args.dart';
import 'cost_allocation_rule_properties_response.dart';

/// The cost allocation rule model definition
///
/// Uses Azure REST API version 2024-08-01. In version 2.x of the Azure Native provider, it used API version 2020-03-01-preview.
///
/// Other available API versions: 2020-03-01-preview, 2023-08-01, 2023-09-01, 2023-11-01, 2024-10-01-preview, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native costmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CostAllocationRulesCreateResourceGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var costAllocationRule = new AzureNative.CostManagement.CostAllocationRule("costAllocationRule", new()
///     {
///         BillingAccountId = "100",
///         Properties = new AzureNative.CostManagement.Inputs.CostAllocationRulePropertiesArgs
///         {
///             Description = "This is a testRule",
///             Details = new AzureNative.CostManagement.Inputs.CostAllocationRuleDetailsArgs
///             {
///                 SourceResources = new[]
///                 {
///                     new AzureNative.CostManagement.Inputs.SourceCostAllocationResourceArgs
///                     {
///                         Name = "ResourceGroupName",
///                         ResourceType = AzureNative.CostManagement.CostAllocationResourceType.Dimension,
///                         Values = new[]
///                         {
///                             "sampleRG",
///                             "secondRG",
///                         },
///                     },
///                 },
///                 TargetResources = new[]
///                 {
///                     new AzureNative.CostManagement.Inputs.TargetCostAllocationResourceArgs
///                     {
///                         Name = "ResourceGroupName",
///                         PolicyType = AzureNative.CostManagement.CostAllocationPolicyType.FixedProportion,
///                         ResourceType = AzureNative.CostManagement.CostAllocationResourceType.Dimension,
///                         Values = new[]
///                         {
///                             new AzureNative.CostManagement.Inputs.CostAllocationProportionArgs
///                             {
///                                 Name = "destinationRG",
///                                 Percentage = 45,
///                             },
///                             new AzureNative.CostManagement.Inputs.CostAllocationProportionArgs
///                             {
///                                 Name = "destinationRG2",
///                                 Percentage = 54,
///                             },
///                         },
///                     },
///                 },
///             },
///             Status = AzureNative.CostManagement.RuleStatus.Active,
///         },
///         RuleName = "testRule",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewCostAllocationRule(ctx, "costAllocationRule", &costmanagement.CostAllocationRuleArgs{
/// 			BillingAccountId: pulumi.String("100"),
/// 			Properties: &costmanagement.CostAllocationRulePropertiesArgs{
/// 				Description: pulumi.String("This is a testRule"),
/// 				Details: &costmanagement.CostAllocationRuleDetailsArgs{
/// 					SourceResources: costmanagement.SourceCostAllocationResourceArray{
/// 						&costmanagement.SourceCostAllocationResourceArgs{
/// 							Name:         pulumi.String("ResourceGroupName"),
/// 							ResourceType: pulumi.String(costmanagement.CostAllocationResourceTypeDimension),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("sampleRG"),
/// 								pulumi.String("secondRG"),
/// 							},
/// 						},
/// 					},
/// 					TargetResources: costmanagement.TargetCostAllocationResourceArray{
/// 						&costmanagement.TargetCostAllocationResourceArgs{
/// 							Name:         pulumi.String("ResourceGroupName"),
/// 							PolicyType:   pulumi.String(costmanagement.CostAllocationPolicyTypeFixedProportion),
/// 							ResourceType: pulumi.String(costmanagement.CostAllocationResourceTypeDimension),
/// 							Values: costmanagement.CostAllocationProportionArray{
/// 								&costmanagement.CostAllocationProportionArgs{
/// 									Name:       pulumi.String("destinationRG"),
/// 									Percentage: pulumi.Float64(45),
/// 								},
/// 								&costmanagement.CostAllocationProportionArgs{
/// 									Name:       pulumi.String("destinationRG2"),
/// 									Percentage: pulumi.Float64(54),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Status: pulumi.String(costmanagement.RuleStatusActive),
/// 			},
/// 			RuleName: pulumi.String("testRule"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.costmanagement.CostAllocationRule;
/// import com.pulumi.azurenative.costmanagement.CostAllocationRuleArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.CostAllocationRulePropertiesArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.CostAllocationRuleDetailsArgs;
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
///         var costAllocationRule = new CostAllocationRule("costAllocationRule", CostAllocationRuleArgs.builder()
///             .billingAccountId("100")
///             .properties(CostAllocationRulePropertiesArgs.builder()
///                 .description("This is a testRule")
///                 .details(CostAllocationRuleDetailsArgs.builder()
///                     .sourceResources(SourceCostAllocationResourceArgs.builder()
///                         .name("ResourceGroupName")
///                         .resourceType("Dimension")
///                         .values(
///                             "sampleRG",
///                             "secondRG")
///                         .build())
///                     .targetResources(TargetCostAllocationResourceArgs.builder()
///                         .name("ResourceGroupName")
///                         .policyType("FixedProportion")
///                         .resourceType("Dimension")
///                         .values(
///                             CostAllocationProportionArgs.builder()
///                                 .name("destinationRG")
///                                 .percentage(45.0)
///                                 .build(),
///                             CostAllocationProportionArgs.builder()
///                                 .name("destinationRG2")
///                                 .percentage(54.0)
///                                 .build())
///                         .build())
///                     .build())
///                 .status("Active")
///                 .build())
///             .ruleName("testRule")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const costAllocationRule = new azure_native.costmanagement.CostAllocationRule("costAllocationRule", {
///     billingAccountId: "100",
///     properties: {
///         description: "This is a testRule",
///         details: {
///             sourceResources: [{
///                 name: "ResourceGroupName",
///                 resourceType: azure_native.costmanagement.CostAllocationResourceType.Dimension,
///                 values: [
///                     "sampleRG",
///                     "secondRG",
///                 ],
///             }],
///             targetResources: [{
///                 name: "ResourceGroupName",
///                 policyType: azure_native.costmanagement.CostAllocationPolicyType.FixedProportion,
///                 resourceType: azure_native.costmanagement.CostAllocationResourceType.Dimension,
///                 values: [
///                     {
///                         name: "destinationRG",
///                         percentage: 45,
///                     },
///                     {
///                         name: "destinationRG2",
///                         percentage: 54,
///                     },
///                 ],
///             }],
///         },
///         status: azure_native.costmanagement.RuleStatus.Active,
///     },
///     ruleName: "testRule",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cost_allocation_rule = azure_native.costmanagement.CostAllocationRule("costAllocationRule",
///     billing_account_id="100",
///     properties={
///         "description": "This is a testRule",
///         "details": {
///             "source_resources": [{
///                 "name": "ResourceGroupName",
///                 "resource_type": azure_native.costmanagement.CostAllocationResourceType.DIMENSION,
///                 "values": [
///                     "sampleRG",
///                     "secondRG",
///                 ],
///             }],
///             "target_resources": [{
///                 "name": "ResourceGroupName",
///                 "policy_type": azure_native.costmanagement.CostAllocationPolicyType.FIXED_PROPORTION,
///                 "resource_type": azure_native.costmanagement.CostAllocationResourceType.DIMENSION,
///                 "values": [
///                     {
///                         "name": "destinationRG",
///                         "percentage": 45,
///                     },
///                     {
///                         "name": "destinationRG2",
///                         "percentage": 54,
///                     },
///                 ],
///             }],
///         },
///         "status": azure_native.costmanagement.RuleStatus.ACTIVE,
///     },
///     rule_name="testRule")
///
/// ```
///
/// ```yaml
/// resources:
///   costAllocationRule:
///     type: azure-native:costmanagement:CostAllocationRule
///     properties:
///       billingAccountId: '100'
///       properties:
///         description: This is a testRule
///         details:
///           sourceResources:
///             - name: ResourceGroupName
///               resourceType: Dimension
///               values:
///                 - sampleRG
///                 - secondRG
///           targetResources:
///             - name: ResourceGroupName
///               policyType: FixedProportion
///               resourceType: Dimension
///               values:
///                 - name: destinationRG
///                   percentage: 45
///                 - name: destinationRG2
///                   percentage: 54
///         status: Active
///       ruleName: testRule
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CostAllocationRulesCreateTag
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var costAllocationRule = new AzureNative.CostManagement.CostAllocationRule("costAllocationRule", new()
///     {
///         BillingAccountId = "100",
///         Properties = new AzureNative.CostManagement.Inputs.CostAllocationRulePropertiesArgs
///         {
///             Description = "This is a testRule",
///             Details = new AzureNative.CostManagement.Inputs.CostAllocationRuleDetailsArgs
///             {
///                 SourceResources = new[]
///                 {
///                     new AzureNative.CostManagement.Inputs.SourceCostAllocationResourceArgs
///                     {
///                         Name = "category",
///                         ResourceType = AzureNative.CostManagement.CostAllocationResourceType.Tag,
///                         Values = new[]
///                         {
///                             "devops",
///                         },
///                     },
///                 },
///                 TargetResources = new[]
///                 {
///                     new AzureNative.CostManagement.Inputs.TargetCostAllocationResourceArgs
///                     {
///                         Name = "ResourceGroupName",
///                         PolicyType = AzureNative.CostManagement.CostAllocationPolicyType.FixedProportion,
///                         ResourceType = AzureNative.CostManagement.CostAllocationResourceType.Dimension,
///                         Values = new[]
///                         {
///                             new AzureNative.CostManagement.Inputs.CostAllocationProportionArgs
///                             {
///                                 Name = "destinationRG",
///                                 Percentage = 33.33,
///                             },
///                             new AzureNative.CostManagement.Inputs.CostAllocationProportionArgs
///                             {
///                                 Name = "destinationRG2",
///                                 Percentage = 33.33,
///                             },
///                             new AzureNative.CostManagement.Inputs.CostAllocationProportionArgs
///                             {
///                                 Name = "destinationRG3",
///                                 Percentage = 33.34,
///                             },
///                         },
///                     },
///                 },
///             },
///             Status = AzureNative.CostManagement.RuleStatus.Active,
///         },
///         RuleName = "testRule",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewCostAllocationRule(ctx, "costAllocationRule", &costmanagement.CostAllocationRuleArgs{
/// 			BillingAccountId: pulumi.String("100"),
/// 			Properties: &costmanagement.CostAllocationRulePropertiesArgs{
/// 				Description: pulumi.String("This is a testRule"),
/// 				Details: &costmanagement.CostAllocationRuleDetailsArgs{
/// 					SourceResources: costmanagement.SourceCostAllocationResourceArray{
/// 						&costmanagement.SourceCostAllocationResourceArgs{
/// 							Name:         pulumi.String("category"),
/// 							ResourceType: pulumi.String(costmanagement.CostAllocationResourceTypeTag),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("devops"),
/// 							},
/// 						},
/// 					},
/// 					TargetResources: costmanagement.TargetCostAllocationResourceArray{
/// 						&costmanagement.TargetCostAllocationResourceArgs{
/// 							Name:         pulumi.String("ResourceGroupName"),
/// 							PolicyType:   pulumi.String(costmanagement.CostAllocationPolicyTypeFixedProportion),
/// 							ResourceType: pulumi.String(costmanagement.CostAllocationResourceTypeDimension),
/// 							Values: costmanagement.CostAllocationProportionArray{
/// 								&costmanagement.CostAllocationProportionArgs{
/// 									Name:       pulumi.String("destinationRG"),
/// 									Percentage: pulumi.Float64(33.33),
/// 								},
/// 								&costmanagement.CostAllocationProportionArgs{
/// 									Name:       pulumi.String("destinationRG2"),
/// 									Percentage: pulumi.Float64(33.33),
/// 								},
/// 								&costmanagement.CostAllocationProportionArgs{
/// 									Name:       pulumi.String("destinationRG3"),
/// 									Percentage: pulumi.Float64(33.34),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Status: pulumi.String(costmanagement.RuleStatusActive),
/// 			},
/// 			RuleName: pulumi.String("testRule"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.costmanagement.CostAllocationRule;
/// import com.pulumi.azurenative.costmanagement.CostAllocationRuleArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.CostAllocationRulePropertiesArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.CostAllocationRuleDetailsArgs;
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
///         var costAllocationRule = new CostAllocationRule("costAllocationRule", CostAllocationRuleArgs.builder()
///             .billingAccountId("100")
///             .properties(CostAllocationRulePropertiesArgs.builder()
///                 .description("This is a testRule")
///                 .details(CostAllocationRuleDetailsArgs.builder()
///                     .sourceResources(SourceCostAllocationResourceArgs.builder()
///                         .name("category")
///                         .resourceType("Tag")
///                         .values("devops")
///                         .build())
///                     .targetResources(TargetCostAllocationResourceArgs.builder()
///                         .name("ResourceGroupName")
///                         .policyType("FixedProportion")
///                         .resourceType("Dimension")
///                         .values(
///                             CostAllocationProportionArgs.builder()
///                                 .name("destinationRG")
///                                 .percentage(33.33)
///                                 .build(),
///                             CostAllocationProportionArgs.builder()
///                                 .name("destinationRG2")
///                                 .percentage(33.33)
///                                 .build(),
///                             CostAllocationProportionArgs.builder()
///                                 .name("destinationRG3")
///                                 .percentage(33.34)
///                                 .build())
///                         .build())
///                     .build())
///                 .status("Active")
///                 .build())
///             .ruleName("testRule")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const costAllocationRule = new azure_native.costmanagement.CostAllocationRule("costAllocationRule", {
///     billingAccountId: "100",
///     properties: {
///         description: "This is a testRule",
///         details: {
///             sourceResources: [{
///                 name: "category",
///                 resourceType: azure_native.costmanagement.CostAllocationResourceType.Tag,
///                 values: ["devops"],
///             }],
///             targetResources: [{
///                 name: "ResourceGroupName",
///                 policyType: azure_native.costmanagement.CostAllocationPolicyType.FixedProportion,
///                 resourceType: azure_native.costmanagement.CostAllocationResourceType.Dimension,
///                 values: [
///                     {
///                         name: "destinationRG",
///                         percentage: 33.33,
///                     },
///                     {
///                         name: "destinationRG2",
///                         percentage: 33.33,
///                     },
///                     {
///                         name: "destinationRG3",
///                         percentage: 33.34,
///                     },
///                 ],
///             }],
///         },
///         status: azure_native.costmanagement.RuleStatus.Active,
///     },
///     ruleName: "testRule",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cost_allocation_rule = azure_native.costmanagement.CostAllocationRule("costAllocationRule",
///     billing_account_id="100",
///     properties={
///         "description": "This is a testRule",
///         "details": {
///             "source_resources": [{
///                 "name": "category",
///                 "resource_type": azure_native.costmanagement.CostAllocationResourceType.TAG,
///                 "values": ["devops"],
///             }],
///             "target_resources": [{
///                 "name": "ResourceGroupName",
///                 "policy_type": azure_native.costmanagement.CostAllocationPolicyType.FIXED_PROPORTION,
///                 "resource_type": azure_native.costmanagement.CostAllocationResourceType.DIMENSION,
///                 "values": [
///                     {
///                         "name": "destinationRG",
///                         "percentage": 33.33,
///                     },
///                     {
///                         "name": "destinationRG2",
///                         "percentage": 33.33,
///                     },
///                     {
///                         "name": "destinationRG3",
///                         "percentage": 33.34,
///                     },
///                 ],
///             }],
///         },
///         "status": azure_native.costmanagement.RuleStatus.ACTIVE,
///     },
///     rule_name="testRule")
///
/// ```
///
/// ```yaml
/// resources:
///   costAllocationRule:
///     type: azure-native:costmanagement:CostAllocationRule
///     properties:
///       billingAccountId: '100'
///       properties:
///         description: This is a testRule
///         details:
///           sourceResources:
///             - name: category
///               resourceType: Tag
///               values:
///                 - devops
///           targetResources:
///             - name: ResourceGroupName
///               policyType: FixedProportion
///               resourceType: Dimension
///               values:
///                 - name: destinationRG
///                   percentage: 33.33
///                 - name: destinationRG2
///                   percentage: 33.33
///                 - name: destinationRG3
///                   percentage: 33.34
///         status: Active
///       ruleName: testRule
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:costmanagement:CostAllocationRule testRule /providers/Microsoft.Billing/billingAccounts/{billingAccountId}/providers/Microsoft.CostManagement/costAllocationRules/{ruleName}
/// ```
class CostAllocationRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Name of the rule. This is a read only value.
  late final pulumi.Output<String> name;

  /// Cost allocation rule properties
  late final pulumi.Output<CostAllocationRulePropertiesResponse> properties;

  /// Resource type of the rule. This is a read only value of Microsoft.CostManagement/CostAllocationRule.
  late final pulumi.Output<String> type;

  /// Creates a new [CostAllocationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CostAllocationRule]. {@macro pulumi_costmanagement_cost_allocation_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CostAllocationRule(
    String name, {
    CostAllocationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:costmanagement:CostAllocationRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CostAllocationRulePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CostAllocationRulePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
