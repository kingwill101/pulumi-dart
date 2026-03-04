import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_response.dart';
import 'credit_args.dart';
import 'credit_policies_response.dart';
import 'credit_reason_response.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Credit resource definition
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billingbenefits [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreditCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var credit = new AzureNative.BillingBenefits.Credit("credit", new()
///     {
///         Credit = new AzureNative.BillingBenefits.Inputs.CommitmentArgs
///         {
///             Amount = 20000,
///             CurrencyCode = "USD",
///             Grain = AzureNative.BillingBenefits.CommitmentGrain.FullTerm,
///         },
///         CreditName = "credit_20231212",
///         EndAt = "2024-01-12T00:00:00Z",
///         Location = "global",
///         ProductCode = "0002d726-0000-0160-330f-a0b98cdbbdc4",
///         ResourceGroupName = "resource_group_name_01",
///         StartAt = "2023-12-12T00:00:00Z",
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
/// 		_, err := billingbenefits.NewCredit(ctx, "credit", &billingbenefits.CreditArgs{
/// 			Credit: &billingbenefits.CommitmentArgs{
/// 				Amount:       pulumi.Float64(20000),
/// 				CurrencyCode: pulumi.String("USD"),
/// 				Grain:        pulumi.String(billingbenefits.CommitmentGrainFullTerm),
/// 			},
/// 			CreditName:        pulumi.String("credit_20231212"),
/// 			EndAt:             pulumi.String("2024-01-12T00:00:00Z"),
/// 			Location:          pulumi.String("global"),
/// 			ProductCode:       pulumi.String("0002d726-0000-0160-330f-a0b98cdbbdc4"),
/// 			ResourceGroupName: pulumi.String("resource_group_name_01"),
/// 			StartAt:           pulumi.String("2023-12-12T00:00:00Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.billingbenefits.Credit;
/// import com.pulumi.azurenative.billingbenefits.CreditArgs;
/// import com.pulumi.azurenative.billingbenefits.inputs.CommitmentArgs;
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
///         var credit = new Credit("credit", CreditArgs.builder()
///             .credit(CommitmentArgs.builder()
///                 .amount(20000.0)
///                 .currencyCode("USD")
///                 .grain("FullTerm")
///                 .build())
///             .creditName("credit_20231212")
///             .endAt("2024-01-12T00:00:00Z")
///             .location("global")
///             .productCode("0002d726-0000-0160-330f-a0b98cdbbdc4")
///             .resourceGroupName("resource_group_name_01")
///             .startAt("2023-12-12T00:00:00Z")
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
/// const credit = new azure_native.billingbenefits.Credit("credit", {
///     credit: {
///         amount: 20000,
///         currencyCode: "USD",
///         grain: azure_native.billingbenefits.CommitmentGrain.FullTerm,
///     },
///     creditName: "credit_20231212",
///     endAt: "2024-01-12T00:00:00Z",
///     location: "global",
///     productCode: "0002d726-0000-0160-330f-a0b98cdbbdc4",
///     resourceGroupName: "resource_group_name_01",
///     startAt: "2023-12-12T00:00:00Z",
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
/// credit = azure_native.billingbenefits.Credit("credit",
///     credit={
///         "amount": 20000,
///         "currency_code": "USD",
///         "grain": azure_native.billingbenefits.CommitmentGrain.FULL_TERM,
///     },
///     credit_name="credit_20231212",
///     end_at="2024-01-12T00:00:00Z",
///     location="global",
///     product_code="0002d726-0000-0160-330f-a0b98cdbbdc4",
///     resource_group_name="resource_group_name_01",
///     start_at="2023-12-12T00:00:00Z",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   credit:
///     type: azure-native:billingbenefits:Credit
///     properties:
///       credit:
///         amount: 20000
///         currencyCode: USD
///         grain: FullTerm
///       creditName: credit_20231212
///       endAt: 2024-01-12T00:00:00Z
///       location: global
///       productCode: 0002d726-0000-0160-330f-a0b98cdbbdc4
///       resourceGroupName: resource_group_name_01
///       startAt: 2023-12-12T00:00:00Z
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EndCustomerInvestmentFundCreditCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var credit = new AzureNative.BillingBenefits.Credit("credit", new()
///     {
///         Breakdown = new[]
///         {
///             new AzureNative.BillingBenefits.Inputs.CreditBreakdownItemArgs
///             {
///                 Allocation = new AzureNative.BillingBenefits.Inputs.CommitmentArgs
///                 {
///                     Amount = 25000,
///                     CurrencyCode = "USD",
///                     Grain = AzureNative.BillingBenefits.CommitmentGrain.FullTerm,
///                 },
///                 Dimensions = new[]
///                 {
///                     new AzureNative.BillingBenefits.Inputs.CreditDimensionArgs
///                     {
///                         Key = "productFamily",
///                         Value = "Azure",
///                     },
///                     new AzureNative.BillingBenefits.Inputs.CreditDimensionArgs
///                     {
///                         Key = "productCode",
///                         Value = "00002b30-0000-0260-d348-f3ffcd565473",
///                     },
///                     new AzureNative.BillingBenefits.Inputs.CreditDimensionArgs
///                     {
///                         Key = "creditType",
///                         Value = "EndCustomerInvestmentCredit",
///                     },
///                     new AzureNative.BillingBenefits.Inputs.CreditDimensionArgs
///                     {
///                         Key = "supplierType",
///                         Value = "External",
///                     },
///                 },
///                 EndAt = "2025-08-31T23:59:59.999Z",
///                 StartAt = "2025-08-01T00:00:00Z",
///             },
///         },
///         Credit = new AzureNative.BillingBenefits.Inputs.CommitmentArgs
///         {
///             Amount = 25000,
///             CurrencyCode = "USD",
///             Grain = AzureNative.BillingBenefits.CommitmentGrain.FullTerm,
///         },
///         CreditName = "credit_20231212",
///         EndAt = "2025-08-31T23:59:59.999Z",
///         Location = "global",
///         ProductCode = "00002b30-0000-0260-d348-f3ffcd565473",
///         ResourceGroupName = "resource_group_name_01",
///         StartAt = "2025-08-01T00:00:00Z",
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
/// 		_, err := billingbenefits.NewCredit(ctx, "credit", &billingbenefits.CreditArgs{
/// 			Breakdown: billingbenefits.CreditBreakdownItemArray{
/// 				&billingbenefits.CreditBreakdownItemArgs{
/// 					Allocation: &billingbenefits.CommitmentArgs{
/// 						Amount:       pulumi.Float64(25000),
/// 						CurrencyCode: pulumi.String("USD"),
/// 						Grain:        pulumi.String(billingbenefits.CommitmentGrainFullTerm),
/// 					},
/// 					Dimensions: billingbenefits.CreditDimensionArray{
/// 						&billingbenefits.CreditDimensionArgs{
/// 							Key:   pulumi.String("productFamily"),
/// 							Value: pulumi.String("Azure"),
/// 						},
/// 						&billingbenefits.CreditDimensionArgs{
/// 							Key:   pulumi.String("productCode"),
/// 							Value: pulumi.String("00002b30-0000-0260-d348-f3ffcd565473"),
/// 						},
/// 						&billingbenefits.CreditDimensionArgs{
/// 							Key:   pulumi.String("creditType"),
/// 							Value: pulumi.String("EndCustomerInvestmentCredit"),
/// 						},
/// 						&billingbenefits.CreditDimensionArgs{
/// 							Key:   pulumi.String("supplierType"),
/// 							Value: pulumi.String("External"),
/// 						},
/// 					},
/// 					EndAt:   pulumi.String("2025-08-31T23:59:59.999Z"),
/// 					StartAt: pulumi.String("2025-08-01T00:00:00Z"),
/// 				},
/// 			},
/// 			Credit: &billingbenefits.CommitmentArgs{
/// 				Amount:       pulumi.Float64(25000),
/// 				CurrencyCode: pulumi.String("USD"),
/// 				Grain:        pulumi.String(billingbenefits.CommitmentGrainFullTerm),
/// 			},
/// 			CreditName:        pulumi.String("credit_20231212"),
/// 			EndAt:             pulumi.String("2025-08-31T23:59:59.999Z"),
/// 			Location:          pulumi.String("global"),
/// 			ProductCode:       pulumi.String("00002b30-0000-0260-d348-f3ffcd565473"),
/// 			ResourceGroupName: pulumi.String("resource_group_name_01"),
/// 			StartAt:           pulumi.String("2025-08-01T00:00:00Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.billingbenefits.Credit;
/// import com.pulumi.azurenative.billingbenefits.CreditArgs;
/// import com.pulumi.azurenative.billingbenefits.inputs.CreditBreakdownItemArgs;
/// import com.pulumi.azurenative.billingbenefits.inputs.CommitmentArgs;
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
///         var credit = new Credit("credit", CreditArgs.builder()
///             .breakdown(CreditBreakdownItemArgs.builder()
///                 .allocation(CommitmentArgs.builder()
///                     .amount(25000.0)
///                     .currencyCode("USD")
///                     .grain("FullTerm")
///                     .build())
///                 .dimensions(
///                     CreditDimensionArgs.builder()
///                         .key("productFamily")
///                         .value("Azure")
///                         .build(),
///                     CreditDimensionArgs.builder()
///                         .key("productCode")
///                         .value("00002b30-0000-0260-d348-f3ffcd565473")
///                         .build(),
///                     CreditDimensionArgs.builder()
///                         .key("creditType")
///                         .value("EndCustomerInvestmentCredit")
///                         .build(),
///                     CreditDimensionArgs.builder()
///                         .key("supplierType")
///                         .value("External")
///                         .build())
///                 .endAt("2025-08-31T23:59:59.999Z")
///                 .startAt("2025-08-01T00:00:00Z")
///                 .build())
///             .credit(CommitmentArgs.builder()
///                 .amount(25000.0)
///                 .currencyCode("USD")
///                 .grain("FullTerm")
///                 .build())
///             .creditName("credit_20231212")
///             .endAt("2025-08-31T23:59:59.999Z")
///             .location("global")
///             .productCode("00002b30-0000-0260-d348-f3ffcd565473")
///             .resourceGroupName("resource_group_name_01")
///             .startAt("2025-08-01T00:00:00Z")
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
/// const credit = new azure_native.billingbenefits.Credit("credit", {
///     breakdown: [{
///         allocation: {
///             amount: 25000,
///             currencyCode: "USD",
///             grain: azure_native.billingbenefits.CommitmentGrain.FullTerm,
///         },
///         dimensions: [
///             {
///                 key: "productFamily",
///                 value: "Azure",
///             },
///             {
///                 key: "productCode",
///                 value: "00002b30-0000-0260-d348-f3ffcd565473",
///             },
///             {
///                 key: "creditType",
///                 value: "EndCustomerInvestmentCredit",
///             },
///             {
///                 key: "supplierType",
///                 value: "External",
///             },
///         ],
///         endAt: "2025-08-31T23:59:59.999Z",
///         startAt: "2025-08-01T00:00:00Z",
///     }],
///     credit: {
///         amount: 25000,
///         currencyCode: "USD",
///         grain: azure_native.billingbenefits.CommitmentGrain.FullTerm,
///     },
///     creditName: "credit_20231212",
///     endAt: "2025-08-31T23:59:59.999Z",
///     location: "global",
///     productCode: "00002b30-0000-0260-d348-f3ffcd565473",
///     resourceGroupName: "resource_group_name_01",
///     startAt: "2025-08-01T00:00:00Z",
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
/// credit = azure_native.billingbenefits.Credit("credit",
///     breakdown=[{
///         "allocation": {
///             "amount": 25000,
///             "currency_code": "USD",
///             "grain": azure_native.billingbenefits.CommitmentGrain.FULL_TERM,
///         },
///         "dimensions": [
///             {
///                 "key": "productFamily",
///                 "value": "Azure",
///             },
///             {
///                 "key": "productCode",
///                 "value": "00002b30-0000-0260-d348-f3ffcd565473",
///             },
///             {
///                 "key": "creditType",
///                 "value": "EndCustomerInvestmentCredit",
///             },
///             {
///                 "key": "supplierType",
///                 "value": "External",
///             },
///         ],
///         "end_at": "2025-08-31T23:59:59.999Z",
///         "start_at": "2025-08-01T00:00:00Z",
///     }],
///     credit={
///         "amount": 25000,
///         "currency_code": "USD",
///         "grain": azure_native.billingbenefits.CommitmentGrain.FULL_TERM,
///     },
///     credit_name="credit_20231212",
///     end_at="2025-08-31T23:59:59.999Z",
///     location="global",
///     product_code="00002b30-0000-0260-d348-f3ffcd565473",
///     resource_group_name="resource_group_name_01",
///     start_at="2025-08-01T00:00:00Z",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   credit:
///     type: azure-native:billingbenefits:Credit
///     properties:
///       breakdown:
///         - allocation:
///             amount: 25000
///             currencyCode: USD
///             grain: FullTerm
///           dimensions:
///             - key: productFamily
///               value: Azure
///             - key: productCode
///               value: 00002b30-0000-0260-d348-f3ffcd565473
///             - key: creditType
///               value: EndCustomerInvestmentCredit
///             - key: supplierType
///               value: External
///           endAt: 2025-08-31T23:59:59.999Z
///           startAt: 2025-08-01T00:00:00Z
///       credit:
///         amount: 25000
///         currencyCode: USD
///         grain: FullTerm
///       creditName: credit_20231212
///       endAt: 2025-08-31T23:59:59.999Z
///       location: global
///       productCode: 00002b30-0000-0260-d348-f3ffcd565473
///       resourceGroupName: resource_group_name_01
///       startAt: 2025-08-01T00:00:00Z
///       tags:
///         key1: value1
///         key2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PromotionalCreditCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var credit = new AzureNative.BillingBenefits.Credit("credit", new()
///     {
///         CreditName = "credit_20231212",
///         Location = "global",
///         Policies = new AzureNative.BillingBenefits.Inputs.CreditPoliciesArgs
///         {
///             Expiration = AzureNative.BillingBenefits.CreditExpirationPolicy.SuspendBillingProfile,
///             Redemption = AzureNative.BillingBenefits.CreditRedemptionPolicy.AutoRedeem,
///         },
///         ProductCode = "0002d726-0000-0160-330f-a0b98cdbbdc4",
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
/// 		_, err := billingbenefits.NewCredit(ctx, "credit", &billingbenefits.CreditArgs{
/// 			CreditName: pulumi.String("credit_20231212"),
/// 			Location:   pulumi.String("global"),
/// 			Policies: &billingbenefits.CreditPoliciesArgs{
/// 				Expiration: pulumi.String(billingbenefits.CreditExpirationPolicySuspendBillingProfile),
/// 				Redemption: pulumi.String(billingbenefits.CreditRedemptionPolicyAutoRedeem),
/// 			},
/// 			ProductCode:       pulumi.String("0002d726-0000-0160-330f-a0b98cdbbdc4"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.billingbenefits.Credit;
/// import com.pulumi.azurenative.billingbenefits.CreditArgs;
/// import com.pulumi.azurenative.billingbenefits.inputs.CreditPoliciesArgs;
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
///         var credit = new Credit("credit", CreditArgs.builder()
///             .creditName("credit_20231212")
///             .location("global")
///             .policies(CreditPoliciesArgs.builder()
///                 .expiration("SuspendBillingProfile")
///                 .redemption("AutoRedeem")
///                 .build())
///             .productCode("0002d726-0000-0160-330f-a0b98cdbbdc4")
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
/// const credit = new azure_native.billingbenefits.Credit("credit", {
///     creditName: "credit_20231212",
///     location: "global",
///     policies: {
///         expiration: azure_native.billingbenefits.CreditExpirationPolicy.SuspendBillingProfile,
///         redemption: azure_native.billingbenefits.CreditRedemptionPolicy.AutoRedeem,
///     },
///     productCode: "0002d726-0000-0160-330f-a0b98cdbbdc4",
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
/// credit = azure_native.billingbenefits.Credit("credit",
///     credit_name="credit_20231212",
///     location="global",
///     policies={
///         "expiration": azure_native.billingbenefits.CreditExpirationPolicy.SUSPEND_BILLING_PROFILE,
///         "redemption": azure_native.billingbenefits.CreditRedemptionPolicy.AUTO_REDEEM,
///     },
///     product_code="0002d726-0000-0160-330f-a0b98cdbbdc4",
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
///   credit:
///     type: azure-native:billingbenefits:Credit
///     properties:
///       creditName: credit_20231212
///       location: global
///       policies:
///         expiration: SuspendBillingProfile
///         redemption: AutoRedeem
///       productCode: 0002d726-0000-0160-330f-a0b98cdbbdc4
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
/// $ pulumi import azure-native:billingbenefits:Credit credit_20231212 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/credits/{creditName}
/// ```
class Credit extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Fully-qualified identifier of the billing account where the benefit is applied. Present only for Enterprise Agreement customers.
  late final pulumi.Output<String?> billingAccountResourceId;

  /// Fully-qualified identifier of the billing profile where the benefit is applied. Present only for Field-led or Customer-led customers.
  late final pulumi.Output<String> billingProfileResourceId;

  /// Credit line-items/milestones/no-charge services breakdown
  late final pulumi.Output<List<Map<String, dynamic>>?> breakdown;

  /// The entire investment amount for the credit contract, including currency and amount
  late final pulumi.Output<CommitmentResponse?> credit;

  /// Fully-qualified identifier of the customer where the savings plan is applied. Present only for Partner-led customers. Format is /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}
  late final pulumi.Output<String> customerId;

  /// End DateTime in UTC.
  late final pulumi.Output<String?> endAt;

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

  /// Credit breakdown item representing a milestone, line-item, or no-charge service
  late final pulumi.Output<CreditPoliciesResponse?> policies;

  /// Product UPN for the credit type
  late final pulumi.Output<String?> productCode;

  /// Provisioning state
  late final pulumi.Output<String> provisioningState;

  /// The reason for the credit. Not required if not applicable.
  late final pulumi.Output<CreditReasonResponse?> reason;

  /// Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  late final pulumi.Output<String?> resourceId;

  /// The resource model definition representing SKU
  late final pulumi.Output<SkuResponse?> sku;

  /// Start DateTime.
  late final pulumi.Output<String?> startAt;

  /// Status of the credit
  late final pulumi.Output<String?> status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// System identifier
  late final pulumi.Output<String?> systemId;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Credit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Credit]. {@macro pulumi_billingbenefits_credit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Credit(String name, {CreditArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:billingbenefits:Credit',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingAccountResourceId = registerOutput<String?>(
      'billingAccountResourceId',
    );
    billingProfileResourceId = registerOutput<String>(
      'billingProfileResourceId',
    );
    breakdown = registerOutput<List<Map<String, dynamic>>?>('breakdown');
    credit = registerOutput<CommitmentResponse?>('credit');
    customerId = registerOutput<String>('customerId');
    endAt = registerOutput<String?>('endAt');
    etag = registerOutput<String>('etag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String?>('managedBy');
    this.name = registerOutput<String>('name');
    plan = registerOutput<PlanResponse?>('plan');
    policies = registerOutput<CreditPoliciesResponse?>('policies');
    productCode = registerOutput<String?>('productCode');
    provisioningState = registerOutput<String>('provisioningState');
    reason = registerOutput<CreditReasonResponse?>('reason');
    resourceId = registerOutput<String?>('resourceId');
    sku = registerOutput<SkuResponse?>('sku');
    startAt = registerOutput<String?>('startAt');
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData');
    systemId = registerOutput<String?>('systemId');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
