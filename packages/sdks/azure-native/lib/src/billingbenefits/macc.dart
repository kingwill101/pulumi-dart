import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_shortfall_suppress_reason_response.dart';
import 'commitment_response.dart';
import 'macc_args.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'shortfall_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Microsoft Azure Consumption Commitment.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-12-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billingbenefits [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Contributor_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var macc = new AzureNative.BillingBenefits.Macc("macc", new()
///     {
///         EndAt = "2024-07-01T00:00:00Z",
///         EntityType = AzureNative.BillingBenefits.MaccEntityType.Contributor,
///         Location = "global",
///         MaccName = "macc_contributor_20230614",
///         PrimaryResourceId = "/subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_02/providers/Microsoft.BillingBenefits/maccs/macc_20230614",
///         ProductCode = "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         ResourceGroupName = "resource_group_name_01",
///         StartAt = "2023-07-01T00:00:00Z",
///         SystemId = "13810867107109237",
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
/// 		_, err := billingbenefits.NewMacc(ctx, "macc", &billingbenefits.MaccArgs{
/// 			EndAt:             pulumi.String("2024-07-01T00:00:00Z"),
/// 			EntityType:        pulumi.String(billingbenefits.MaccEntityTypeContributor),
/// 			Location:          pulumi.String("global"),
/// 			MaccName:          pulumi.String("macc_contributor_20230614"),
/// 			PrimaryResourceId: pulumi.String("/subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_02/providers/Microsoft.BillingBenefits/maccs/macc_20230614"),
/// 			ProductCode:       pulumi.String("0001d726-0000-0160-330f-a0b98cdbbdc4"),
/// 			ResourceGroupName: pulumi.String("resource_group_name_01"),
/// 			StartAt:           pulumi.String("2023-07-01T00:00:00Z"),
/// 			SystemId:          pulumi.String("13810867107109237"),
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
/// resource "azure-native_billingbenefits_macc" "macc" {
///   end_at              = "2024-07-01T00:00:00Z"
///   entity_type         = "Contributor"
///   location            = "global"
///   macc_name           = "macc_contributor_20230614"
///   primary_resource_id = "/subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_02/providers/Microsoft.BillingBenefits/maccs/macc_20230614"
///   product_code        = "0001d726-0000-0160-330f-a0b98cdbbdc4"
///   resource_group_name = "resource_group_name_01"
///   start_at            = "2023-07-01T00:00:00Z"
///   system_id           = "13810867107109237"
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
/// import com.pulumi.azurenative.billingbenefits.Macc;
/// import com.pulumi.azurenative.billingbenefits.MaccArgs;
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
///         var macc = new Macc("macc", MaccArgs.builder()
///             .endAt("2024-07-01T00:00:00Z")
///             .entityType("Contributor")
///             .location("global")
///             .maccName("macc_contributor_20230614")
///             .primaryResourceId("/subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_02/providers/Microsoft.BillingBenefits/maccs/macc_20230614")
///             .productCode("0001d726-0000-0160-330f-a0b98cdbbdc4")
///             .resourceGroupName("resource_group_name_01")
///             .startAt("2023-07-01T00:00:00Z")
///             .systemId("13810867107109237")
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
/// const macc = new azure_native.billingbenefits.Macc("macc", {
///     endAt: "2024-07-01T00:00:00Z",
///     entityType: azure_native.billingbenefits.MaccEntityType.Contributor,
///     location: "global",
///     maccName: "macc_contributor_20230614",
///     primaryResourceId: "/subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_02/providers/Microsoft.BillingBenefits/maccs/macc_20230614",
///     productCode: "0001d726-0000-0160-330f-a0b98cdbbdc4",
///     resourceGroupName: "resource_group_name_01",
///     startAt: "2023-07-01T00:00:00Z",
///     systemId: "13810867107109237",
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
/// macc = azure_native.billingbenefits.Macc("macc",
///     end_at="2024-07-01T00:00:00Z",
///     entity_type=azure_native.billingbenefits.MaccEntityType.CONTRIBUTOR,
///     location="global",
///     macc_name="macc_contributor_20230614",
///     primary_resource_id="/subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_02/providers/Microsoft.BillingBenefits/maccs/macc_20230614",
///     product_code="0001d726-0000-0160-330f-a0b98cdbbdc4",
///     resource_group_name="resource_group_name_01",
///     start_at="2023-07-01T00:00:00Z",
///     system_id="13810867107109237",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   macc:
///     type: azure-native:billingbenefits:Macc
///     properties:
///       endAt: 2024-07-01T00:00:00Z
///       entityType: Contributor
///       location: global
///       maccName: macc_contributor_20230614
///       primaryResourceId: /subscriptions/10000000-0000-0000-0000-000000000000/resourceGroups/resource_group_name_02/providers/Microsoft.BillingBenefits/maccs/macc_20230614
///       productCode: 0001d726-0000-0160-330f-a0b98cdbbdc4
///       resourceGroupName: resource_group_name_01
///       startAt: 2023-07-01T00:00:00Z
///       systemId: '13810867107109237'
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### MaccWithMilestones_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var macc = new AzureNative.BillingBenefits.Macc("macc", new()
///     {
///         AllowContributors = true,
///         Commitment = new AzureNative.BillingBenefits.Inputs.CommitmentArgs
///         {
///             Amount = 20000,
///             CurrencyCode = "USD",
///             Grain = AzureNative.BillingBenefits.CommitmentGrain.FullTerm,
///         },
///         DisplayName = "macc 20230614",
///         EndAt = "2028-05-01T23:59:59Z",
///         EntityType = AzureNative.BillingBenefits.MaccEntityType.Primary,
///         Location = "global",
///         MaccName = "macc_20230614",
///         Milestones = new[]
///         {
///             new AzureNative.BillingBenefits.Inputs.MaccMilestoneArgs
///             {
///                 Commitment = new AzureNative.BillingBenefits.Inputs.PriceArgs
///                 {
///                     Amount = 10000,
///                     CurrencyCode = "USD",
///                 },
///                 EndAt = "2026-05-31T23:59:59Z",
///             },
///             new AzureNative.BillingBenefits.Inputs.MaccMilestoneArgs
///             {
///                 Commitment = new AzureNative.BillingBenefits.Inputs.PriceArgs
///                 {
///                     Amount = 15000,
///                     CurrencyCode = "USD",
///                 },
///                 EndAt = "2027-05-31T23:59:59Z",
///             },
///         },
///         ProductCode = "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         ResourceGroupName = "resource_group_name_01",
///         StartAt = "2025-05-01T00:00:00Z",
///         SystemId = "13810867107109237",
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
/// 		_, err := billingbenefits.NewMacc(ctx, "macc", &billingbenefits.MaccArgs{
/// 			AllowContributors: pulumi.Bool(true),
/// 			Commitment: &billingbenefits.CommitmentArgs{
/// 				Amount:       pulumi.Float64(20000),
/// 				CurrencyCode: pulumi.String("USD"),
/// 				Grain:        pulumi.String(billingbenefits.CommitmentGrainFullTerm),
/// 			},
/// 			DisplayName: pulumi.String("macc 20230614"),
/// 			EndAt:       pulumi.String("2028-05-01T23:59:59Z"),
/// 			EntityType:  pulumi.String(billingbenefits.MaccEntityTypePrimary),
/// 			Location:    pulumi.String("global"),
/// 			MaccName:    pulumi.String("macc_20230614"),
/// 			Milestones: billingbenefits.MaccMilestoneArray{
/// 				&billingbenefits.MaccMilestoneArgs{
/// 					Commitment: &billingbenefits.PriceArgs{
/// 						Amount:       pulumi.Float64(10000),
/// 						CurrencyCode: pulumi.String("USD"),
/// 					},
/// 					EndAt: pulumi.String("2026-05-31T23:59:59Z"),
/// 				},
/// 				&billingbenefits.MaccMilestoneArgs{
/// 					Commitment: &billingbenefits.PriceArgs{
/// 						Amount:       pulumi.Float64(15000),
/// 						CurrencyCode: pulumi.String("USD"),
/// 					},
/// 					EndAt: pulumi.String("2027-05-31T23:59:59Z"),
/// 				},
/// 			},
/// 			ProductCode:       pulumi.String("0001d726-0000-0160-330f-a0b98cdbbdc4"),
/// 			ResourceGroupName: pulumi.String("resource_group_name_01"),
/// 			StartAt:           pulumi.String("2025-05-01T00:00:00Z"),
/// 			SystemId:          pulumi.String("13810867107109237"),
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
/// resource "azure-native_billingbenefits_macc" "macc" {
///   allow_contributors = true
///   commitment = {
///     amount        = 20000
///     currency_code = "USD"
///     grain         = "FullTerm"
///   }
///   display_name = "macc 20230614"
///   end_at       = "2028-05-01T23:59:59Z"
///   entity_type  = "Primary"
///   location     = "global"
///   macc_name    = "macc_20230614"
///   milestones {
///     commitment = {
///       amount        = 10000
///       currency_code = "USD"
///     }
///     end_at = "2026-05-31T23:59:59Z"
///   }
///   milestones {
///     commitment = {
///       amount        = 15000
///       currency_code = "USD"
///     }
///     end_at = "2027-05-31T23:59:59Z"
///   }
///   product_code        = "0001d726-0000-0160-330f-a0b98cdbbdc4"
///   resource_group_name = "resource_group_name_01"
///   start_at            = "2025-05-01T00:00:00Z"
///   system_id           = "13810867107109237"
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
/// import com.pulumi.azurenative.billingbenefits.Macc;
/// import com.pulumi.azurenative.billingbenefits.MaccArgs;
/// import com.pulumi.azurenative.billingbenefits.inputs.CommitmentArgs;
/// import com.pulumi.azurenative.billingbenefits.inputs.MaccMilestoneArgs;
/// import com.pulumi.azurenative.billingbenefits.inputs.PriceArgs;
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
///         var macc = new Macc("macc", MaccArgs.builder()
///             .allowContributors(true)
///             .commitment(CommitmentArgs.builder()
///                 .amount(20000.0)
///                 .currencyCode("USD")
///                 .grain("FullTerm")
///                 .build())
///             .displayName("macc 20230614")
///             .endAt("2028-05-01T23:59:59Z")
///             .entityType("Primary")
///             .location("global")
///             .maccName("macc_20230614")
///             .milestones(
///                 MaccMilestoneArgs.builder()
///                     .commitment(PriceArgs.builder()
///                         .amount(10000.0)
///                         .currencyCode("USD")
///                         .build())
///                     .endAt("2026-05-31T23:59:59Z")
///                     .build(),
///                 MaccMilestoneArgs.builder()
///                     .commitment(PriceArgs.builder()
///                         .amount(15000.0)
///                         .currencyCode("USD")
///                         .build())
///                     .endAt("2027-05-31T23:59:59Z")
///                     .build())
///             .productCode("0001d726-0000-0160-330f-a0b98cdbbdc4")
///             .resourceGroupName("resource_group_name_01")
///             .startAt("2025-05-01T00:00:00Z")
///             .systemId("13810867107109237")
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
/// const macc = new azure_native.billingbenefits.Macc("macc", {
///     allowContributors: true,
///     commitment: {
///         amount: 20000,
///         currencyCode: "USD",
///         grain: azure_native.billingbenefits.CommitmentGrain.FullTerm,
///     },
///     displayName: "macc 20230614",
///     endAt: "2028-05-01T23:59:59Z",
///     entityType: azure_native.billingbenefits.MaccEntityType.Primary,
///     location: "global",
///     maccName: "macc_20230614",
///     milestones: [
///         {
///             commitment: {
///                 amount: 10000,
///                 currencyCode: "USD",
///             },
///             endAt: "2026-05-31T23:59:59Z",
///         },
///         {
///             commitment: {
///                 amount: 15000,
///                 currencyCode: "USD",
///             },
///             endAt: "2027-05-31T23:59:59Z",
///         },
///     ],
///     productCode: "0001d726-0000-0160-330f-a0b98cdbbdc4",
///     resourceGroupName: "resource_group_name_01",
///     startAt: "2025-05-01T00:00:00Z",
///     systemId: "13810867107109237",
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
/// macc = azure_native.billingbenefits.Macc("macc",
///     allow_contributors=True,
///     commitment={
///         "amount": float(20000),
///         "currency_code": "USD",
///         "grain": azure_native.billingbenefits.CommitmentGrain.FULL_TERM,
///     },
///     display_name="macc 20230614",
///     end_at="2028-05-01T23:59:59Z",
///     entity_type=azure_native.billingbenefits.MaccEntityType.PRIMARY,
///     location="global",
///     macc_name="macc_20230614",
///     milestones=[
///         {
///             "commitment": {
///                 "amount": float(10000),
///                 "currency_code": "USD",
///             },
///             "end_at": "2026-05-31T23:59:59Z",
///         },
///         {
///             "commitment": {
///                 "amount": float(15000),
///                 "currency_code": "USD",
///             },
///             "end_at": "2027-05-31T23:59:59Z",
///         },
///     ],
///     product_code="0001d726-0000-0160-330f-a0b98cdbbdc4",
///     resource_group_name="resource_group_name_01",
///     start_at="2025-05-01T00:00:00Z",
///     system_id="13810867107109237",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   macc:
///     type: azure-native:billingbenefits:Macc
///     properties:
///       allowContributors: true
///       commitment:
///         amount: 20000
///         currencyCode: USD
///         grain: FullTerm
///       displayName: macc 20230614
///       endAt: 2028-05-01T23:59:59Z
///       entityType: Primary
///       location: global
///       maccName: macc_20230614
///       milestones:
///         - commitment:
///             amount: 10000
///             currencyCode: USD
///           endAt: 2026-05-31T23:59:59Z
///         - commitment:
///             amount: 15000
///             currencyCode: USD
///           endAt: 2027-05-31T23:59:59Z
///       productCode: 0001d726-0000-0160-330f-a0b98cdbbdc4
///       resourceGroupName: resource_group_name_01
///       startAt: 2025-05-01T00:00:00Z
///       systemId: '13810867107109237'
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Macc_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var macc = new AzureNative.BillingBenefits.Macc("macc", new()
///     {
///         AllowContributors = true,
///         Commitment = new AzureNative.BillingBenefits.Inputs.CommitmentArgs
///         {
///             Amount = 20000,
///             CurrencyCode = "USD",
///             Grain = AzureNative.BillingBenefits.CommitmentGrain.FullTerm,
///         },
///         DisplayName = "macc 20230614",
///         EndAt = "2024-07-01T00:00:00Z",
///         EntityType = AzureNative.BillingBenefits.MaccEntityType.Primary,
///         Location = "global",
///         MaccName = "macc_20230614",
///         ProductCode = "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         ResourceGroupName = "resource_group_name_01",
///         StartAt = "2023-07-01T00:00:00Z",
///         SystemId = "13810867107109237",
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
/// 		_, err := billingbenefits.NewMacc(ctx, "macc", &billingbenefits.MaccArgs{
/// 			AllowContributors: pulumi.Bool(true),
/// 			Commitment: &billingbenefits.CommitmentArgs{
/// 				Amount:       pulumi.Float64(20000),
/// 				CurrencyCode: pulumi.String("USD"),
/// 				Grain:        pulumi.String(billingbenefits.CommitmentGrainFullTerm),
/// 			},
/// 			DisplayName:       pulumi.String("macc 20230614"),
/// 			EndAt:             pulumi.String("2024-07-01T00:00:00Z"),
/// 			EntityType:        pulumi.String(billingbenefits.MaccEntityTypePrimary),
/// 			Location:          pulumi.String("global"),
/// 			MaccName:          pulumi.String("macc_20230614"),
/// 			ProductCode:       pulumi.String("0001d726-0000-0160-330f-a0b98cdbbdc4"),
/// 			ResourceGroupName: pulumi.String("resource_group_name_01"),
/// 			StartAt:           pulumi.String("2023-07-01T00:00:00Z"),
/// 			SystemId:          pulumi.String("13810867107109237"),
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
/// resource "azure-native_billingbenefits_macc" "macc" {
///   allow_contributors = true
///   commitment = {
///     amount        = 20000
///     currency_code = "USD"
///     grain         = "FullTerm"
///   }
///   display_name        = "macc 20230614"
///   end_at              = "2024-07-01T00:00:00Z"
///   entity_type         = "Primary"
///   location            = "global"
///   macc_name           = "macc_20230614"
///   product_code        = "0001d726-0000-0160-330f-a0b98cdbbdc4"
///   resource_group_name = "resource_group_name_01"
///   start_at            = "2023-07-01T00:00:00Z"
///   system_id           = "13810867107109237"
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
/// import com.pulumi.azurenative.billingbenefits.Macc;
/// import com.pulumi.azurenative.billingbenefits.MaccArgs;
/// import com.pulumi.azurenative.billingbenefits.inputs.CommitmentArgs;
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
///         var macc = new Macc("macc", MaccArgs.builder()
///             .allowContributors(true)
///             .commitment(CommitmentArgs.builder()
///                 .amount(20000.0)
///                 .currencyCode("USD")
///                 .grain("FullTerm")
///                 .build())
///             .displayName("macc 20230614")
///             .endAt("2024-07-01T00:00:00Z")
///             .entityType("Primary")
///             .location("global")
///             .maccName("macc_20230614")
///             .productCode("0001d726-0000-0160-330f-a0b98cdbbdc4")
///             .resourceGroupName("resource_group_name_01")
///             .startAt("2023-07-01T00:00:00Z")
///             .systemId("13810867107109237")
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
/// const macc = new azure_native.billingbenefits.Macc("macc", {
///     allowContributors: true,
///     commitment: {
///         amount: 20000,
///         currencyCode: "USD",
///         grain: azure_native.billingbenefits.CommitmentGrain.FullTerm,
///     },
///     displayName: "macc 20230614",
///     endAt: "2024-07-01T00:00:00Z",
///     entityType: azure_native.billingbenefits.MaccEntityType.Primary,
///     location: "global",
///     maccName: "macc_20230614",
///     productCode: "0001d726-0000-0160-330f-a0b98cdbbdc4",
///     resourceGroupName: "resource_group_name_01",
///     startAt: "2023-07-01T00:00:00Z",
///     systemId: "13810867107109237",
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
/// macc = azure_native.billingbenefits.Macc("macc",
///     allow_contributors=True,
///     commitment={
///         "amount": float(20000),
///         "currency_code": "USD",
///         "grain": azure_native.billingbenefits.CommitmentGrain.FULL_TERM,
///     },
///     display_name="macc 20230614",
///     end_at="2024-07-01T00:00:00Z",
///     entity_type=azure_native.billingbenefits.MaccEntityType.PRIMARY,
///     location="global",
///     macc_name="macc_20230614",
///     product_code="0001d726-0000-0160-330f-a0b98cdbbdc4",
///     resource_group_name="resource_group_name_01",
///     start_at="2023-07-01T00:00:00Z",
///     system_id="13810867107109237",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   macc:
///     type: azure-native:billingbenefits:Macc
///     properties:
///       allowContributors: true
///       commitment:
///         amount: 20000
///         currencyCode: USD
///         grain: FullTerm
///       displayName: macc 20230614
///       endAt: 2024-07-01T00:00:00Z
///       entityType: Primary
///       location: global
///       maccName: macc_20230614
///       productCode: 0001d726-0000-0160-330f-a0b98cdbbdc4
///       resourceGroupName: resource_group_name_01
///       startAt: 2023-07-01T00:00:00Z
///       systemId: '13810867107109237'
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
/// $ pulumi import azure-native:billingbenefits:Macc macc_20230614 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/maccs/{maccName}
/// ```
class Macc extends pulumi.CustomResource {
  /// Setting this to true means multi-entity.
  late final pulumi.Output<bool?> allowContributors;
  /// Setting this to 'Enable' enables automatic shortfall charging when commitment is not met.
  late final pulumi.Output<String?> automaticShortfall;
  /// Optional field to record suppression reason for automatic shortfall.
  late final pulumi.Output<AutomaticShortfallSuppressReasonResponse?> automaticShortfallSuppressReason;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Fully-qualified identifier of the billing account where the MACC is applied. Present only for Enterprise Agreement customers. Format must be Azure Resource ID: /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}
  late final pulumi.Output<String?> billingAccountResourceId;
  /// Commitment towards the benefit.
  late final pulumi.Output<CommitmentResponse?> commitment;
  /// Display name
  late final pulumi.Output<String?> displayName;
  /// Must be end of month. Timestamp must be in the ISO date format YYYY-MM-DDT23:59:59Z.
  late final pulumi.Output<String?> endAt;
  /// Represents type of the object being operated on. Possible values are primary or contributor.
  late final pulumi.Output<String> entityType;
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
  /// List of milestones associated with this MACC.
  late final pulumi.Output<List<Map<String, dynamic>>?> milestones;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Plan for the resource.
  late final pulumi.Output<PlanResponse?> plan;
  /// Fully-qualified billing account resource identifier of the primary MACC. Format must be Azure Resource ID: /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}.
  late final pulumi.Output<String?> primaryBillingAccountResourceId;
  /// Fully-qualified resource identifier of the primary MACC. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/maccs/{maccName}.
  late final pulumi.Output<String?> primaryResourceId;
  /// Represents catalog UPN.
  late final pulumi.Output<String?> productCode;
  /// Provisioning state of MACC as assigned by RPaaS. This indicates the last operation's status. For all practical purposes, this can be ignored. For current status of MACC resource, refer to MaccStatus.
  late final pulumi.Output<String> provisioningState;
  /// This is the resource identifier of either the primary MACC or the contributor. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/maccs/{maccName}.
  late final pulumi.Output<String?> resourceId;
  /// MACC shortfall
  late final pulumi.Output<ShortfallResponse?> shortfall;
  /// The resource model definition representing SKU
  late final pulumi.Output<SkuResponse?> sku;
  /// Must be start of month. Timestamp must be in the ISO date format YYYY-MM-DDT00:00:00Z.
  late final pulumi.Output<String?> startAt;
  /// Represents the current status of the MACC.
  late final pulumi.Output<String?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// This is the globally unique identifier of the MACC which will not change for the lifetime of the MACC.
  late final pulumi.Output<String?> systemId;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Macc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Macc]. {@macro pulumi_billingbenefits_macc_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Macc(
    String name, {
    MaccArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:billingbenefits:Macc',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowContributors = registerOutput<bool?>('allowContributors');
    automaticShortfall = registerOutput<String?>('automaticShortfall');
    automaticShortfallSuppressReason = registerOutput<AutomaticShortfallSuppressReasonResponse?>('automaticShortfallSuppressReason', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticShortfallSuppressReasonResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingAccountResourceId = registerOutput<String?>('billingAccountResourceId');
    commitment = registerOutput<CommitmentResponse?>('commitment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CommitmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    endAt = registerOutput<String?>('endAt');
    entityType = registerOutput<String>('entityType');
    etag = registerOutput<String>('etag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String?>('managedBy');
    milestones = registerOutput<List<Map<String, dynamic>>?>('milestones');
    this.name = registerOutput<String>('name');
    plan = registerOutput<PlanResponse?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    primaryBillingAccountResourceId = registerOutput<String?>('primaryBillingAccountResourceId');
    primaryResourceId = registerOutput<String?>('primaryResourceId');
    productCode = registerOutput<String?>('productCode');
    provisioningState = registerOutput<String>('provisioningState');
    resourceId = registerOutput<String?>('resourceId');
    shortfall = registerOutput<ShortfallResponse?>('shortfall', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ShortfallResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startAt = registerOutput<String?>('startAt');
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemId = registerOutput<String?>('systemId');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
