import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_credit_args.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Resource definition for Conditional Credits.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-12-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billingbenefits [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConditionalCreditCreateContributor
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var conditionalCredit = new AzureNative.BillingBenefits.ConditionalCredit("conditionalCredit", new()
///     {
///         ConditionalCreditName = "conditionalCredit_contributor_20250801",
///         Location = "global",
///         Properties = new AzureNative.BillingBenefits.Inputs.ContributorConditionalCreditPropertiesArgs
///         {
///             DisplayName = "Contributor Conditional Credit 20250801",
///             EntityType = "Contributor",
///             PrimaryResourceId = "/subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_01/providers/Microsoft.BillingBenefits/conditionalCredits/conditionalCredit_20250801",
///             ProductCode = "000187f7-0000-0260-ab43-b8473ce57f1d",
///             StartAt = "2025-09-01T00:00:00Z",
///         },
///         ResourceGroupName = "resource_group_name_02",
///         Tags =
///         {
///             { "environment", "dev" },
///             { "team", "finance" },
///         },
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
/// 	billingbenefits "github.com/pulumi/pulumi-azure-native-sdk/billingbenefits/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billingbenefits.NewConditionalCredit(ctx, "conditionalCredit", &billingbenefits.ConditionalCreditArgs{
/// 			ConditionalCreditName: pulumi.String("conditionalCredit_contributor_20250801"),
/// 			Location:              pulumi.String("global"),
/// 			Properties: &billingbenefits.ContributorConditionalCreditPropertiesArgs{
/// 				DisplayName:       pulumi.String("Contributor Conditional Credit 20250801"),
/// 				EntityType:        pulumi.String("Contributor"),
/// 				PrimaryResourceId: pulumi.String("/subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_01/providers/Microsoft.BillingBenefits/conditionalCredits/conditionalCredit_20250801"),
/// 				ProductCode:       pulumi.String("000187f7-0000-0260-ab43-b8473ce57f1d"),
/// 				StartAt:           pulumi.String("2025-09-01T00:00:00Z"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resource_group_name_02"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("dev"),
/// 				"team":        pulumi.String("finance"),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_billingbenefits_conditionalcredit" "conditionalCredit" {
///   conditional_credit_name = "conditionalCredit_contributor_20250801"
///   location                = "global"
///   properties = {
///     "displayName"       = "Contributor Conditional Credit 20250801"
///     "entityType"        = "Contributor"
///     "primaryResourceId" = "/subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_01/providers/Microsoft.BillingBenefits/conditionalCredits/conditionalCredit_20250801"
///     "productCode"       = "000187f7-0000-0260-ab43-b8473ce57f1d"
///     "startAt"           = "2025-09-01T00:00:00Z"
///   }
///   resource_group_name = "resource_group_name_02"
///   tags = {
///     "environment" = "dev"
///     "team"        = "finance"
///   }
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
/// import com.pulumi.azurenative.billingbenefits.ConditionalCredit;
/// import com.pulumi.azurenative.billingbenefits.ConditionalCreditArgs;
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
///         var conditionalCredit = new ConditionalCredit("conditionalCredit", ConditionalCreditArgs.builder()
///             .conditionalCreditName("conditionalCredit_contributor_20250801")
///             .location("global")
///             .properties(ContributorConditionalCreditPropertiesArgs.builder()
///                 .displayName("Contributor Conditional Credit 20250801")
///                 .entityType("Contributor")
///                 .primaryResourceId("/subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_01/providers/Microsoft.BillingBenefits/conditionalCredits/conditionalCredit_20250801")
///                 .productCode("000187f7-0000-0260-ab43-b8473ce57f1d")
///                 .startAt("2025-09-01T00:00:00Z")
///                 .build())
///             .resourceGroupName("resource_group_name_02")
///             .tags(Map.ofEntries(
///                 Map.entry("environment", "dev"),
///                 Map.entry("team", "finance")
///             ))
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
/// const conditionalCredit = new azure_native.billingbenefits.ConditionalCredit("conditionalCredit", {
///     conditionalCreditName: "conditionalCredit_contributor_20250801",
///     location: "global",
///     properties: {
///         displayName: "Contributor Conditional Credit 20250801",
///         entityType: "Contributor",
///         primaryResourceId: "/subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_01/providers/Microsoft.BillingBenefits/conditionalCredits/conditionalCredit_20250801",
///         productCode: "000187f7-0000-0260-ab43-b8473ce57f1d",
///         startAt: "2025-09-01T00:00:00Z",
///     },
///     resourceGroupName: "resource_group_name_02",
///     tags: {
///         environment: "dev",
///         team: "finance",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// conditional_credit = azure_native.billingbenefits.ConditionalCredit("conditionalCredit",
///     conditional_credit_name="conditionalCredit_contributor_20250801",
///     location="global",
///     properties={
///         "display_name": "Contributor Conditional Credit 20250801",
///         "entity_type": "Contributor",
///         "primary_resource_id": "/subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_01/providers/Microsoft.BillingBenefits/conditionalCredits/conditionalCredit_20250801",
///         "product_code": "000187f7-0000-0260-ab43-b8473ce57f1d",
///         "start_at": "2025-09-01T00:00:00Z",
///     },
///     resource_group_name="resource_group_name_02",
///     tags={
///         "environment": "dev",
///         "team": "finance",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   conditionalCredit:
///     type: azure-native:billingbenefits:ConditionalCredit
///     properties:
///       conditionalCreditName: conditionalCredit_contributor_20250801
///       location: global
///       properties:
///         displayName: Contributor Conditional Credit 20250801
///         entityType: Contributor
///         primaryResourceId: /subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_01/providers/Microsoft.BillingBenefits/conditionalCredits/conditionalCredit_20250801
///         productCode: 000187f7-0000-0260-ab43-b8473ce57f1d
///         startAt: 2025-09-01T00:00:00Z
///       resourceGroupName: resource_group_name_02
///       tags:
///         environment: dev
///         team: finance
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ConditionalCreditCreatePrimary
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var conditionalCredit = new AzureNative.BillingBenefits.ConditionalCredit("conditionalCredit", new()
///     {
///         ConditionalCreditName = "conditionalCredit_20250801",
///         Location = "global",
///         Properties = new AzureNative.BillingBenefits.Inputs.PrimaryConditionalCreditPropertiesArgs
///         {
///             AllowContributors = AzureNative.BillingBenefits.EnablementMode.Enabled,
///             DisplayName = "Conditional Credit 20250801",
///             EntityType = "Primary",
///             Milestones = new[]
///             {
///                 new AzureNative.BillingBenefits.Inputs.ConditionalCreditMilestoneArgs
///                 {
///                     Award = new AzureNative.BillingBenefits.Inputs.AwardArgs
///                     {
///                         Credit = new AzureNative.BillingBenefits.Inputs.CommitmentArgs
///                         {
///                             Amount = 5000,
///                             CurrencyCode = "USD",
///                             Grain = AzureNative.BillingBenefits.CommitmentGrain.FullTerm,
///                         },
///                         Duration = "P3M",
///                     },
///                     EndAt = "2025-09-30T23:59:59Z",
///                     Name = "Milestone 1",
///                     SpendTarget = new AzureNative.BillingBenefits.Inputs.PriceArgs
///                     {
///                         Amount = 50000,
///                         CurrencyCode = "USD",
///                     },
///                 },
///                 new AzureNative.BillingBenefits.Inputs.ConditionalCreditMilestoneArgs
///                 {
///                     Award = new AzureNative.BillingBenefits.Inputs.AwardArgs
///                     {
///                         Credit = new AzureNative.BillingBenefits.Inputs.CommitmentArgs
///                         {
///                             Amount = 10000,
///                             CurrencyCode = "USD",
///                             Grain = AzureNative.BillingBenefits.CommitmentGrain.FullTerm,
///                         },
///                         Duration = "P3M",
///                     },
///                     EndAt = "2025-12-31T23:59:59Z",
///                     Name = "Milestone 2",
///                     SpendTarget = new AzureNative.BillingBenefits.Inputs.PriceArgs
///                     {
///                         Amount = 100000,
///                         CurrencyCode = "USD",
///                     },
///                 },
///             },
///             ProductCode = "000187f7-0000-0260-ab43-b8473ce57f1d",
///             StartAt = "2025-07-01T00:00:00Z",
///         },
///         ResourceGroupName = "resource_group_name_01",
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///         },
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
/// 	billingbenefits "github.com/pulumi/pulumi-azure-native-sdk/billingbenefits/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billingbenefits.NewConditionalCredit(ctx, "conditionalCredit", &billingbenefits.ConditionalCreditArgs{
/// 			ConditionalCreditName: pulumi.String("conditionalCredit_20250801"),
/// 			Location:              pulumi.String("global"),
/// 			Properties: &billingbenefits.PrimaryConditionalCreditPropertiesArgs{
/// 				AllowContributors: pulumi.String(billingbenefits.EnablementModeEnabled),
/// 				DisplayName:       pulumi.String("Conditional Credit 20250801"),
/// 				EntityType:        pulumi.String("Primary"),
/// 				Milestones: billingbenefits.ConditionalCreditMilestoneArray{
/// 					&billingbenefits.ConditionalCreditMilestoneArgs{
/// 						Award: &billingbenefits.AwardArgs{
/// 							Credit: &billingbenefits.CommitmentArgs{
/// 								Amount:       pulumi.Float64(5000),
/// 								CurrencyCode: pulumi.String("USD"),
/// 								Grain:        pulumi.String(billingbenefits.CommitmentGrainFullTerm),
/// 							},
/// 							Duration: pulumi.String("P3M"),
/// 						},
/// 						EndAt: pulumi.String("2025-09-30T23:59:59Z"),
/// 						Name:  pulumi.String("Milestone 1"),
/// 						SpendTarget: &billingbenefits.PriceArgs{
/// 							Amount:       pulumi.Float64(50000),
/// 							CurrencyCode: pulumi.String("USD"),
/// 						},
/// 					},
/// 					&billingbenefits.ConditionalCreditMilestoneArgs{
/// 						Award: &billingbenefits.AwardArgs{
/// 							Credit: &billingbenefits.CommitmentArgs{
/// 								Amount:       pulumi.Float64(10000),
/// 								CurrencyCode: pulumi.String("USD"),
/// 								Grain:        pulumi.String(billingbenefits.CommitmentGrainFullTerm),
/// 							},
/// 							Duration: pulumi.String("P3M"),
/// 						},
/// 						EndAt: pulumi.String("2025-12-31T23:59:59Z"),
/// 						Name:  pulumi.String("Milestone 2"),
/// 						SpendTarget: &billingbenefits.PriceArgs{
/// 							Amount:       pulumi.Float64(100000),
/// 							CurrencyCode: pulumi.String("USD"),
/// 						},
/// 					},
/// 				},
/// 				ProductCode: pulumi.String("000187f7-0000-0260-ab43-b8473ce57f1d"),
/// 				StartAt:     pulumi.String("2025-07-01T00:00:00Z"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resource_group_name_01"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_billingbenefits_conditionalcredit" "conditionalCredit" {
///   conditional_credit_name = "conditionalCredit_20250801"
///   location                = "global"
///   properties = {
///     "allowContributors" = "Enabled"
///     "displayName"       = "Conditional Credit 20250801"
///     "entityType"        = "Primary"
///     "milestones" = [{
///       "award" = {
///         "credit" = {
///           "amount"       = 5000
///           "currencyCode" = "USD"
///           "grain"        = "FullTerm"
///         }
///         "duration" = "P3M"
///       }
///       "endAt" = "2025-09-30T23:59:59Z"
///       "name"  = "Milestone 1"
///       "spendTarget" = {
///         "amount"       = 50000
///         "currencyCode" = "USD"
///       }
///       }, {
///       "award" = {
///         "credit" = {
///           "amount"       = 10000
///           "currencyCode" = "USD"
///           "grain"        = "FullTerm"
///         }
///         "duration" = "P3M"
///       }
///       "endAt" = "2025-12-31T23:59:59Z"
///       "name"  = "Milestone 2"
///       "spendTarget" = {
///         "amount"       = 100000
///         "currencyCode" = "USD"
///       }
///     }]
///     "productCode" = "000187f7-0000-0260-ab43-b8473ce57f1d"
///     "startAt"     = "2025-07-01T00:00:00Z"
///   }
///   resource_group_name = "resource_group_name_01"
///   tags = {
///     "key1" = "value1"
///     "key2" = "value2"
///   }
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
/// import com.pulumi.azurenative.billingbenefits.ConditionalCredit;
/// import com.pulumi.azurenative.billingbenefits.ConditionalCreditArgs;
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
///         var conditionalCredit = new ConditionalCredit("conditionalCredit", ConditionalCreditArgs.builder()
///             .conditionalCreditName("conditionalCredit_20250801")
///             .location("global")
///             .properties(PrimaryConditionalCreditPropertiesArgs.builder()
///                 .allowContributors("Enabled")
///                 .displayName("Conditional Credit 20250801")
///                 .entityType("Primary")
///                 .milestones(
///                     ConditionalCreditMilestoneArgs.builder()
///                         .award(AwardArgs.builder()
///                             .credit(CommitmentArgs.builder()
///                                 .amount(5000.0)
///                                 .currencyCode("USD")
///                                 .grain("FullTerm")
///                                 .build())
///                             .duration("P3M")
///                             .build())
///                         .endAt("2025-09-30T23:59:59Z")
///                         .name("Milestone 1")
///                         .spendTarget(PriceArgs.builder()
///                             .amount(50000.0)
///                             .currencyCode("USD")
///                             .build())
///                         .build(),
///                     ConditionalCreditMilestoneArgs.builder()
///                         .award(AwardArgs.builder()
///                             .credit(CommitmentArgs.builder()
///                                 .amount(10000.0)
///                                 .currencyCode("USD")
///                                 .grain("FullTerm")
///                                 .build())
///                             .duration("P3M")
///                             .build())
///                         .endAt("2025-12-31T23:59:59Z")
///                         .name("Milestone 2")
///                         .spendTarget(PriceArgs.builder()
///                             .amount(100000.0)
///                             .currencyCode("USD")
///                             .build())
///                         .build())
///                 .productCode("000187f7-0000-0260-ab43-b8473ce57f1d")
///                 .startAt("2025-07-01T00:00:00Z")
///                 .build())
///             .resourceGroupName("resource_group_name_01")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
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
/// const conditionalCredit = new azure_native.billingbenefits.ConditionalCredit("conditionalCredit", {
///     conditionalCreditName: "conditionalCredit_20250801",
///     location: "global",
///     properties: {
///         allowContributors: azure_native.billingbenefits.EnablementMode.Enabled,
///         displayName: "Conditional Credit 20250801",
///         entityType: "Primary",
///         milestones: [
///             {
///                 award: {
///                     credit: {
///                         amount: 5000,
///                         currencyCode: "USD",
///                         grain: azure_native.billingbenefits.CommitmentGrain.FullTerm,
///                     },
///                     duration: "P3M",
///                 },
///                 endAt: "2025-09-30T23:59:59Z",
///                 name: "Milestone 1",
///                 spendTarget: {
///                     amount: 50000,
///                     currencyCode: "USD",
///                 },
///             },
///             {
///                 award: {
///                     credit: {
///                         amount: 10000,
///                         currencyCode: "USD",
///                         grain: azure_native.billingbenefits.CommitmentGrain.FullTerm,
///                     },
///                     duration: "P3M",
///                 },
///                 endAt: "2025-12-31T23:59:59Z",
///                 name: "Milestone 2",
///                 spendTarget: {
///                     amount: 100000,
///                     currencyCode: "USD",
///                 },
///             },
///         ],
///         productCode: "000187f7-0000-0260-ab43-b8473ce57f1d",
///         startAt: "2025-07-01T00:00:00Z",
///     },
///     resourceGroupName: "resource_group_name_01",
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// conditional_credit = azure_native.billingbenefits.ConditionalCredit("conditionalCredit",
///     conditional_credit_name="conditionalCredit_20250801",
///     location="global",
///     properties={
///         "allow_contributors": azure_native.billingbenefits.EnablementMode.ENABLED,
///         "display_name": "Conditional Credit 20250801",
///         "entity_type": "Primary",
///         "milestones": [
///             {
///                 "award": {
///                     "credit": {
///                         "amount": float(5000),
///                         "currency_code": "USD",
///                         "grain": azure_native.billingbenefits.CommitmentGrain.FULL_TERM,
///                     },
///                     "duration": "P3M",
///                 },
///                 "end_at": "2025-09-30T23:59:59Z",
///                 "name": "Milestone 1",
///                 "spend_target": {
///                     "amount": float(50000),
///                     "currency_code": "USD",
///                 },
///             },
///             {
///                 "award": {
///                     "credit": {
///                         "amount": float(10000),
///                         "currency_code": "USD",
///                         "grain": azure_native.billingbenefits.CommitmentGrain.FULL_TERM,
///                     },
///                     "duration": "P3M",
///                 },
///                 "end_at": "2025-12-31T23:59:59Z",
///                 "name": "Milestone 2",
///                 "spend_target": {
///                     "amount": float(100000),
///                     "currency_code": "USD",
///                 },
///             },
///         ],
///         "product_code": "000187f7-0000-0260-ab43-b8473ce57f1d",
///         "start_at": "2025-07-01T00:00:00Z",
///     },
///     resource_group_name="resource_group_name_01",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   conditionalCredit:
///     type: azure-native:billingbenefits:ConditionalCredit
///     properties:
///       conditionalCreditName: conditionalCredit_20250801
///       location: global
///       properties:
///         allowContributors: Enabled
///         displayName: Conditional Credit 20250801
///         entityType: Primary
///         milestones:
///           - award:
///               credit:
///                 amount: 5000
///                 currencyCode: USD
///                 grain: FullTerm
///               duration: P3M
///             endAt: 2025-09-30T23:59:59Z
///             name: Milestone 1
///             spendTarget:
///               amount: 50000
///               currencyCode: USD
///           - award:
///               credit:
///                 amount: 10000
///                 currencyCode: USD
///                 grain: FullTerm
///               duration: P3M
///             endAt: 2025-12-31T23:59:59Z
///             name: Milestone 2
///             spendTarget:
///               amount: 100000
///               currencyCode: USD
///         productCode: 000187f7-0000-0260-ab43-b8473ce57f1d
///         startAt: 2025-07-01T00:00:00Z
///       resourceGroupName: resource_group_name_01
///       tags:
///         key1: value1
///         key2: value2
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
/// $ pulumi import azure-native:billingbenefits:ConditionalCredit conditionalCredit_20250801 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/conditionalCredits/{conditionalCreditName}
/// ```
class ConditionalCredit extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> etag;
  /// Managed service identity (system assigned and/or user assigned identities)
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  late final pulumi.Output<String?> managedBy;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Plan for the resource.
  late final pulumi.Output<PlanResponse?> plan;
  /// Conditional credit properties
  late final pulumi.Output<dynamic> properties;
  /// The resource model definition representing SKU
  late final pulumi.Output<SkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConditionalCredit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConditionalCredit]. {@macro pulumi_billingbenefits_conditional_credit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConditionalCredit(
    String name, {
    ConditionalCreditArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:billingbenefits:ConditionalCredit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String?>('managedBy');
    this.name = registerOutput<String>('name');
    plan = registerOutput<PlanResponse?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    properties = registerOutput<dynamic>('properties');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ConditionalCredit] resource.
  ConditionalCredit.reference(String urn)
    : super(
        'azure-native:billingbenefits:ConditionalCredit',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String?>('managedBy');
    this.name = registerOutput<String>('name');
    plan = registerOutput<PlanResponse?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    properties = registerOutput<dynamic>('properties');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
