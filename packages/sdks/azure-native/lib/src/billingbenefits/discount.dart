import 'package:pulumi/pulumi.dart' as pulumi;
import 'discount_args.dart';
import 'entity_type_affiliate_discount_response.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Resource definition for Discounts.
///
/// Uses Azure REST API version 2024-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-11-01-preview.
///
/// Other available API versions: 2025-05-01-preview, 2025-12-01-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billingbenefits [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DiscountsCreateAffiliate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var discount = new AzureNative.BillingBenefits.Discount("discount", new()
///     {
///         DiscountName = "testaffiliatediscount",
///         Location = "global",
///         Properties = new AzureNative.BillingBenefits.Inputs.EntityTypeAffiliateDiscountArgs
///         {
///             DisplayName = "Virtual Machines D Series",
///             EntityType = "Affiliate",
///             ProductCode = "0001d726-0000-0160-330f-a0b98cdbbdc4",
///             StartAt = "2023-07-01T00:00:00Z",
///             SystemId = "13810867107109237",
///         },
///         ResourceGroupName = "testrg",
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
/// 		_, err := billingbenefits.NewDiscount(ctx, "discount", &billingbenefits.DiscountArgs{
/// 			DiscountName: pulumi.String("testaffiliatediscount"),
/// 			Location:     pulumi.String("global"),
/// 			Properties: &billingbenefits.EntityTypeAffiliateDiscountArgs{
/// 				DisplayName: pulumi.String("Virtual Machines D Series"),
/// 				EntityType:  pulumi.String("Affiliate"),
/// 				ProductCode: pulumi.String("0001d726-0000-0160-330f-a0b98cdbbdc4"),
/// 				StartAt:     pulumi.String("2023-07-01T00:00:00Z"),
/// 				SystemId:    pulumi.String("13810867107109237"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
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
/// resource "azure-native_billingbenefits_discount" "discount" {
///   discount_name = "testaffiliatediscount"
///   location      = "global"
///   properties = {
///     "displayName" = "Virtual Machines D Series"
///     "entityType"  = "Affiliate"
///     "productCode" = "0001d726-0000-0160-330f-a0b98cdbbdc4"
///     "startAt"     = "2023-07-01T00:00:00Z"
///     "systemId"    = "13810867107109237"
///   }
///   resource_group_name = "testrg"
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
/// import com.pulumi.azurenative.billingbenefits.Discount;
/// import com.pulumi.azurenative.billingbenefits.DiscountArgs;
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
///         var discount = new Discount("discount", DiscountArgs.builder()
///             .discountName("testaffiliatediscount")
///             .location("global")
///             .properties(EntityTypeAffiliateDiscountArgs.builder()
///                 .displayName("Virtual Machines D Series")
///                 .entityType("Affiliate")
///                 .productCode("0001d726-0000-0160-330f-a0b98cdbbdc4")
///                 .startAt("2023-07-01T00:00:00Z")
///                 .systemId("13810867107109237")
///                 .build())
///             .resourceGroupName("testrg")
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
/// const discount = new azure_native.billingbenefits.Discount("discount", {
///     discountName: "testaffiliatediscount",
///     location: "global",
///     properties: {
///         displayName: "Virtual Machines D Series",
///         entityType: "Affiliate",
///         productCode: "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         startAt: "2023-07-01T00:00:00Z",
///         systemId: "13810867107109237",
///     },
///     resourceGroupName: "testrg",
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
/// discount = azure_native.billingbenefits.Discount("discount",
///     discount_name="testaffiliatediscount",
///     location="global",
///     properties={
///         "display_name": "Virtual Machines D Series",
///         "entity_type": "Affiliate",
///         "product_code": "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         "start_at": "2023-07-01T00:00:00Z",
///         "system_id": "13810867107109237",
///     },
///     resource_group_name="testrg",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   discount:
///     type: azure-native:billingbenefits:Discount
///     properties:
///       discountName: testaffiliatediscount
///       location: global
///       properties:
///         displayName: Virtual Machines D Series
///         entityType: Affiliate
///         productCode: 0001d726-0000-0160-330f-a0b98cdbbdc4
///         startAt: 2023-07-01T00:00:00Z
///         systemId: '13810867107109237'
///       resourceGroupName: testrg
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DiscountsCreatePrimary
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var discount = new AzureNative.BillingBenefits.Discount("discount", new()
///     {
///         DiscountName = "testprimarydiscount",
///         Location = "global",
///         Properties = new AzureNative.BillingBenefits.Inputs.EntityTypePrimaryDiscountArgs
///         {
///             AppliedScopeType = AzureNative.BillingBenefits.DiscountAppliedScopeType.BillingAccount,
///             DiscountTypeProperties = new AzureNative.BillingBenefits.Inputs.DiscountTypeProductSkuArgs
///             {
///                 ApplyDiscountOn = AzureNative.BillingBenefits.ApplyDiscountOn.Purchase,
///                 Conditions = new[]
///                 {
///                     new AzureNative.BillingBenefits.Inputs.ConditionsItemArgs
///                     {
///                         ConditionName = "Cloud",
///                         Type = "equalAny",
///                         Value = new[]
///                         {
///                             "US-Sec",
///                         },
///                     },
///                 },
///                 DiscountCombinationRule = AzureNative.BillingBenefits.DiscountCombinationRule.BestOf,
///                 DiscountPercentage = 14,
///                 DiscountType = "Sku",
///                 ProductFamilyName = "Azure",
///                 ProductId = "DZH318Z0BQ35",
///                 SkuId = "0001",
///             },
///             DisplayName = "Virtual Machines D Series",
///             EndAt = "2024-07-01T23:59:59Z",
///             EntityType = "Primary",
///             ProductCode = "0001d726-0000-0160-330f-a0b98cdbbdc4",
///             StartAt = "2023-07-01T00:00:00Z",
///         },
///         ResourceGroupName = "testrg",
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
/// 		_, err := billingbenefits.NewDiscount(ctx, "discount", &billingbenefits.DiscountArgs{
/// 			DiscountName: pulumi.String("testprimarydiscount"),
/// 			Location:     pulumi.String("global"),
/// 			Properties: &billingbenefits.EntityTypePrimaryDiscountArgs{
/// 				AppliedScopeType: pulumi.String(billingbenefits.DiscountAppliedScopeTypeBillingAccount),
/// 				DiscountTypeProperties: billingbenefits.DiscountTypeProductSku{
/// 					ApplyDiscountOn: billingbenefits.ApplyDiscountOnPurchase,
/// 					Conditions: []billingbenefits.ConditionsItem{
/// 						{
/// 							ConditionName: "Cloud",
/// 							Type:          "equalAny",
/// 							Value: []string{
/// 								"US-Sec",
/// 							},
/// 						},
/// 					},
/// 					DiscountCombinationRule: billingbenefits.DiscountCombinationRuleBestOf,
/// 					DiscountPercentage:      14,
/// 					DiscountType:            "Sku",
/// 					ProductFamilyName:       "Azure",
/// 					ProductId:               "DZH318Z0BQ35",
/// 					SkuId:                   "0001",
/// 				},
/// 				DisplayName: pulumi.String("Virtual Machines D Series"),
/// 				EndAt:       pulumi.String("2024-07-01T23:59:59Z"),
/// 				EntityType:  pulumi.String("Primary"),
/// 				ProductCode: pulumi.String("0001d726-0000-0160-330f-a0b98cdbbdc4"),
/// 				StartAt:     pulumi.String("2023-07-01T00:00:00Z"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
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
/// resource "azure-native_billingbenefits_discount" "discount" {
///   discount_name = "testprimarydiscount"
///   location      = "global"
///   properties = {
///     "appliedScopeType" = "BillingAccount"
///     "discountTypeProperties" = {
///       "applyDiscountOn" = "Purchase"
///       "conditions" = [{
///         "conditionName" = "Cloud"
///         "type"          = "equalAny"
///         "value"         = ["US-Sec"]
///       }]
///       "discountCombinationRule" = "BestOf"
///       "discountPercentage"      = 14
///       "discountType"            = "Sku"
///       "productFamilyName"       = "Azure"
///       "productId"               = "DZH318Z0BQ35"
///       "skuId"                   = "0001"
///     }
///     "displayName" = "Virtual Machines D Series"
///     "endAt"       = "2024-07-01T23:59:59Z"
///     "entityType"  = "Primary"
///     "productCode" = "0001d726-0000-0160-330f-a0b98cdbbdc4"
///     "startAt"     = "2023-07-01T00:00:00Z"
///   }
///   resource_group_name = "testrg"
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
/// import com.pulumi.azurenative.billingbenefits.Discount;
/// import com.pulumi.azurenative.billingbenefits.DiscountArgs;
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
///         var discount = new Discount("discount", DiscountArgs.builder()
///             .discountName("testprimarydiscount")
///             .location("global")
///             .properties(EntityTypePrimaryDiscountArgs.builder()
///                 .appliedScopeType("BillingAccount")
///                 .discountTypeProperties(DiscountTypeProductSkuArgs.builder()
///                     .applyDiscountOn("Purchase")
///                     .conditions(ConditionsItemArgs.builder()
///                         .conditionName("Cloud")
///                         .type("equalAny")
///                         .value("US-Sec")
///                         .build())
///                     .discountCombinationRule("BestOf")
///                     .discountPercentage(14.0)
///                     .discountType("Sku")
///                     .productFamilyName("Azure")
///                     .productId("DZH318Z0BQ35")
///                     .skuId("0001")
///                     .build())
///                 .displayName("Virtual Machines D Series")
///                 .endAt("2024-07-01T23:59:59Z")
///                 .entityType("Primary")
///                 .productCode("0001d726-0000-0160-330f-a0b98cdbbdc4")
///                 .startAt("2023-07-01T00:00:00Z")
///                 .build())
///             .resourceGroupName("testrg")
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
/// const discount = new azure_native.billingbenefits.Discount("discount", {
///     discountName: "testprimarydiscount",
///     location: "global",
///     properties: {
///         appliedScopeType: azure_native.billingbenefits.DiscountAppliedScopeType.BillingAccount,
///         discountTypeProperties: {
///             applyDiscountOn: azure_native.billingbenefits.ApplyDiscountOn.Purchase,
///             conditions: [{
///                 conditionName: "Cloud",
///                 type: "equalAny",
///                 value: ["US-Sec"],
///             }],
///             discountCombinationRule: azure_native.billingbenefits.DiscountCombinationRule.BestOf,
///             discountPercentage: 14,
///             discountType: "Sku",
///             productFamilyName: "Azure",
///             productId: "DZH318Z0BQ35",
///             skuId: "0001",
///         },
///         displayName: "Virtual Machines D Series",
///         endAt: "2024-07-01T23:59:59Z",
///         entityType: "Primary",
///         productCode: "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         startAt: "2023-07-01T00:00:00Z",
///     },
///     resourceGroupName: "testrg",
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
/// discount = azure_native.billingbenefits.Discount("discount",
///     discount_name="testprimarydiscount",
///     location="global",
///     properties={
///         "applied_scope_type": azure_native.billingbenefits.DiscountAppliedScopeType.BILLING_ACCOUNT,
///         "discount_type_properties": {
///             "apply_discount_on": azure_native.billingbenefits.ApplyDiscountOn.PURCHASE,
///             "conditions": [{
///                 "condition_name": "Cloud",
///                 "type": "equalAny",
///                 "value": ["US-Sec"],
///             }],
///             "discount_combination_rule": azure_native.billingbenefits.DiscountCombinationRule.BEST_OF,
///             "discount_percentage": float(14),
///             "discount_type": "Sku",
///             "product_family_name": "Azure",
///             "product_id": "DZH318Z0BQ35",
///             "sku_id": "0001",
///         },
///         "display_name": "Virtual Machines D Series",
///         "end_at": "2024-07-01T23:59:59Z",
///         "entity_type": "Primary",
///         "product_code": "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         "start_at": "2023-07-01T00:00:00Z",
///     },
///     resource_group_name="testrg",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   discount:
///     type: azure-native:billingbenefits:Discount
///     properties:
///       discountName: testprimarydiscount
///       location: global
///       properties:
///         appliedScopeType: BillingAccount
///         discountTypeProperties:
///           applyDiscountOn: Purchase
///           conditions:
///             - conditionName: Cloud
///               type: equalAny
///               value:
///                 - US-Sec
///           discountCombinationRule: BestOf
///           discountPercentage: 14
///           discountType: Sku
///           productFamilyName: Azure
///           productId: DZH318Z0BQ35
///           skuId: '0001'
///         displayName: Virtual Machines D Series
///         endAt: 2024-07-01T23:59:59Z
///         entityType: Primary
///         productCode: 0001d726-0000-0160-330f-a0b98cdbbdc4
///         startAt: 2023-07-01T00:00:00Z
///       resourceGroupName: testrg
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DiscountsCreatePrimaryBackfill
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var discount = new AzureNative.BillingBenefits.Discount("discount", new()
///     {
///         DiscountName = "testprimarydiscount",
///         Location = "global",
///         Properties = new AzureNative.BillingBenefits.Inputs.EntityTypePrimaryDiscountArgs
///         {
///             AppliedScopeType = AzureNative.BillingBenefits.DiscountAppliedScopeType.BillingAccount,
///             DiscountTypeProperties = new AzureNative.BillingBenefits.Inputs.DiscountProductFamilyArgs
///             {
///                 ApplyDiscountOn = AzureNative.BillingBenefits.ApplyDiscountOn.Purchase,
///                 Conditions = new[]
///                 {
///                     new AzureNative.BillingBenefits.Inputs.ConditionsItemArgs
///                     {
///                         ConditionName = "Cloud",
///                         Type = "equalAny",
///                         Value = new[]
///                         {
///                             "US-Sec",
///                         },
///                     },
///                 },
///                 DiscountCombinationRule = AzureNative.BillingBenefits.DiscountCombinationRule.BestOf,
///                 DiscountPercentage = 14,
///                 DiscountType = "ProductFamily",
///                 ProductFamilyName = "Azure",
///             },
///             DisplayName = "Virtual Machines D Series",
///             EndAt = "2024-07-01T23:59:59Z",
///             EntityType = "Primary",
///             ProductCode = "0001d726-0000-0160-330f-a0b98cdbbdc4",
///             StartAt = "2023-07-01T00:00:00Z",
///             SystemId = "13810867107109237",
///         },
///         ResourceGroupName = "testrg",
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
/// 		_, err := billingbenefits.NewDiscount(ctx, "discount", &billingbenefits.DiscountArgs{
/// 			DiscountName: pulumi.String("testprimarydiscount"),
/// 			Location:     pulumi.String("global"),
/// 			Properties: &billingbenefits.EntityTypePrimaryDiscountArgs{
/// 				AppliedScopeType: pulumi.String(billingbenefits.DiscountAppliedScopeTypeBillingAccount),
/// 				DiscountTypeProperties: billingbenefits.DiscountProductFamily{
/// 					ApplyDiscountOn: billingbenefits.ApplyDiscountOnPurchase,
/// 					Conditions: []billingbenefits.ConditionsItem{
/// 						{
/// 							ConditionName: "Cloud",
/// 							Type:          "equalAny",
/// 							Value: []string{
/// 								"US-Sec",
/// 							},
/// 						},
/// 					},
/// 					DiscountCombinationRule: billingbenefits.DiscountCombinationRuleBestOf,
/// 					DiscountPercentage:      14,
/// 					DiscountType:            "ProductFamily",
/// 					ProductFamilyName:       "Azure",
/// 				},
/// 				DisplayName: pulumi.String("Virtual Machines D Series"),
/// 				EndAt:       pulumi.String("2024-07-01T23:59:59Z"),
/// 				EntityType:  pulumi.String("Primary"),
/// 				ProductCode: pulumi.String("0001d726-0000-0160-330f-a0b98cdbbdc4"),
/// 				StartAt:     pulumi.String("2023-07-01T00:00:00Z"),
/// 				SystemId:    pulumi.String("13810867107109237"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
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
/// resource "azure-native_billingbenefits_discount" "discount" {
///   discount_name = "testprimarydiscount"
///   location      = "global"
///   properties = {
///     "appliedScopeType" = "BillingAccount"
///     "discountTypeProperties" = {
///       "applyDiscountOn" = "Purchase"
///       "conditions" = [{
///         "conditionName" = "Cloud"
///         "type"          = "equalAny"
///         "value"         = ["US-Sec"]
///       }]
///       "discountCombinationRule" = "BestOf"
///       "discountPercentage"      = 14
///       "discountType"            = "ProductFamily"
///       "productFamilyName"       = "Azure"
///     }
///     "displayName" = "Virtual Machines D Series"
///     "endAt"       = "2024-07-01T23:59:59Z"
///     "entityType"  = "Primary"
///     "productCode" = "0001d726-0000-0160-330f-a0b98cdbbdc4"
///     "startAt"     = "2023-07-01T00:00:00Z"
///     "systemId"    = "13810867107109237"
///   }
///   resource_group_name = "testrg"
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
/// import com.pulumi.azurenative.billingbenefits.Discount;
/// import com.pulumi.azurenative.billingbenefits.DiscountArgs;
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
///         var discount = new Discount("discount", DiscountArgs.builder()
///             .discountName("testprimarydiscount")
///             .location("global")
///             .properties(EntityTypePrimaryDiscountArgs.builder()
///                 .appliedScopeType("BillingAccount")
///                 .discountTypeProperties(DiscountProductFamilyArgs.builder()
///                     .applyDiscountOn("Purchase")
///                     .conditions(ConditionsItemArgs.builder()
///                         .conditionName("Cloud")
///                         .type("equalAny")
///                         .value("US-Sec")
///                         .build())
///                     .discountCombinationRule("BestOf")
///                     .discountPercentage(14.0)
///                     .discountType("ProductFamily")
///                     .productFamilyName("Azure")
///                     .build())
///                 .displayName("Virtual Machines D Series")
///                 .endAt("2024-07-01T23:59:59Z")
///                 .entityType("Primary")
///                 .productCode("0001d726-0000-0160-330f-a0b98cdbbdc4")
///                 .startAt("2023-07-01T00:00:00Z")
///                 .systemId("13810867107109237")
///                 .build())
///             .resourceGroupName("testrg")
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
/// const discount = new azure_native.billingbenefits.Discount("discount", {
///     discountName: "testprimarydiscount",
///     location: "global",
///     properties: {
///         appliedScopeType: azure_native.billingbenefits.DiscountAppliedScopeType.BillingAccount,
///         discountTypeProperties: {
///             applyDiscountOn: azure_native.billingbenefits.ApplyDiscountOn.Purchase,
///             conditions: [{
///                 conditionName: "Cloud",
///                 type: "equalAny",
///                 value: ["US-Sec"],
///             }],
///             discountCombinationRule: azure_native.billingbenefits.DiscountCombinationRule.BestOf,
///             discountPercentage: 14,
///             discountType: "ProductFamily",
///             productFamilyName: "Azure",
///         },
///         displayName: "Virtual Machines D Series",
///         endAt: "2024-07-01T23:59:59Z",
///         entityType: "Primary",
///         productCode: "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         startAt: "2023-07-01T00:00:00Z",
///         systemId: "13810867107109237",
///     },
///     resourceGroupName: "testrg",
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
/// discount = azure_native.billingbenefits.Discount("discount",
///     discount_name="testprimarydiscount",
///     location="global",
///     properties={
///         "applied_scope_type": azure_native.billingbenefits.DiscountAppliedScopeType.BILLING_ACCOUNT,
///         "discount_type_properties": {
///             "apply_discount_on": azure_native.billingbenefits.ApplyDiscountOn.PURCHASE,
///             "conditions": [{
///                 "condition_name": "Cloud",
///                 "type": "equalAny",
///                 "value": ["US-Sec"],
///             }],
///             "discount_combination_rule": azure_native.billingbenefits.DiscountCombinationRule.BEST_OF,
///             "discount_percentage": float(14),
///             "discount_type": "ProductFamily",
///             "product_family_name": "Azure",
///         },
///         "display_name": "Virtual Machines D Series",
///         "end_at": "2024-07-01T23:59:59Z",
///         "entity_type": "Primary",
///         "product_code": "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         "start_at": "2023-07-01T00:00:00Z",
///         "system_id": "13810867107109237",
///     },
///     resource_group_name="testrg",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   discount:
///     type: azure-native:billingbenefits:Discount
///     properties:
///       discountName: testprimarydiscount
///       location: global
///       properties:
///         appliedScopeType: BillingAccount
///         discountTypeProperties:
///           applyDiscountOn: Purchase
///           conditions:
///             - conditionName: Cloud
///               type: equalAny
///               value:
///                 - US-Sec
///           discountCombinationRule: BestOf
///           discountPercentage: 14
///           discountType: ProductFamily
///           productFamilyName: Azure
///         displayName: Virtual Machines D Series
///         endAt: 2024-07-01T23:59:59Z
///         entityType: Primary
///         productCode: 0001d726-0000-0160-330f-a0b98cdbbdc4
///         startAt: 2023-07-01T00:00:00Z
///         systemId: '13810867107109237'
///       resourceGroupName: testrg
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DiscountsCreatePrimaryWithCustomPrice
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var discount = new AzureNative.BillingBenefits.Discount("discount", new()
///     {
///         DiscountName = "testprimarydiscount",
///         Location = "global",
///         Properties = new AzureNative.BillingBenefits.Inputs.EntityTypePrimaryDiscountArgs
///         {
///             AppliedScopeType = AzureNative.BillingBenefits.DiscountAppliedScopeType.BillingAccount,
///             DiscountTypeProperties = new AzureNative.BillingBenefits.Inputs.DiscountCustomPriceArgs
///             {
///                 ApplyDiscountOn = AzureNative.BillingBenefits.ApplyDiscountOn.Purchase,
///                 Conditions = new[]
///                 {
///                     new AzureNative.BillingBenefits.Inputs.ConditionsItemArgs
///                     {
///                         ConditionName = "Cloud",
///                         Type = "equalAny",
///                         Value = new[]
///                         {
///                             "US-Sec",
///                         },
///                     },
///                 },
///                 CustomPriceProperties = new AzureNative.BillingBenefits.Inputs.CustomPricePropertiesArgs
///                 {
///                     CatalogClaims = new[]
///                     {
///                         new AzureNative.BillingBenefits.Inputs.CatalogClaimsItemArgs
///                         {
///                             CatalogClaimsItemType = "NationalCloud",
///                             Value = "USSec",
///                         },
///                     },
///                     CatalogId = "4",
///                     MarketSetPrices = new[]
///                     {
///                         new AzureNative.BillingBenefits.Inputs.MarketSetPricesItemsArgs
///                         {
///                             Currency = "USD",
///                             Markets = new[]
///                             {
///                                 "US",
///                             },
///                             Value = 125.16,
///                         },
///                     },
///                     RuleType = AzureNative.BillingBenefits.DiscountRuleType.FixedPriceLock,
///                     TermUnits = "ASI1251A",
///                 },
///                 DiscountCombinationRule = AzureNative.BillingBenefits.DiscountCombinationRule.BestOf,
///                 DiscountPercentage = 14,
///                 DiscountType = "CustomPrice",
///                 ProductFamilyName = "Azure",
///                 ProductId = "DZH318Z0BQ35",
///                 SkuId = "0001",
///             },
///             DisplayName = "Virtual Machines D Series",
///             EndAt = "2024-07-01T23:59:59Z",
///             EntityType = "Primary",
///             ProductCode = "0001d726-0000-0160-330f-a0b98cdbbdc4",
///             StartAt = "2023-07-01T00:00:00Z",
///         },
///         ResourceGroupName = "testrg",
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
/// 		_, err := billingbenefits.NewDiscount(ctx, "discount", &billingbenefits.DiscountArgs{
/// 			DiscountName: pulumi.String("testprimarydiscount"),
/// 			Location:     pulumi.String("global"),
/// 			Properties: &billingbenefits.EntityTypePrimaryDiscountArgs{
/// 				AppliedScopeType: pulumi.String(billingbenefits.DiscountAppliedScopeTypeBillingAccount),
/// 				DiscountTypeProperties: billingbenefits.DiscountCustomPrice{
/// 					ApplyDiscountOn: billingbenefits.ApplyDiscountOnPurchase,
/// 					Conditions: []billingbenefits.ConditionsItem{
/// 						{
/// 							ConditionName: "Cloud",
/// 							Type:          "equalAny",
/// 							Value: []string{
/// 								"US-Sec",
/// 							},
/// 						},
/// 					},
/// 					CustomPriceProperties: billingbenefits.CustomPriceProperties{
/// 						CatalogClaims: []billingbenefits.CatalogClaimsItem{
/// 							{
/// 								CatalogClaimsItemType: "NationalCloud",
/// 								Value:                 "USSec",
/// 							},
/// 						},
/// 						CatalogId: "4",
/// 						MarketSetPrices: []billingbenefits.MarketSetPricesItems{
/// 							{
/// 								Currency: "USD",
/// 								Markets: []string{
/// 									"US",
/// 								},
/// 								Value: 125.16,
/// 							},
/// 						},
/// 						RuleType:  billingbenefits.DiscountRuleTypeFixedPriceLock,
/// 						TermUnits: "ASI1251A",
/// 					},
/// 					DiscountCombinationRule: billingbenefits.DiscountCombinationRuleBestOf,
/// 					DiscountPercentage:      14,
/// 					DiscountType:            "CustomPrice",
/// 					ProductFamilyName:       "Azure",
/// 					ProductId:               "DZH318Z0BQ35",
/// 					SkuId:                   "0001",
/// 				},
/// 				DisplayName: pulumi.String("Virtual Machines D Series"),
/// 				EndAt:       pulumi.String("2024-07-01T23:59:59Z"),
/// 				EntityType:  pulumi.String("Primary"),
/// 				ProductCode: pulumi.String("0001d726-0000-0160-330f-a0b98cdbbdc4"),
/// 				StartAt:     pulumi.String("2023-07-01T00:00:00Z"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
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
/// resource "azure-native_billingbenefits_discount" "discount" {
///   discount_name = "testprimarydiscount"
///   location      = "global"
///   properties = {
///     "appliedScopeType" = "BillingAccount"
///     "discountTypeProperties" = {
///       "applyDiscountOn" = "Purchase"
///       "conditions" = [{
///         "conditionName" = "Cloud"
///         "type"          = "equalAny"
///         "value"         = ["US-Sec"]
///       }]
///       "customPriceProperties" = {
///         "catalogClaims" = [{
///           "catalogClaimsItemType" = "NationalCloud"
///           "value"                 = "USSec"
///         }]
///         "catalogId" = "4"
///         "marketSetPrices" = [{
///           "currency" = "USD"
///           "markets"  = ["US"]
///           "value"    = 125.16
///         }]
///         "ruleType"  = "FixedPriceLock"
///         "termUnits" = "ASI1251A"
///       }
///       "discountCombinationRule" = "BestOf"
///       "discountPercentage"      = 14
///       "discountType"            = "CustomPrice"
///       "productFamilyName"       = "Azure"
///       "productId"               = "DZH318Z0BQ35"
///       "skuId"                   = "0001"
///     }
///     "displayName" = "Virtual Machines D Series"
///     "endAt"       = "2024-07-01T23:59:59Z"
///     "entityType"  = "Primary"
///     "productCode" = "0001d726-0000-0160-330f-a0b98cdbbdc4"
///     "startAt"     = "2023-07-01T00:00:00Z"
///   }
///   resource_group_name = "testrg"
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
/// import com.pulumi.azurenative.billingbenefits.Discount;
/// import com.pulumi.azurenative.billingbenefits.DiscountArgs;
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
///         var discount = new Discount("discount", DiscountArgs.builder()
///             .discountName("testprimarydiscount")
///             .location("global")
///             .properties(EntityTypePrimaryDiscountArgs.builder()
///                 .appliedScopeType("BillingAccount")
///                 .discountTypeProperties(DiscountCustomPriceArgs.builder()
///                     .applyDiscountOn("Purchase")
///                     .conditions(ConditionsItemArgs.builder()
///                         .conditionName("Cloud")
///                         .type("equalAny")
///                         .value("US-Sec")
///                         .build())
///                     .customPriceProperties(CustomPricePropertiesArgs.builder()
///                         .catalogClaims(CatalogClaimsItemArgs.builder()
///                             .catalogClaimsItemType("NationalCloud")
///                             .value("USSec")
///                             .build())
///                         .catalogId("4")
///                         .marketSetPrices(MarketSetPricesItemsArgs.builder()
///                             .currency("USD")
///                             .markets("US")
///                             .value(125.16)
///                             .build())
///                         .ruleType("FixedPriceLock")
///                         .termUnits("ASI1251A")
///                         .build())
///                     .discountCombinationRule("BestOf")
///                     .discountPercentage(14.0)
///                     .discountType("CustomPrice")
///                     .productFamilyName("Azure")
///                     .productId("DZH318Z0BQ35")
///                     .skuId("0001")
///                     .build())
///                 .displayName("Virtual Machines D Series")
///                 .endAt("2024-07-01T23:59:59Z")
///                 .entityType("Primary")
///                 .productCode("0001d726-0000-0160-330f-a0b98cdbbdc4")
///                 .startAt("2023-07-01T00:00:00Z")
///                 .build())
///             .resourceGroupName("testrg")
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
/// const discount = new azure_native.billingbenefits.Discount("discount", {
///     discountName: "testprimarydiscount",
///     location: "global",
///     properties: {
///         appliedScopeType: azure_native.billingbenefits.DiscountAppliedScopeType.BillingAccount,
///         discountTypeProperties: {
///             applyDiscountOn: azure_native.billingbenefits.ApplyDiscountOn.Purchase,
///             conditions: [{
///                 conditionName: "Cloud",
///                 type: "equalAny",
///                 value: ["US-Sec"],
///             }],
///             customPriceProperties: {
///                 catalogClaims: [{
///                     catalogClaimsItemType: "NationalCloud",
///                     value: "USSec",
///                 }],
///                 catalogId: "4",
///                 marketSetPrices: [{
///                     currency: "USD",
///                     markets: ["US"],
///                     value: 125.16,
///                 }],
///                 ruleType: azure_native.billingbenefits.DiscountRuleType.FixedPriceLock,
///                 termUnits: "ASI1251A",
///             },
///             discountCombinationRule: azure_native.billingbenefits.DiscountCombinationRule.BestOf,
///             discountPercentage: 14,
///             discountType: "CustomPrice",
///             productFamilyName: "Azure",
///             productId: "DZH318Z0BQ35",
///             skuId: "0001",
///         },
///         displayName: "Virtual Machines D Series",
///         endAt: "2024-07-01T23:59:59Z",
///         entityType: "Primary",
///         productCode: "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         startAt: "2023-07-01T00:00:00Z",
///     },
///     resourceGroupName: "testrg",
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
/// discount = azure_native.billingbenefits.Discount("discount",
///     discount_name="testprimarydiscount",
///     location="global",
///     properties={
///         "applied_scope_type": azure_native.billingbenefits.DiscountAppliedScopeType.BILLING_ACCOUNT,
///         "discount_type_properties": {
///             "apply_discount_on": azure_native.billingbenefits.ApplyDiscountOn.PURCHASE,
///             "conditions": [{
///                 "condition_name": "Cloud",
///                 "type": "equalAny",
///                 "value": ["US-Sec"],
///             }],
///             "custom_price_properties": {
///                 "catalog_claims": [{
///                     "catalog_claims_item_type": "NationalCloud",
///                     "value": "USSec",
///                 }],
///                 "catalog_id": "4",
///                 "market_set_prices": [{
///                     "currency": "USD",
///                     "markets": ["US"],
///                     "value": 125.16,
///                 }],
///                 "rule_type": azure_native.billingbenefits.DiscountRuleType.FIXED_PRICE_LOCK,
///                 "term_units": "ASI1251A",
///             },
///             "discount_combination_rule": azure_native.billingbenefits.DiscountCombinationRule.BEST_OF,
///             "discount_percentage": float(14),
///             "discount_type": "CustomPrice",
///             "product_family_name": "Azure",
///             "product_id": "DZH318Z0BQ35",
///             "sku_id": "0001",
///         },
///         "display_name": "Virtual Machines D Series",
///         "end_at": "2024-07-01T23:59:59Z",
///         "entity_type": "Primary",
///         "product_code": "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         "start_at": "2023-07-01T00:00:00Z",
///     },
///     resource_group_name="testrg",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   discount:
///     type: azure-native:billingbenefits:Discount
///     properties:
///       discountName: testprimarydiscount
///       location: global
///       properties:
///         appliedScopeType: BillingAccount
///         discountTypeProperties:
///           applyDiscountOn: Purchase
///           conditions:
///             - conditionName: Cloud
///               type: equalAny
///               value:
///                 - US-Sec
///           customPriceProperties:
///             catalogClaims:
///               - catalogClaimsItemType: NationalCloud
///                 value: USSec
///             catalogId: '4'
///             marketSetPrices:
///               - currency: USD
///                 markets:
///                   - US
///                 value: 125.16
///             ruleType: FixedPriceLock
///             termUnits: ASI1251A
///           discountCombinationRule: BestOf
///           discountPercentage: 14
///           discountType: CustomPrice
///           productFamilyName: Azure
///           productId: DZH318Z0BQ35
///           skuId: '0001'
///         displayName: Virtual Machines D Series
///         endAt: 2024-07-01T23:59:59Z
///         entityType: Primary
///         productCode: 0001d726-0000-0160-330f-a0b98cdbbdc4
///         startAt: 2023-07-01T00:00:00Z
///       resourceGroupName: testrg
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DiscountsCreatePrimaryWithCustomPriceMultiCurrency
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var discount = new AzureNative.BillingBenefits.Discount("discount", new()
///     {
///         DiscountName = "testprimarydiscount",
///         Location = "global",
///         Properties = new AzureNative.BillingBenefits.Inputs.EntityTypePrimaryDiscountArgs
///         {
///             AppliedScopeType = AzureNative.BillingBenefits.DiscountAppliedScopeType.BillingAccount,
///             DiscountTypeProperties = new AzureNative.BillingBenefits.Inputs.DiscountCustomPriceMultiCurrencyArgs
///             {
///                 ApplyDiscountOn = AzureNative.BillingBenefits.ApplyDiscountOn.Purchase,
///                 Conditions = new[]
///                 {
///                     new AzureNative.BillingBenefits.Inputs.ConditionsItemArgs
///                     {
///                         ConditionName = "Cloud",
///                         Type = "equalAny",
///                         Value = new[]
///                         {
///                             "US-Sec",
///                         },
///                     },
///                 },
///                 CustomPriceProperties = new AzureNative.BillingBenefits.Inputs.CustomPricePropertiesArgs
///                 {
///                     CatalogClaims = new[]
///                     {
///                         new AzureNative.BillingBenefits.Inputs.CatalogClaimsItemArgs
///                         {
///                             CatalogClaimsItemType = "NationalCloud",
///                             Value = "USSec",
///                         },
///                     },
///                     CatalogId = "4",
///                     MarketSetPrices = new[]
///                     {
///                         new AzureNative.BillingBenefits.Inputs.MarketSetPricesItemsArgs
///                         {
///                             Currency = "USD",
///                             Markets = new[]
///                             {
///                                 "US",
///                             },
///                             Value = 125.16,
///                         },
///                         new AzureNative.BillingBenefits.Inputs.MarketSetPricesItemsArgs
///                         {
///                             Currency = "EUR",
///                             Markets = new[]
///                             {
///                                 "FR",
///                             },
///                             Value = 110.16,
///                         },
///                     },
///                     RuleType = AzureNative.BillingBenefits.DiscountRuleType.FixedPriceLock,
///                     TermUnits = "ASI1251A",
///                 },
///                 DiscountCombinationRule = AzureNative.BillingBenefits.DiscountCombinationRule.BestOf,
///                 DiscountPercentage = 14,
///                 DiscountType = "CustomPriceMultiCurrency",
///                 ProductFamilyName = "Azure",
///                 ProductId = "DZH318Z0BQ35",
///                 SkuId = "0001",
///             },
///             DisplayName = "Virtual Machines D Series",
///             EndAt = "2024-07-01T23:59:59Z",
///             EntityType = "Primary",
///             ProductCode = "0001d726-0000-0160-330f-a0b98cdbbdc4",
///             StartAt = "2023-07-01T00:00:00Z",
///         },
///         ResourceGroupName = "testrg",
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
/// 		_, err := billingbenefits.NewDiscount(ctx, "discount", &billingbenefits.DiscountArgs{
/// 			DiscountName: pulumi.String("testprimarydiscount"),
/// 			Location:     pulumi.String("global"),
/// 			Properties: &billingbenefits.EntityTypePrimaryDiscountArgs{
/// 				AppliedScopeType: pulumi.String(billingbenefits.DiscountAppliedScopeTypeBillingAccount),
/// 				DiscountTypeProperties: billingbenefits.DiscountCustomPriceMultiCurrency{
/// 					ApplyDiscountOn: billingbenefits.ApplyDiscountOnPurchase,
/// 					Conditions: []billingbenefits.ConditionsItem{
/// 						{
/// 							ConditionName: "Cloud",
/// 							Type:          "equalAny",
/// 							Value: []string{
/// 								"US-Sec",
/// 							},
/// 						},
/// 					},
/// 					CustomPriceProperties: billingbenefits.CustomPriceProperties{
/// 						CatalogClaims: []billingbenefits.CatalogClaimsItem{
/// 							{
/// 								CatalogClaimsItemType: "NationalCloud",
/// 								Value:                 "USSec",
/// 							},
/// 						},
/// 						CatalogId: "4",
/// 						MarketSetPrices: []billingbenefits.MarketSetPricesItems{
/// 							{
/// 								Currency: "USD",
/// 								Markets: []string{
/// 									"US",
/// 								},
/// 								Value: 125.16,
/// 							},
/// 							{
/// 								Currency: "EUR",
/// 								Markets: []string{
/// 									"FR",
/// 								},
/// 								Value: 110.16,
/// 							},
/// 						},
/// 						RuleType:  billingbenefits.DiscountRuleTypeFixedPriceLock,
/// 						TermUnits: "ASI1251A",
/// 					},
/// 					DiscountCombinationRule: billingbenefits.DiscountCombinationRuleBestOf,
/// 					DiscountPercentage:      14,
/// 					DiscountType:            "CustomPriceMultiCurrency",
/// 					ProductFamilyName:       "Azure",
/// 					ProductId:               "DZH318Z0BQ35",
/// 					SkuId:                   "0001",
/// 				},
/// 				DisplayName: pulumi.String("Virtual Machines D Series"),
/// 				EndAt:       pulumi.String("2024-07-01T23:59:59Z"),
/// 				EntityType:  pulumi.String("Primary"),
/// 				ProductCode: pulumi.String("0001d726-0000-0160-330f-a0b98cdbbdc4"),
/// 				StartAt:     pulumi.String("2023-07-01T00:00:00Z"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
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
/// resource "azure-native_billingbenefits_discount" "discount" {
///   discount_name = "testprimarydiscount"
///   location      = "global"
///   properties = {
///     "appliedScopeType" = "BillingAccount"
///     "discountTypeProperties" = {
///       "applyDiscountOn" = "Purchase"
///       "conditions" = [{
///         "conditionName" = "Cloud"
///         "type"          = "equalAny"
///         "value"         = ["US-Sec"]
///       }]
///       "customPriceProperties" = {
///         "catalogClaims" = [{
///           "catalogClaimsItemType" = "NationalCloud"
///           "value"                 = "USSec"
///         }]
///         "catalogId" = "4"
///         "marketSetPrices" = [{
///           "currency" = "USD"
///           "markets"  = ["US"]
///           "value"    = 125.16
///           }, {
///           "currency" = "EUR"
///           "markets"  = ["FR"]
///           "value"    = 110.16
///         }]
///         "ruleType"  = "FixedPriceLock"
///         "termUnits" = "ASI1251A"
///       }
///       "discountCombinationRule" = "BestOf"
///       "discountPercentage"      = 14
///       "discountType"            = "CustomPriceMultiCurrency"
///       "productFamilyName"       = "Azure"
///       "productId"               = "DZH318Z0BQ35"
///       "skuId"                   = "0001"
///     }
///     "displayName" = "Virtual Machines D Series"
///     "endAt"       = "2024-07-01T23:59:59Z"
///     "entityType"  = "Primary"
///     "productCode" = "0001d726-0000-0160-330f-a0b98cdbbdc4"
///     "startAt"     = "2023-07-01T00:00:00Z"
///   }
///   resource_group_name = "testrg"
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
/// import com.pulumi.azurenative.billingbenefits.Discount;
/// import com.pulumi.azurenative.billingbenefits.DiscountArgs;
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
///         var discount = new Discount("discount", DiscountArgs.builder()
///             .discountName("testprimarydiscount")
///             .location("global")
///             .properties(EntityTypePrimaryDiscountArgs.builder()
///                 .appliedScopeType("BillingAccount")
///                 .discountTypeProperties(DiscountCustomPriceMultiCurrencyArgs.builder()
///                     .applyDiscountOn("Purchase")
///                     .conditions(ConditionsItemArgs.builder()
///                         .conditionName("Cloud")
///                         .type("equalAny")
///                         .value("US-Sec")
///                         .build())
///                     .customPriceProperties(CustomPricePropertiesArgs.builder()
///                         .catalogClaims(CatalogClaimsItemArgs.builder()
///                             .catalogClaimsItemType("NationalCloud")
///                             .value("USSec")
///                             .build())
///                         .catalogId("4")
///                         .marketSetPrices(
///                             MarketSetPricesItemsArgs.builder()
///                                 .currency("USD")
///                                 .markets("US")
///                                 .value(125.16)
///                                 .build(),
///                             MarketSetPricesItemsArgs.builder()
///                                 .currency("EUR")
///                                 .markets("FR")
///                                 .value(110.16)
///                                 .build())
///                         .ruleType("FixedPriceLock")
///                         .termUnits("ASI1251A")
///                         .build())
///                     .discountCombinationRule("BestOf")
///                     .discountPercentage(14.0)
///                     .discountType("CustomPriceMultiCurrency")
///                     .productFamilyName("Azure")
///                     .productId("DZH318Z0BQ35")
///                     .skuId("0001")
///                     .build())
///                 .displayName("Virtual Machines D Series")
///                 .endAt("2024-07-01T23:59:59Z")
///                 .entityType("Primary")
///                 .productCode("0001d726-0000-0160-330f-a0b98cdbbdc4")
///                 .startAt("2023-07-01T00:00:00Z")
///                 .build())
///             .resourceGroupName("testrg")
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
/// const discount = new azure_native.billingbenefits.Discount("discount", {
///     discountName: "testprimarydiscount",
///     location: "global",
///     properties: {
///         appliedScopeType: azure_native.billingbenefits.DiscountAppliedScopeType.BillingAccount,
///         discountTypeProperties: {
///             applyDiscountOn: azure_native.billingbenefits.ApplyDiscountOn.Purchase,
///             conditions: [{
///                 conditionName: "Cloud",
///                 type: "equalAny",
///                 value: ["US-Sec"],
///             }],
///             customPriceProperties: {
///                 catalogClaims: [{
///                     catalogClaimsItemType: "NationalCloud",
///                     value: "USSec",
///                 }],
///                 catalogId: "4",
///                 marketSetPrices: [
///                     {
///                         currency: "USD",
///                         markets: ["US"],
///                         value: 125.16,
///                     },
///                     {
///                         currency: "EUR",
///                         markets: ["FR"],
///                         value: 110.16,
///                     },
///                 ],
///                 ruleType: azure_native.billingbenefits.DiscountRuleType.FixedPriceLock,
///                 termUnits: "ASI1251A",
///             },
///             discountCombinationRule: azure_native.billingbenefits.DiscountCombinationRule.BestOf,
///             discountPercentage: 14,
///             discountType: "CustomPriceMultiCurrency",
///             productFamilyName: "Azure",
///             productId: "DZH318Z0BQ35",
///             skuId: "0001",
///         },
///         displayName: "Virtual Machines D Series",
///         endAt: "2024-07-01T23:59:59Z",
///         entityType: "Primary",
///         productCode: "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         startAt: "2023-07-01T00:00:00Z",
///     },
///     resourceGroupName: "testrg",
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
/// discount = azure_native.billingbenefits.Discount("discount",
///     discount_name="testprimarydiscount",
///     location="global",
///     properties={
///         "applied_scope_type": azure_native.billingbenefits.DiscountAppliedScopeType.BILLING_ACCOUNT,
///         "discount_type_properties": {
///             "apply_discount_on": azure_native.billingbenefits.ApplyDiscountOn.PURCHASE,
///             "conditions": [{
///                 "condition_name": "Cloud",
///                 "type": "equalAny",
///                 "value": ["US-Sec"],
///             }],
///             "custom_price_properties": {
///                 "catalog_claims": [{
///                     "catalog_claims_item_type": "NationalCloud",
///                     "value": "USSec",
///                 }],
///                 "catalog_id": "4",
///                 "market_set_prices": [
///                     {
///                         "currency": "USD",
///                         "markets": ["US"],
///                         "value": 125.16,
///                     },
///                     {
///                         "currency": "EUR",
///                         "markets": ["FR"],
///                         "value": 110.16,
///                     },
///                 ],
///                 "rule_type": azure_native.billingbenefits.DiscountRuleType.FIXED_PRICE_LOCK,
///                 "term_units": "ASI1251A",
///             },
///             "discount_combination_rule": azure_native.billingbenefits.DiscountCombinationRule.BEST_OF,
///             "discount_percentage": float(14),
///             "discount_type": "CustomPriceMultiCurrency",
///             "product_family_name": "Azure",
///             "product_id": "DZH318Z0BQ35",
///             "sku_id": "0001",
///         },
///         "display_name": "Virtual Machines D Series",
///         "end_at": "2024-07-01T23:59:59Z",
///         "entity_type": "Primary",
///         "product_code": "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         "start_at": "2023-07-01T00:00:00Z",
///     },
///     resource_group_name="testrg",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   discount:
///     type: azure-native:billingbenefits:Discount
///     properties:
///       discountName: testprimarydiscount
///       location: global
///       properties:
///         appliedScopeType: BillingAccount
///         discountTypeProperties:
///           applyDiscountOn: Purchase
///           conditions:
///             - conditionName: Cloud
///               type: equalAny
///               value:
///                 - US-Sec
///           customPriceProperties:
///             catalogClaims:
///               - catalogClaimsItemType: NationalCloud
///                 value: USSec
///             catalogId: '4'
///             marketSetPrices:
///               - currency: USD
///                 markets:
///                   - US
///                 value: 125.16
///               - currency: EUR
///                 markets:
///                   - FR
///                 value: 110.16
///             ruleType: FixedPriceLock
///             termUnits: ASI1251A
///           discountCombinationRule: BestOf
///           discountPercentage: 14
///           discountType: CustomPriceMultiCurrency
///           productFamilyName: Azure
///           productId: DZH318Z0BQ35
///           skuId: '0001'
///         displayName: Virtual Machines D Series
///         endAt: 2024-07-01T23:59:59Z
///         entityType: Primary
///         productCode: 0001d726-0000-0160-330f-a0b98cdbbdc4
///         startAt: 2023-07-01T00:00:00Z
///       resourceGroupName: testrg
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DiscountsCreatePrimaryWithPriceGuarantee
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var discount = new AzureNative.BillingBenefits.Discount("discount", new()
///     {
///         DiscountName = "testprimarydiscount",
///         Location = "global",
///         Properties = new AzureNative.BillingBenefits.Inputs.EntityTypePrimaryDiscountArgs
///         {
///             AppliedScopeType = AzureNative.BillingBenefits.DiscountAppliedScopeType.BillingAccount,
///             DiscountTypeProperties = new AzureNative.BillingBenefits.Inputs.DiscountTypeProductSkuArgs
///             {
///                 ApplyDiscountOn = AzureNative.BillingBenefits.ApplyDiscountOn.Purchase,
///                 Conditions = new[]
///                 {
///                     new AzureNative.BillingBenefits.Inputs.ConditionsItemArgs
///                     {
///                         ConditionName = "Cloud",
///                         Type = "equalAny",
///                         Value = new[]
///                         {
///                             "US-Sec",
///                         },
///                     },
///                 },
///                 DiscountCombinationRule = AzureNative.BillingBenefits.DiscountCombinationRule.BestOf,
///                 DiscountType = "Sku",
///                 PriceGuaranteeProperties = new AzureNative.BillingBenefits.Inputs.PriceGuaranteePropertiesArgs
///                 {
///                     PriceGuaranteeDate = "2024-11-01T00:00:00",
///                     PricingPolicy = AzureNative.BillingBenefits.PricingPolicy.Protected,
///                 },
///                 ProductFamilyName = "Azure",
///                 ProductId = "DZH318Z0BQ35",
///                 SkuId = "0001",
///             },
///             DisplayName = "Virtual Machines D Series",
///             EndAt = "2024-07-01T23:59:59Z",
///             EntityType = "Primary",
///             ProductCode = "0001d726-0000-0160-330f-a0b98cdbbdc4",
///             StartAt = "2023-07-01T00:00:00Z",
///         },
///         ResourceGroupName = "testrg",
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
/// 		_, err := billingbenefits.NewDiscount(ctx, "discount", &billingbenefits.DiscountArgs{
/// 			DiscountName: pulumi.String("testprimarydiscount"),
/// 			Location:     pulumi.String("global"),
/// 			Properties: &billingbenefits.EntityTypePrimaryDiscountArgs{
/// 				AppliedScopeType: pulumi.String(billingbenefits.DiscountAppliedScopeTypeBillingAccount),
/// 				DiscountTypeProperties: billingbenefits.DiscountTypeProductSku{
/// 					ApplyDiscountOn: billingbenefits.ApplyDiscountOnPurchase,
/// 					Conditions: []billingbenefits.ConditionsItem{
/// 						{
/// 							ConditionName: "Cloud",
/// 							Type:          "equalAny",
/// 							Value: []string{
/// 								"US-Sec",
/// 							},
/// 						},
/// 					},
/// 					DiscountCombinationRule: billingbenefits.DiscountCombinationRuleBestOf,
/// 					DiscountType:            "Sku",
/// 					PriceGuaranteeProperties: billingbenefits.PriceGuaranteeProperties{
/// 						PriceGuaranteeDate: "2024-11-01T00:00:00",
/// 						PricingPolicy:      billingbenefits.PricingPolicyProtected,
/// 					},
/// 					ProductFamilyName: "Azure",
/// 					ProductId:         "DZH318Z0BQ35",
/// 					SkuId:             "0001",
/// 				},
/// 				DisplayName: pulumi.String("Virtual Machines D Series"),
/// 				EndAt:       pulumi.String("2024-07-01T23:59:59Z"),
/// 				EntityType:  pulumi.String("Primary"),
/// 				ProductCode: pulumi.String("0001d726-0000-0160-330f-a0b98cdbbdc4"),
/// 				StartAt:     pulumi.String("2023-07-01T00:00:00Z"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
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
/// resource "azure-native_billingbenefits_discount" "discount" {
///   discount_name = "testprimarydiscount"
///   location      = "global"
///   properties = {
///     "appliedScopeType" = "BillingAccount"
///     "discountTypeProperties" = {
///       "applyDiscountOn" = "Purchase"
///       "conditions" = [{
///         "conditionName" = "Cloud"
///         "type"          = "equalAny"
///         "value"         = ["US-Sec"]
///       }]
///       "discountCombinationRule" = "BestOf"
///       "discountType"            = "Sku"
///       "priceGuaranteeProperties" = {
///         "priceGuaranteeDate" = "2024-11-01T00:00:00"
///         "pricingPolicy"      = "Protected"
///       }
///       "productFamilyName" = "Azure"
///       "productId"         = "DZH318Z0BQ35"
///       "skuId"             = "0001"
///     }
///     "displayName" = "Virtual Machines D Series"
///     "endAt"       = "2024-07-01T23:59:59Z"
///     "entityType"  = "Primary"
///     "productCode" = "0001d726-0000-0160-330f-a0b98cdbbdc4"
///     "startAt"     = "2023-07-01T00:00:00Z"
///   }
///   resource_group_name = "testrg"
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
/// import com.pulumi.azurenative.billingbenefits.Discount;
/// import com.pulumi.azurenative.billingbenefits.DiscountArgs;
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
///         var discount = new Discount("discount", DiscountArgs.builder()
///             .discountName("testprimarydiscount")
///             .location("global")
///             .properties(EntityTypePrimaryDiscountArgs.builder()
///                 .appliedScopeType("BillingAccount")
///                 .discountTypeProperties(DiscountTypeProductSkuArgs.builder()
///                     .applyDiscountOn("Purchase")
///                     .conditions(ConditionsItemArgs.builder()
///                         .conditionName("Cloud")
///                         .type("equalAny")
///                         .value("US-Sec")
///                         .build())
///                     .discountCombinationRule("BestOf")
///                     .discountType("Sku")
///                     .priceGuaranteeProperties(PriceGuaranteePropertiesArgs.builder()
///                         .priceGuaranteeDate("2024-11-01T00:00:00")
///                         .pricingPolicy("Protected")
///                         .build())
///                     .productFamilyName("Azure")
///                     .productId("DZH318Z0BQ35")
///                     .skuId("0001")
///                     .build())
///                 .displayName("Virtual Machines D Series")
///                 .endAt("2024-07-01T23:59:59Z")
///                 .entityType("Primary")
///                 .productCode("0001d726-0000-0160-330f-a0b98cdbbdc4")
///                 .startAt("2023-07-01T00:00:00Z")
///                 .build())
///             .resourceGroupName("testrg")
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
/// const discount = new azure_native.billingbenefits.Discount("discount", {
///     discountName: "testprimarydiscount",
///     location: "global",
///     properties: {
///         appliedScopeType: azure_native.billingbenefits.DiscountAppliedScopeType.BillingAccount,
///         discountTypeProperties: {
///             applyDiscountOn: azure_native.billingbenefits.ApplyDiscountOn.Purchase,
///             conditions: [{
///                 conditionName: "Cloud",
///                 type: "equalAny",
///                 value: ["US-Sec"],
///             }],
///             discountCombinationRule: azure_native.billingbenefits.DiscountCombinationRule.BestOf,
///             discountType: "Sku",
///             priceGuaranteeProperties: {
///                 priceGuaranteeDate: "2024-11-01T00:00:00",
///                 pricingPolicy: azure_native.billingbenefits.PricingPolicy.Protected,
///             },
///             productFamilyName: "Azure",
///             productId: "DZH318Z0BQ35",
///             skuId: "0001",
///         },
///         displayName: "Virtual Machines D Series",
///         endAt: "2024-07-01T23:59:59Z",
///         entityType: "Primary",
///         productCode: "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         startAt: "2023-07-01T00:00:00Z",
///     },
///     resourceGroupName: "testrg",
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
/// discount = azure_native.billingbenefits.Discount("discount",
///     discount_name="testprimarydiscount",
///     location="global",
///     properties={
///         "applied_scope_type": azure_native.billingbenefits.DiscountAppliedScopeType.BILLING_ACCOUNT,
///         "discount_type_properties": {
///             "apply_discount_on": azure_native.billingbenefits.ApplyDiscountOn.PURCHASE,
///             "conditions": [{
///                 "condition_name": "Cloud",
///                 "type": "equalAny",
///                 "value": ["US-Sec"],
///             }],
///             "discount_combination_rule": azure_native.billingbenefits.DiscountCombinationRule.BEST_OF,
///             "discount_type": "Sku",
///             "price_guarantee_properties": {
///                 "price_guarantee_date": "2024-11-01T00:00:00",
///                 "pricing_policy": azure_native.billingbenefits.PricingPolicy.PROTECTED,
///             },
///             "product_family_name": "Azure",
///             "product_id": "DZH318Z0BQ35",
///             "sku_id": "0001",
///         },
///         "display_name": "Virtual Machines D Series",
///         "end_at": "2024-07-01T23:59:59Z",
///         "entity_type": "Primary",
///         "product_code": "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         "start_at": "2023-07-01T00:00:00Z",
///     },
///     resource_group_name="testrg",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   discount:
///     type: azure-native:billingbenefits:Discount
///     properties:
///       discountName: testprimarydiscount
///       location: global
///       properties:
///         appliedScopeType: BillingAccount
///         discountTypeProperties:
///           applyDiscountOn: Purchase
///           conditions:
///             - conditionName: Cloud
///               type: equalAny
///               value:
///                 - US-Sec
///           discountCombinationRule: BestOf
///           discountType: Sku
///           priceGuaranteeProperties:
///             priceGuaranteeDate: 2024-11-01T00:00:00
///             pricingPolicy: Protected
///           productFamilyName: Azure
///           productId: DZH318Z0BQ35
///           skuId: '0001'
///         displayName: Virtual Machines D Series
///         endAt: 2024-07-01T23:59:59Z
///         entityType: Primary
///         productCode: 0001d726-0000-0160-330f-a0b98cdbbdc4
///         startAt: 2023-07-01T00:00:00Z
///       resourceGroupName: testrg
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
/// $ pulumi import azure-native:billingbenefits:Discount testprimarydiscount /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/discounts/{discountName}
/// ```
class Discount extends pulumi.CustomResource {
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
  /// Discount properties
  late final pulumi.Output<EntityTypeAffiliateDiscountResponse> properties;
  /// The resource model definition representing SKU
  late final pulumi.Output<SkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Discount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Discount]. {@macro pulumi_billingbenefits_discount_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Discount(
    String name, {
    DiscountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:billingbenefits:Discount',
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
    properties = registerOutput<EntityTypeAffiliateDiscountResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EntityTypeAffiliateDiscountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
